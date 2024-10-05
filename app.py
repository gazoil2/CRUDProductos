from flask import Flask, render_template
from negocio.product import Product
from persistencia.productdao import ProductDAO
from negocio.productmanager import ProductManager  # Adjust the import based on your structure

app = Flask(__name__)

db_config = {
    'user': 'root',
    'password': 'i2i0L2aH1',
    'host': 'localhost',  # or the IP address of your database server
    'port': '3306',
    'database': 'box_database',  # the name of your database
}
# Initialize your ProductDAO and ProductManager here
products_dao = ProductDAO(db_config)  # Assume you have a constructor
product_manager = ProductManager(products_dao)

@app.route('/')
def home():
    products = product_manager.list_products()
    return render_template('home.html', products=products)

if __name__ == '__main__':
    app.run(debug=True)
