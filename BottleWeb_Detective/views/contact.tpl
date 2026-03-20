<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <title>{{ title or "Контакты - Детективное агентство «Тайна»" }}</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="site.css" rel="stylesheet">
</head>
<body>

<!-- Навигация (точно как на главной) -->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container">
        <a class="navbar-brand fw-bold" href="/">Детективное агентство «Тайна»</a>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Переключить навигацию">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item"><a class="nav-link" href="/">Главная</a></li>
                <li class="nav-item"><a class="nav-link" href="/services">Услуги</a></li>
                <li class="nav-item"><a class="nav-link" href="/team">Сотрудники</a></li>
                <li class="nav-item"><a class="nav-link" href="/about">О нас</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="/contact">Контакты</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- Hero секция (точно как на главной) -->
<div class="container-fluid hero-section bg-dark text-white py-5 mb-5">
    <div class="container text-center">
        <h1 class="display-4">Контакты</h1>
        <p class="lead fs-3">Свяжитесь с нами любым удобным способом</p>
        <hr class="w-25 mx-auto my-3 bg-white opacity-50">
        <p class="fs-5">Ваша уверенность в сложных ситуациях — наша главная цель</p>
    </div>
</div>

<div class="container">
    <div class="row mb-5">
        <div class="col-lg-8 mx-auto">
            <!-- Контактная информация -->
            <div class="contact-info p-4 p-md-5 rounded-4 shadow-sm principle-card mb-5">
                <h2 class="text-center mb-4">Наши контакты</h2>
                
                <div class="row g-4">
                    <div class="col-md-6">
                        <div class="service-card p-4 h-100 rounded-4 bg-white shadow-sm">
                            <div class="text-center mb-3">
                                <span class="display-6 d-block">📍</span>
                                <h5 class="fw-bold mb-2">Адрес</h5>
                            </div>
                            <address class="mb-0 fs-6">
                                г. Санкт-Петербург<br />
                                Невский проспект, д. 100, офис 15<br />
                                <strong>📞 Тел.:</strong> +7 (921) 123-45-67
                            </address>
                        </div>
                    </div>
                    
                    <div class="col-md-6">
                        <div class="service-card p-4 h-100 rounded-4 bg-white shadow-sm">
                            <div class="text-center mb-3">
                                <span class="display-6 d-block">✉️</span>
                                <h5 class="fw-bold mb-2">Электронная почта</h5>
                            </div>
                            <div class="fs-6">
                                <p class="mb-2"><strong>Поддержка:</strong><br>
                                <a href="mailto:support@taena-agency.ru" class="text-decoration-none">support@taena-agency.ru</a></p>
                                <p class="mb-0"><strong>Маркетинг:</strong><br>
                                <a href="mailto:marketing@taena-agency.ru" class="text-decoration-none">marketing@taena-agency.ru</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="row mt-4">
                    <div class="col-md-6 mx-auto">
                        <div class="service-card p-4 h-100 rounded-4 bg-white shadow-sm">
                            <div class="text-center mb-3">
                                <span class="display-6 d-block">🕐</span>
                                <h5 class="fw-bold mb-2">Режим работы</h5>
                            </div>
                            <p class="fs-6 mb-0">
                                Пн—Пт: 9:00 – 20:00<br />
                                Сб: 10:00 – 16:00<br />
                                Вс: по предварительной записи
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <!-- Как нас найти -->
            <div class="text-center mb-5">
                <div class="bg-light p-5 rounded-4 stat-card">
                    <h3 class="mb-4 text-dark">Как нас найти</h3>
                    <p class="text-muted mb-4 fs-5">
                        Наш офис находится в центре Санкт-Петербурга, в пешей доступности от станции метро «Невский проспект».
                    </p>
                     <span class="badge bg-primary text-white mb-2 p-2 fs-6">
                     🚇 Метро: Невский проспект / Гостиный двор
                     </span>
                    <p class="small text-muted">
                        *Предварительная запись по телефону обязательна для обеспечения конфиденциальности
                    </p>
                </div>
            </div>
            
            <!-- CTA блок -->
            <div class="text-center">
                <div class="principle-card bg-dark text-white p-4 p-md-5 rounded-4">
                    <h3 class="mb-3">Нужна консультация?</h3>
                    <p class="mb-4 opacity-75">
                        Оставьте заявку, и наш специалист свяжется с вами в ближайшее время
                    </p>
                    <a href="#" class="btn btn-primary btn-hover-effect btn-lg px-5">Заказать обратный звонок</a>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Футер (точно как на главной) -->
<footer class="footer py-4 mt-5">
    <div class="container text-center">
        <p class="mb-0 text-muted">{{ year or "2026" }} Детективное агентство «Тайна» — Ваша уверенность под защитой.</p>
        <p class="small text-muted mt-2">Все материалы сайта носят информационный характер и не являются публичной офертой.</p>
    </div>
</footer>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
