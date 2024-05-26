import dash
import numpy as np
from dash import dcc, html
from dash.dependencies import Input, Output
import pandas as pd
from sklearn.cluster import MiniBatchKMeans
import mysql.connector
import plotly.graph_objs as go
import plotly.express as px
from sklearn.metrics import silhouette_score
from sklearn.preprocessing import StandardScaler
import os
conn = mysql.connector.connect(host='localhost',
                               user='root',
                               password='root_user1',
                               database='shopbase')
# Initialize Dash app
app = dash.Dash(__name__)
d = {1: 'Samsung Galaxy M14',
     2: 'One+ NORD CE3 Lite 5G',
     3: 'Realme 11',
     4: 'VIVO V29 5G',
     5: 'Nothing Phone 2 5G',
     6: 'Motorola Razr',
     7: 'Moto G Stylus',
     8: 'Apple Iphone 15 Pro',
     9: 'Redmi 12 5G',
     10: 'OPPO A78'}

# Layout of the dashboard
app.layout = html.Div([
    html.H1("User Cart Analysis"),

    html.Div([
        html.Div([
            dcc.Graph(id='cluster-plot'),
            dcc.Interval(
                id='interval-component',
                interval=5 * 1000,  # in milliseconds
                n_intervals=0
            )
        ], className="six columns"),

        html.Div([
            dcc.Graph(id='bar-graph'),
        ], className="six columns")
    ], className="row"),

    html.Div([
        dcc.Graph(id='pie-chart-male')
    ], className="row"),

    html.Div([
        dcc.Graph(id='pie-chart-female')
    ], className="row")

    # html.Div([
    #     dcc.Graph(id='heatmap')
    # ], className="row")
])


df = None
entry_count = 0
kmeans = None

# Function to fetch data from MySQL database
def fetch_data_from_mysql():
    try:

        #conn = mysql.connector.connect(host='localhost', user='root', password='root_user1', database='shopbase')
        cursor = conn.cursor()

        query = "SELECT * FROM user_cart_data"
        cursor.execute(query)
        columns = [col[0] for col in cursor.description]
        data = cursor.fetchall()
        df = pd.DataFrame(data, columns=columns)


        df['gender'] = df['gender'].astype('category')

        cursor.close()
        conn.close()

        return df
    except mysql.connector.Error as err:
        print("Error fetching data from MySQL:", err)


# Function to fetch product frequencies from MySQL database
def fetch_product_frequencies():
    try:
        #conn = mysql.connector.connect(host='localhost', user='root', password='root_user1', database='shopbase')
        cursor = conn.cursor()

        frequencies = []
        for product_id in range(1, 11):  # Assuming product IDs range from 1 to 10
            query = f"SELECT COUNT(*) AS frequency FROM user_cart_data WHERE product_id = {product_id}"
            cursor.execute(query)
            frequency = cursor.fetchone()[0]
            frequencies.append(frequency)

        cursor.close()
        conn.close()

        return frequencies
    except mysql.connector.Error as err:
        print("Error fetching product frequencies from MySQL:", err)
def calculate_silhouette_score(df):
    global kmeans
    if kmeans is None:
        print("KMeans model is not initialized. Perform clustering first.")
        return None

    try:
        features = df[['age', 'total_items_in_cart']]

        cluster_labels = kmeans.predict(features)

        silhouette_avg = silhouette_score(features, cluster_labels)
        print("Silhouette Score:", silhouette_avg)
        return silhouette_avg
    except Exception as e:
        print("Error calculating Silhouette Score:", str(e))
        return None
# Function to perform Mini Batch k-means clustering
def perform_clustering(df):
    global kmeans
    kmeans = MiniBatchKMeans(n_clusters=5, random_state=42, batch_size=100)
    try:
        df['Cluster'] = kmeans.fit_predict(df[['age', 'total_items_in_cart']])
    except ValueError:
        print("Mini Batch KMeans model is not fitted properly.")
    return df

# Function to plot clustering
def plot_clustering(df):
    global kmeans
    if kmeans is None:
        print("Mini Batch KMeans model is not initialized. Perform clustering first.")
        return {}

    try:
        centroids = go.Scatter(
            x=kmeans.cluster_centers_[:, 0],
            y=kmeans.cluster_centers_[:, 1],
            mode='markers',
            marker=dict(color='red', size=15, symbol='x'),
            name='Centroids'
        )
    except AttributeError:
        print("Mini Batch KMeans model is not fitted properly.")
        return {}

    trace = go.Scatter(
        x=df['age'],
        y=df['total_items_in_cart'],
        mode='markers',
        marker=dict(color=df['Cluster'], size=10),
        showlegend=False
    )

    layout = go.Layout(
        xaxis=dict(title='Age'),
        yaxis=dict(title='Total Items in Cart'),
        title='Clustering of Users based on Age and Total Items in Cart'
    )
    return {'data': [trace, centroids], 'layout': layout}

# Function to plot bar graph
def plot_bar_graph(df):
    product_frequencies = fetch_product_frequencies()
    fig = go.Figure(data=[go.Bar(x=list(range(1, 11)), y=product_frequencies)])
    fig.update_layout(
        title='Frequency of Products in User Carts',
        xaxis_title='Product ID',
        yaxis_title='Frequency',
        xaxis=dict(
            tickmode='array',
            tickvals=list(range(1, 11)),  # Set tick values from 1 to 10
            ticktext=[d[i] for i in range(1, 11)]  # Set tick labels from 1 to 10
        )
    )
    return fig


# Function to plot pie chart for male customers
def plot_pie_chart_male(df):
    # Define age bins
    age_bins = [(0, 20), (20, 40), (40, 60), (60, float('inf'))]

    male_age_groups = []
    for age_bin in age_bins:
        age_group = df[(df['gender'] == 'Male') & (df['age'] >= age_bin[0]) & (df['age'] < age_bin[1])]
        male_age_groups.append(len(age_group))

    fig = px.pie(
        values=male_age_groups,
        names=[f"{age_bin[0]}-{age_bin[1]}" for age_bin in age_bins],
        title='Age-wise Distribution of Male Customers'
    )
    return fig

# Function to plot pie chart for female customers
def plot_pie_chart_female(df):
    age_bins = [(0, 20), (20, 40), (40, 60), (60, float('inf'))]

    female_age_groups = []
    for age_bin in age_bins:
        age_group = df[(df['gender'] == 'Female') & (df['age'] >= age_bin[0]) & (df['age'] < age_bin[1])]
        female_age_groups.append(len(age_group))

    # Plot pie chart
    fig = px.pie(
        values=female_age_groups,
        names=[f"{age_bin[0]}-{age_bin[1]}" for age_bin in age_bins],
        title='Age-wise Distribution of Female Customers'
    )
    return fig


# # Function to plot heatmap
# def plot_heatmap(n):  # Modify the function signature to accept 'n' as the input
#     # Fetch data from MySQL
#     df = fetch_data_from_mysql()
#     if df is None or not df.select_dtypes(include='number').any().any():
#         return {}

#     # Select only numeric columns for correlation computation
#     numeric_df = df.select_dtypes(include='number')

#     # Compute correlation matrix
#     corr_matrix = numeric_df.corr()

#     # Plot heatmap
#     fig = go.Figure(data=go.Heatmap(
#         z=corr_matrix.values,
#         x=corr_matrix.columns,
#         y=corr_matrix.columns,
#         colorscale='Viridis'))
#     fig.update_layout(title='Correlation Heatmap')

#     return fig

# Callback to update the clustering plot
@app.callback(
    Output('cluster-plot', 'figure'),
    [Input('interval-component', 'n_intervals')]
)
def update_clustering_plot(n):
    global entry_count
    global df

    # Fetch data from MySQL
    df = fetch_data_from_mysql()

    if df is None:
        return {}
    df_processed = preprocess_data(df) #PREPROCESSING ADDED CODE

    # Perform Mini Batch k-means clustering
    clustered_df = perform_clustering(df)
    silhouette_score = calculate_silhouette_score(clustered_df)

    # Plot clustering
    fig = plot_clustering(clustered_df)

    # Increment entry count
    entry_count += 1

    # Check if it's time to retrain the model
    if entry_count % 50 == 0:
        retrain_model()

    return fig
    
def preprocess_data(df):
    # Exclude non-numeric columns
    numeric_columns = df.select_dtypes(include=['number']).columns
    df_numeric = df[numeric_columns]

    # Your preprocessing steps here, for example:
    scaler = StandardScaler()
    df_scaled = pd.DataFrame(scaler.fit_transform(df_numeric), columns=df_numeric.columns, index=df_numeric.index)
    return df_scaled


# Callback to update the bar graph
@app.callback(
    Output('bar-graph', 'figure'),
    [Input('interval-component', 'n_intervals')]
)
def update_bar_graph(n):
    global df
    df = fetch_data_from_mysql()
    if df is None:
        return {}
    fig = plot_bar_graph(df)
    return fig

# Callback to update the pie chart for male customers
@app.callback(
    Output('pie-chart-male', 'figure'),
    [Input('interval-component', 'n_intervals')]
)
def update_pie_chart_male(n):
    global df
    df = fetch_data_from_mysql()
    if df is None or 'gender' not in df.columns:
        return {}

    # Plot pie chart for male customers
    fig = plot_pie_chart_male(df)
    return fig

# Callback to update the pie chart for female customers
@app.callback(
    Output('pie-chart-female', 'figure'),
    [Input('interval-component', 'n_intervals')]
)
def update_pie_chart_female(n):
    global df
    df = fetch_data_from_mysql()
    if df is None or 'gender' not in df.columns:
        return {}

    # Plot pie chart for female customers
    fig = plot_pie_chart_female(df)
    return fig

# # Callback to update the heatmap
# @app.callback(
#     Output('heatmap', 'figure'),
#     [Input('interval-component', 'n_intervals')]
# )
# def update_heatmap(n):
#     return plot_heatmap(n)

# Function to retrain the Mini Batch KMeans model
def retrain_model():
    global kmeans
    global df
    df = fetch_data_from_mysql()
    perform_clustering(df)

# Run the app
if __name__ == '__main__':
    os.environ["OMP_NUM_THREADS"] = "1"
    app.run_server(host='127.0.0.1', port=8082, debug=True)