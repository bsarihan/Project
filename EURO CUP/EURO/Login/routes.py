from flask import render_template, url_for, flash, redirect, request, Blueprint
from EURO import app, conn, bcrypt
from flask_login import login_user, current_user, logout_user, login_required
from EURO.models import showmatches, showstadiums, showeuro, showgroups, showFranceMatches, showFranceStadiums, showFranceGroups, Matches, Stadium, Euro, Group, FranceMatches, FranceStadiums, FranceGroups


from flask import Flask 
import psycopg2
from flask_bcrypt import Bcrypt
from flask_login import LoginManager
import subprocess 

app = Flask(__name__)
app.config['SECRET_KEY'] = 'fc089b9218301ad987914c53481bff04'
# set your own database
db = "dbname='bank' user='postgres' host='localhost' password = '1234'"
conn = psycopg2.connect(db)
cur = conn.cursor()

Login = Blueprint('Login', __name__)

posts = [{}]


@Login.route("/")  
@Login.route("/home")
def home():
    return render_template('home.html', posts=posts)


@Login.route("/about")
def about():
    data1=showeuro()
    return render_template('about.html', data1=data1)

@Login.route("/groups")
def groups():
    data2=showgroups()
    return render_template('groups.html', data2=data2)

@Login.route("/matches")
def matches():
    books=showmatches()
    #books=cur.execute("SELECT stadium_name, cities FROM stadiums")
    return render_template("matches.html", books=books) #title='matches')
    #showmatches()
    #showstadiums()
    #return render_template('matches.html', title='matches')


@Login.route("/stadium")
def stadiums():
    data=showstadiums()
    #books=cur.execute("SELECT stadium_name, cities FROM stadiums")
    return render_template("stadiums.html", data=data) #title='matches')
    #showmatches()
    #showstadiums()
    #return render_template('matches.html', title='matches')

@Login.route("/francemat")
def francemat():
    data3=showFranceMatches()
    #books=cur.execute("SELECT stadium_name, cities FROM stadiums")
    return render_template("Francemat.html", data3=data3) #title='matches')
    #showmatches()
    #showstadiums()
    #return render_template('matches.html', title='matches')

@Login.route("/francestad")
def francestad():
    data4=showFranceStadiums()
    #books=cur.execute("SELECT stadium_name, cities FROM stadiums")
    return render_template("Francestad.html", data4=data4) #title='matches')
    #showmatches()
    #showstadiums()
    #return render_template('matches.html', title='matches')

@Login.route("/francegroup")
def francegroup():
    data5=showFranceGroups()
    #books=cur.execute("SELECT stadium_name, cities FROM stadiums")
    return render_template("Francegroup.html", data5=data5) #title='matches')
    #showmatches()
    #showstadiums()
    #return render_template('matches.html', title='matches')

@Login.route("/login", methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('Login.empty'))
    is_employee = True if request.args.get('is_employee') == 'true' else False
    form = EmployeeLoginForm() if is_employee else CustomerLoginForm()
    if form.validate_on_submit():
        user = select_Employees(form.id.data) if is_employee else select_Customers(form.id.data)
        if user != None and bcrypt.check_password_hash(user[2], form.password.data):
            login_user(user, remember=form.remember.data)
            flash('Login successful.','success')
            next_page = request.args.get('next')
            return redirect(next_page) if next_page else redirect(url_for('Login.empty'))
        else:
            flash('Login Unsuccessful. Please check identifier and password', 'danger')
    return render_template('login.html', title='Login', is_employee=is_employee, form=form)


@Login.route("/logout")
def logout():
    logout_user()
    return redirect(url_for('Login.home'))


