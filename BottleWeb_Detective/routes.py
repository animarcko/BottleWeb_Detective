"""
Routes and views for the bottle application.
"""

from bottle import route, view
from datetime import datetime

@route('/')
@route('/home')
@view('index')
def home():
    """Renders the home page."""
    return dict(
        year=datetime.now().year
    )

@route('/contact')
@view('contact')
def contact():
    """Renders the contact page."""
    return dict(
        title='Contact',
        message='Your contact page.',
        year=datetime.now().year
    )

@route('/about')
@view('about')
def about():
    """Renders the about page."""
    return dict(
        title='About',
        message='Your application description page.',
        year=datetime.now().year
    )


@route('/employees')
@view('team')
def services():
    """Renders the employees page."""
    return dict(
        title='Employees',
        year=datetime.now().year
    )

@route('/services')
@view('services')
def services():
    """Renders the services page."""
    return dict(
        title='Services',
        year=datetime.now().year
    )


@route('/reviews')
@view('reviews')
def team():
    """Renders the reviews page."""
    return dict(
        title='Reviews',
        year=datetime.now().year
    )



import json
import os
from datetime import datetime
from bottle import route, view, request, redirect

# Путь к хранилищу отзывов
REVIEWS_FILE = os.path.join('data', 'reviews.json')

def load_reviews():
    """Загружает список отзывов из JSON-файла."""
    if not os.path.exists(REVIEWS_FILE):
        return []
    with open(REVIEWS_FILE, 'r', encoding='utf-8') as f:
        return json.load(f)

def save_reviews(reviews):
    """Сохраняет список отзывов в JSON-файл."""
    os.makedirs(os.path.dirname(REVIEWS_FILE), exist_ok=True)
    with open(REVIEWS_FILE, 'w', encoding='utf-8') as f:
        json.dump(reviews, f, ensure_ascii=False, indent=2)

@route('/reviews', method='GET')
@view('reviews')
def reviews_get():
    """Показ страницы отзывов."""
    reviews_list = load_reviews()
    reviews_list.reverse()
    return {'reviews': reviews_list, 'year': datetime.now().year}

@route('/reviews', method='POST')
def reviews_post():
    """Добавление нового отзыва."""
    author = request.forms.get('author', '').strip()
    text = request.forms.get('text', '').strip()
    date_str = request.forms.get('date', '').strip()

    if author and text and date_str:
        reviews = load_reviews()
        reviews.append({
            'author': author,
            'text': text,
            'date': date_str
        })
        save_reviews(reviews)
    return redirect('/reviews')