from flask import Flask, render_template, url_for, flash, redirect, request, abort
from datetime import datetime
from flask_login import LoginManager, UserMixin, login_user, current_user, login_required, logout_user
from flask_bcrypt import Bcrypt
from flask_sqlalchemy import SQLAlchemy
from flask_wtf import FlaskForm
from flask_wtf.file import FileField, FileAllowed
from wtforms import StringField, PasswordField, SubmitField, BooleanField
from wtforms.validators import DataRequired, Length, EqualTo, ValidationError
import os
import secrets

app = Flask(__name__)

app.config['SECRET_KEY'] = 'asd43545sdfsgfdg5456sdfdf'
app.config['SQLALCHEMY_DATABASE_URI'] = 'sqlite:///data.db'

db = SQLAlchemy(app)
bcrypt = Bcrypt(app)
login_manager = LoginManager(app)
login_manager.login_view = 'login'
login_manager.login_message_category = 'info'

@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))


##User registration form
class RegistrationForm(FlaskForm):
    username = StringField('Username', validators=[DataRequired(), Length(min=2, max=20)])
    password = PasswordField('Password', validators=[DataRequired()])
    confirm_password = PasswordField('Confirm Password', validators=[DataRequired(), EqualTo('password')])
    submit = SubmitField('Sign Up')
    ##Querying database to ensure that the username doesn't exist, removes errors.
    def validate_username(self, username):
        user = User.query.filter_by(username=username.data).first()
        if user:
            raise ValidationError('That username has already been choosen by another user, please pick another.')

##User login form
class LoginForm(FlaskForm):
    username = StringField('Username', validators=[DataRequired(), Length(min=2, max=20)])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Log in')

##DB class for the user
class User(db.Model, UserMixin):
    id = db.Column(db.Integer, primary_key=True)
    username = db.Column(db.String(20), unique=True, nullable=False)
    password = db.Column(db.String(60), nullable=False)

##Honours page
@app.route('/honours')
def honours():
    return render_template('honours.html')

##Masters page
@app.route('/masters')
def masters():
    return render_template('masters.html')

##Displays user data depending on users id number
##eg 146.176.251.104/data/2
@app.route('/data/<id>')
def data(id):
    user = User.query.filter_by(id=id).first()
    return render_template('data.html', myUser=user)

################
##Project registration form
class ProjectForm(FlaskForm):
	name = StringField('Name', validators=[DataRequired()])
	level = StringField('Level', validators=[DataRequired()])
	course = StringField('Course', validators=[DataRequired()])
	keywords = StringField('Keywords', validators=[DataRequired()])
	description = StringField('Description', validators=[DataRequired()])
	lecture = StringField('Lecturer', validators=[DataRequired()])
	lecture_email = StringField('Lecturer email', validators=[DataRequired()])
	submit = SubmitField('Add project')

##DB class for project
class Project(db.Model):
	id = db.Column(db.Integer, primary_key=True)
	name = db.Column(db.Text, nullable=False)
	level = db.Column(db.Text, nullable=False)
	course = db.Column(db.Text, nullable=False)
	keywords = db.Column(db.Text, nullable=False)
	description = db.Column(db.Text, nullable=False)
	lecture = db.Column(db.Text, nullable=False)
	lecture_email = db.Column(db.Text, nullable=False)

##Add projects route
@app.route('/add', methods=['GET', 'POST'])
@login_required
def add():
    forms = ProjectForm()
    if forms.validate_on_submit():
    		project = Project(name=form.name.data, level=form.level.data, course=form.course.data, keywords=form.keywords.data, description=form.description.data, lecture=form.lecture.data, lecture_email=form.lecture_email.data)
        db.session.add(project)
        db.session.commit()
        flash('Your project has succesfully been created')
        return redirect(url_for('add'))
    return render_template('add.html', forms=forms)

###################


##Projects page route
@app.route('/projects/<id>')
def project(id):
    project = Project.query.filter_by(id=id).first()
    return render_template('projects.html', myProject=project)

##Home page route
@app.route('/home', methods=['GET', 'POST'])
@login_required
def home():
    return render_template('home.html')

##Logout route
@app.route('/logout', methods=['GET', 'POST'])
def logout():
    logout_user()
    return redirect(url_for('login'))
    ##Logout route

@app.route('/password-reset', methods=['GET', 'POST'])
def password():
    return redirect(url_for('password.html'))

##Login route
@app.route('/login', methods=['GET', 'POST'])
def login():
    if current_user.is_authenticated:
        return redirect(url_for('home'))
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user and bcrypt.check_password_hash(user.password, form.password.data):
            login_user(user)
            next_page = request.args.get('next')
            return redirect(next_page) if next_page else redirect(url_for('home'))
        else:
            flash('Login failed, please enter a valid username and password', 'danger')
    return render_template('login.html', form=form)

##Register route
@app.route('/register', methods=['GET', 'POST'])
def register():
    if current_user.is_authenticated:
        return redirect(url_for('home'))
    form = RegistrationForm()
    if form.validate_on_submit():
        hashed_password = bcrypt.generate_password_hash(form.password.data).decode('utf-8')
        user = User(username=form.username.data, password=hashed_password)
        db.session.add(user)
        db.session.commit()
        flash('Your account has successfully been made, please login', 'success')
        return redirect(url_for('login'))
    return render_template('register.html', form=form)

@app.route('/staff', methods=['GET', 'POST'])
def staff():
    if current_user.is_authenticated:
        return redirect(url_for('home'))
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user and bcrypt.check_password_hash(user.password, form.password.data):
            login_user(user)
            next_page = request.args.get('next')
            return redirect(next_page) if next_page else redirect(url_for('home'))
        else:
            flash('Login failed, please enter a valid username and password', 'danger')
    return render_template('login.html', form=form)

##404 Route
@app.errorhandler(404)
def page_not_found(error):
   return redirect(url_for('home')), 404
