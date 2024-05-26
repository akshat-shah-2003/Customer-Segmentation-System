import mysql.connector
from flask import Flask, render_template, request, redirect, url_for
import logging

app = Flask(__name__)

# Configure logging
logging.basicConfig(level=logging.DEBUG)

# Database connection details
config = {
    'user': 'root',
    'password': 'root_user1',
    'host': 'localhost',
    'database': 'shopbase'
}

# Function to execute SQL queries
def execute_query(query, params=None):
    try:
        conn = mysql.connector.connect(**config)
        cursor = conn.cursor()

        if params:
            cursor.execute(query, params)
        else:
            cursor.execute(query)

        if cursor.description:
            result = cursor.fetchall()
        else:
            result = None

        conn.commit()  # Commit the transaction for INSERT, UPDATE, DELETE statements

        cursor.close()
        conn.close()

        return result  # Return the result set or None if no result is fetched
    except mysql.connector.Error as e:
        logging.error(f"MySQL error: {e.msg}")
        return None
    except Exception as e:
        logging.error(f"Error executing SQL query: {e}")
        return None

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/homepage')
def homepage():
    return render_template('homepage.html')

@app.route('/register', methods=['POST'])
def register():
    name = request.form.get('name')
    email = request.form.get('email')
    gender = request.form.get('gender')
    age = request.form.get('age')
    city = request.form.get('city')
    mobile_no = request.form.get('mobile_no')

    logging.debug(f"Received registration data: {name}, {email}, {gender}, {age}, {city}, {mobile_no}")

    query_check_user = "SELECT user_id FROM users WHERE email = %s"
    params_check_user = (email,)
    existing_user = execute_query(query_check_user, params_check_user)

    if existing_user:
        user_id = existing_user[0][0]
        query_update_user = "UPDATE users SET name = %s, gender = %s, age = %s, city = %s, mobile_no = %s WHERE user_id = %s"
        params_update_user = (name, gender, age, city, mobile_no, user_id)
        execute_query(query_update_user, params_update_user)
    else:
        query_insert_user = "INSERT INTO users (name, email, gender, age, city, mobile_no) VALUES (%s, %s, %s, %s, %s, %s)"
        params_insert_user = (name, email, gender, age, city, mobile_no)
        execute_query(query_insert_user, params_insert_user)

    query_get_user_id = "SELECT user_id FROM users WHERE email = %s"
    params_get_user_id = (email,)
    user_id_result = execute_query(query_get_user_id, params_get_user_id)
    user_id = user_id_result[0][0] if user_id_result else None

    if user_id:
        logging.debug(f"Retrieved user_id: {user_id}")
        query_insert_cart = "INSERT INTO cart (user_id) VALUES (%s)"
        params_insert_cart = (user_id,)
        execute_query(query_insert_cart, params_insert_cart)
    else:
        logging.error("Failed to retrieve user_id after registration")

    return redirect(url_for('homepage'))

@app.route('/header.html')
def header():
    return render_template('header.html')

@app.route('/slider.html')
def slider():
    return render_template('slider.html')

@app.route('/content.html')
def content():
    return render_template('content.html')

@app.route('/footer.html')
def footer():
    return render_template('footer.html')

@app.route('/orderPlaced.html')
def orderPlaced():
    last_user_id = execute_query("SELECT LAST_INSERT_ID()")[0][0]

    query_user_info = "SELECT name, email, age, city, mobile_no FROM users WHERE user_id = %s"
    params_user_info = (last_user_id,)
    user_info = execute_query(query_user_info, params_user_info)

    query_cart_info = "SELECT product_id, SUM(add_to_cart_count) AS total_items_in_cart FROM cart WHERE user_id = %s GROUP BY product_id"
    params_cart_info = (last_user_id,)
    cart_info = execute_query(query_cart_info, params_cart_info)

    for product_id, total_items_in_cart in cart_info:
        query_insert_user_cart_data = "INSERT INTO user_cart_data (user_id, name, email, age, city, mobile_no, product_id, total_items_in_cart) VALUES (%s, %s, %s, %s, %s, %s, %s, %s)"
        params_insert_user_cart_data = (last_user_id, user_info[0][0], user_info[0][1], user_info[0][2], user_info[0][3], user_info[0][4], product_id, total_items_in_cart)
        execute_query(query_insert_user_cart_data, params_insert_user_cart_data)

    return render_template('orderPlaced.html')

@app.route('/contentDetails.html', methods=['GET', 'POST'])
def contentDetails():
    if request.method == 'POST':
        product_id = request.args.get('id')
        logging.debug(f"Product ID: {product_id}")

        query_get_last_user_id = "SELECT MAX(user_id) FROM users"
        last_user_id = execute_query(query_get_last_user_id)[0][0]
        logging.debug(f"Last User ID: {last_user_id}")

        if last_user_id:
            query_check_cart = "SELECT COUNT(*) FROM cart WHERE user_id = %s AND product_id = %s"
            params_check_cart = (last_user_id, product_id)
            cart_exists = execute_query(query_check_cart, params_check_cart)[0][0]

            if cart_exists > 0:
                query_update_cart = "UPDATE cart SET add_to_cart_count = add_to_cart_count + 1 WHERE user_id = %s AND product_id = %s"
                params_update_cart = (last_user_id, product_id)
                execute_query(query_update_cart, params_update_cart)
            else:
                query_insert_cart = "INSERT INTO cart (user_id, product_id, add_to_cart_count) VALUES (%s, %s, 1)"
                params_insert_cart = (last_user_id, product_id)
                execute_query(query_insert_cart, params_insert_cart)
        else:
            logging.error("No user found to add to cart.")

        return redirect(url_for('contentDetails', id=product_id))

    return render_template('contentDetails.html')

@app.route('/cart.html')
def cart():
    return render_template('cart.html')

if __name__ == '__main__':
    app.run(debug=True)
