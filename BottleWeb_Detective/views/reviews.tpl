<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Отзывы — Детективное агентство «Тайна»</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/static/content/site.css" rel="stylesheet">
    <link href="/static/content/services.css" rel="stylesheet">
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
            <h1 class="display-4">Отзывы</h1>
        </div>
    </div>

    <!-- Основной контент -->
    <div class="container">
        <h2 class="mb-4">Что говорят клиенты</h2>
        % if reviews:
            <div class="row mb-5">
                % for review in reviews:
                <div class="col-md-6 mb-4">
                    <div class="card h-100">
                        <div class="card-body">
                            <p class="card-text">{{ review['text'] }}</p>
                            <footer class="blockquote-footer mt-2">
                                {{ review['author'] }}, <cite>{{ review['date'] }}</cite>
                            </footer>
                        </div>
                    </div>
                </div>
                % end
            </div>
        % else:
            <p class="text-muted mb-5">Пока нет отзывов. Станьте первым!</p>
        % end

        <h2 class="mb-3">Оставить отзыв</h2>
        <form method="post" action="/reviews" class="mb-5">
            <div class="mb-3">
                <label for="author" class="form-label">Автор</label>
                <input type="text" class="form-control" id="author" name="author" required>
            </div>
            <div class="mb-3">
                <label for="text" class="form-label">Текст)</label>
                <textarea class="form-control" id="text" name="text" rows="3" required></textarea>
            </div>
            <div class="mb-3">
                <label for="date" class="form-label">Дата</label>
                <input type="date" class="form-control" id="date" name="date" required>
            </div>
            <button type="submit" class="btn btn-primary">Разместить</button>
        </form>
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