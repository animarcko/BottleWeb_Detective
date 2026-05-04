<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Услуги — Детективное агентство «Тайна»</title>
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

   

    <!-- футер  -->
    <footer class="footer py-4 mt-5">
        <div class="container text-center">
            <p class="mb-0 text-muted">{{ year or "2026" }} Детективное агентство «Тайна» — Ваша уверенность под защитой.</p>
            <p class="small text-muted mt-2">Все материалы сайта носят информационный характер и не являются публичной офертой.</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // устанавливаем текущий год в футере
        document.addEventListener('DOMContentLoaded', function() {
            const yearSpan = document.getElementById('currentYear');
            if (yearSpan) {
                yearSpan.textContent = new Date().getFullYear();
            }
            console.log('Страница услуг детективного агентства «Тайна» загружена');
            
            const cards = document.querySelectorAll('.service-card');
            cards.forEach((card, index) => {
                card.addEventListener('click', () => {
                    console.log(`Пользователь кликнул по услуге #${index + 1}`);
                });
            });
        });
    </script>
</body>
</html>