from flask import Flask
import psycopg2
from flask_bcrypt import Bcrypt
from flask_login import LoginManager
 
app = Flask(__name__)
app.config['SECRET_KEY'] = 'fc089b9218301ad987914c53481bff04'
# set your own database
db = "dbname='bank' user='postgres' host='localhost' password = '1234'"
conn = psycopg2.connect(db)

bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'
login_manager.login_message_category = 'info'

from EURO.Login.routes import Login
app.register_blueprint(Login)

#from bank import routes
