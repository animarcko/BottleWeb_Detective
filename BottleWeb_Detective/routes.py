from bottle import route, view, request, redirect, template
from datetime import datetime
import json
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

@route('/reviews', method=['GET', 'POST'])
@view('reviews')
def reviews():
    if request.method == 'POST':
        nickname = request.forms.get('nickname', '').strip()
        text = request.forms.get('text', '').strip()
        date = request.forms.get('date', '').strip()
        
        if nickname and text and date:
            reviews_list = load_reviews()
            new_review = {
                'id': len(reviews_list) + 1,
                'nickname': nickname,
                'text': text,
                'date': date,
                'created_at': datetime.now().isoformat()
            }
            reviews_list.append(new_review)
            save_reviews(reviews_list)
    
    reviews_list = load_reviews()
    reviews_list.sort(key=lambda x: x.get('created_at', ''), reverse=True)
    return dict(year=datetime.now().year, reviews=reviews_list)