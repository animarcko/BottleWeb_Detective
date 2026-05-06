from bottle import route, view, request, redirect, template
from datetime import datetime
from datetime import datetime, date as date_class
import json 
import re
import os

REVIEWS_FILE = os.path.join('data', 'reviews.json')

def load_reviews():
    if not os.path.exists(REVIEWS_FILE):
        return []
    with open(REVIEWS_FILE, 'r', encoding='utf-8') as f:
        return json.load(f)

def save_reviews(reviews):
    os.makedirs(os.path.dirname(REVIEWS_FILE), exist_ok=True)
    with open(REVIEWS_FILE, 'w', encoding='utf-8') as f:
        json.dump(reviews, f, ensure_ascii=False, indent=2)

def validate_review(nickname, text, date):
    errors = {}
    nickname = nickname.strip()
    text = text.strip()
    date = date.strip()
    
    if not nickname:
        errors['nickname'] = 'Введите имя или ник'
    elif len(nickname) < 2:
        errors['nickname'] = 'Имя должно содержать не менее 2 символов'
    elif len(nickname) > 50:
        errors['nickname'] = 'Имя не должно превышать 50 символов'
    elif not re.fullmatch(r'[A-Za-z0-9_]+', nickname):
        errors['nickname'] = 'Имя содержит недопустимые символы (должно содержать только латинские буквы, цифры и _)'

    if not text:
        errors['text'] = 'Введите текст отзыва'
    elif len(text) < 10:
        errors['text'] = 'Текст должен содержать не менее 10 символов'
    elif len(text) > 5000:
        errors['text'] = 'Текст слишком длинный'

    if not date:
        errors['date'] = 'Укажите дату'
    else:
        try:
            review_date = datetime.strptime(date, '%Y-%m-%d').date()
            today = date_class.today()
            if review_date > today:
                errors['date'] = 'Дата не может быть в будущем'
            elif review_date.year < 1900:
                errors['date'] = 'Дата не может быть раньше 1900 года'
        except ValueError:
            errors['date'] = 'Неверный формат даты'

    cleaned = {'nickname': nickname, 'text': text, 'date': date}
    return errors, cleaned

@route('/')
@route('/home')
@view('index')
def home():
    return dict(year=datetime.now().year)

@route('/contact')
@view('contact')
def contact():
    return dict(year=datetime.now().year)

@route('/about')
@view('about')
def about():
    return dict(year=datetime.now().year)

@route('/employees')
@view('team')
def employees():
    return dict(year=datetime.now().year)

@route('/services')
@view('services')
def services():
    return dict(year=datetime.now().year)

@route('/reviews', method='GET')
@view('reviews')
def reviews_get():
    reviews_list = load_reviews()
    reviews_list.sort(key=lambda x: x.get('date', ''), reverse=True)
    return {
        'year': datetime.now().year,
        'reviews': reviews_list,
        'errors': {},
        'form_data': {'nickname': '', 'text': '', 'date': ''}
    }

@route('/reviews', method=['GET', 'POST'])
@view('reviews')
def reviews():
    if request.method == 'POST':
        nickname = request.forms.get('nickname', '').strip()
        text = request.forms.get('text', '').strip()
        date = request.forms.get('date', '').strip()
        errors, cleaned = validate_review(nickname, text, date)

        if errors:
            reviews_list = load_reviews()
            reviews_list.sort(key=lambda x: x.get('date', ''), reverse=True)
            return template(
                'reviews',
                year=datetime.now().year,
                reviews=reviews_list,
                errors=errors,
                form_data=cleaned
            )
        reviews_list = load_reviews()
        new_review = {
            'nickname': nickname,
            'text': text,
            'date': date
        }
        reviews_list.append(new_review)
        save_reviews(reviews_list)

    reviews_list = load_reviews()
    reviews_list.sort(key=lambda x: x.get('date', ''), reverse=True)
    return {
        'year': datetime.now().year,
        'reviews': reviews_list,
        'errors': {},
        'form_data': {'nickname': '', 'text': '', 'date': ''}
    }