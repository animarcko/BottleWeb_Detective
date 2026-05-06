<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отзывы — Детективное агентство «Тайна»</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/content/site.css" rel="stylesheet">
    <link href="/static/content/services.css" rel="stylesheet">
    <link href="/static/content/reviews.css" rel="stylesheet">
</head>
<body>
    <!-- навигация -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/">Детективное агентство «Тайна»</a>
            <div class="navbar-nav">
                <a class="nav-link" href="/">Главная</a>
                <a class="nav-link" href="/services">Услуги</a>
                <a class="nav-link" href="/employees">Сотрудники</a>
                <a class="nav-link" href="/about">О нас</a>
                <a class="nav-link" href="/contact">Контакты</a>
                <a class="nav-link active" href="/reviews">Отзывы</a>
            </div>
        </div>
    </nav>

    <!-- шапка -->
    <div class="container-fluid hero-section bg-dark text-white py-5 mb-5">
        <div class="container text-center">
            <h1 class="display-4">Отзывы наших клиентов</h1>
            <p class="lead">Ваше мнение важно для нас</p>
        </div>
    </div>

    <div class="container">
        <!-- Форма добавления отзыва -->
        <div class="form-container">
            <h3 class="mb-4">Оставить отзыв</h3>
            <form method="POST" action="/reviews">
                <div class="row g-3">
                    <div class="col-md-4">
                        <label for="nickname" class="form-label">Ваше имя или ник *</label>
                        <input type="text" class="form-control" id="nickname" name="nickname" required>
                    </div>
                    <div class="col-md-4">
                        <label for="date" class="form-label">Дата *</label>
                        <input type="date" class="form-control" id="date" name="date" required>
                    </div>
                    <div class="col-12">
                        <label for="text" class="form-label">Текст отзыва *</label>
                        <textarea class="form-control" id="text" name="text" rows="4" required></textarea>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">Отправить отзыв</button>
                    </div>
                </div>
            </form>
        </div>

        <!-- Список отзывов -->
        <h3 class="mb-4">Отзывы клиентов</h3>
        
        % if not reviews:
            <div class="alert alert-info">Пока нет ни одного отзыва. Будьте первым!</div>
        % else:
            <div class="reviews-list">
                % for review in reviews:
                    <div class="card review-card">
                        <div class="card-body">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <h5 class="review-nickname mb-0">{{ review['nickname'] }}</h5>
                                <span class="review-date">{{ review['date'] }}</span>
                            </div>
                            <p class="card-text">{{ review['text'] }}</p>
                        </div>
                    </div>
                % end
            </div>
        % end
    </div>

    <!-- футер -->
    <footer class="footer py-4 mt-5">
        <div class="container text-center">
            <p class="mb-0 text-muted">{{ year }} Детективное агентство «Тайна» — Ваша уверенность под защитой.</p>
            <p class="small text-muted mt-2">Все материалы сайта носят информационный характер и не являются публичной офертой.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>