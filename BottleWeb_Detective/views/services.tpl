<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Услуги — Детективное агентство «Тайна»</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Единый стиль в духе студенческого проекта */
        body {
            background-color: #f5f5f5;
            font-family: system-ui, -apple-system, 'Segoe UI', Roboto, 'Helvetica Neue', sans-serif;
        }

        /* Шапка-герой как на главной */
        .hero-section {
            background-color: #343a40;
            color: white;
            padding: 40px 0;
            text-align: center;
            margin-bottom: 30px;
        }

        /* Карточки услуг — адаптируем под стиль карточек сотрудников */
        .service-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            height: 100%;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .service-card:hover {
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            transform: translateY(-3px);
        }

        /* Иконка услуги — аналог фото сотрудника */
        .service-icon {
            width: 100%;
            height: 160px;
            background-color: #495057;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 56px;
            transition: background 0.2s;
        }

        .service-card:hover .service-icon {
            background-color: #007bff;
        }

        .service-info {
            padding: 20px;
        }

        .service-title {
            font-size: 1.35rem;
            font-weight: bold;
            margin-bottom: 8px;
            color: #212529;
        }

        .service-price {
            color: #007bff;
            font-weight: 700;
            font-size: 1.2rem;
            margin-bottom: 12px;
            border-left: 3px solid #007bff;
            padding-left: 10px;
        }

        .service-desc {
            color: #6c757d;
            font-size: 0.95rem;
            margin-bottom: 15px;
            line-height: 1.4;
        }

        .service-badge {
            display: inline-block;
            background-color: #343a40;
            color: white;
            padding: 5px 12px;
            border-radius: 20px;
            font-size: 0.75rem;
            font-weight: 500;
            letter-spacing: 0.3px;
        }

        /* Таблица с пакетами услуг (стиль как таблица сотрудников) */
        .table-custom {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }

        .table-custom thead {
            background-color: #343a40;
            color: white;
        }

        .table-custom th, .table-custom td {
            padding: 14px 12px;
            vertical-align: middle;
        }

        .badge-standard {
            background-color: #28a745;
            color: white;
            padding: 5px 12px;
            border-radius: 30px;
            font-size: 0.8rem;
            font-weight: 500;
        }

        .badge-premium {
            background-color: #ffc107;
            color: #212529;
            padding: 5px 12px;
            border-radius: 30px;
            font-size: 0.8rem;
            font-weight: 500;
        }

        .badge-vip {
            background-color: #dc3545;
            color: white;
            padding: 5px 12px;
            border-radius: 30px;
            font-size: 0.8rem;
            font-weight: 500;
        }

        /* Панели статистики / доп. информация */
        .stat-panel {
            background: white;
            border-radius: 10px;
            padding: 22px 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            height: 100%;
        }

        .stat-panel h4 {
            margin-top: 0;
            margin-bottom: 18px;
            padding-bottom: 8px;
            border-bottom: 2px solid #007bff;
            font-weight: 600;
        }

        .stat-panel ul {
            padding-left: 1.2rem;
        }

        .stat-panel li {
            margin-bottom: 8px;
        }

        /* Прогресс-бар (для рейтинга или раскрываемости) */
        .progress {
            height: 24px;
            border-radius: 20px;
            background-color: #e9ecef;
            margin-bottom: 12px;
        }

        .progress-bar {
            background-color: #007bff;
            font-weight: 500;
            line-height: 24px;
            padding-left: 8px;
            text-align: left;
            border-radius: 20px;
        }

        /* Заголовки секций */
        .section-title {
            text-align: center;
            margin-bottom: 35px;
            color: #343a40;
            border-bottom: 2px solid #007bff;
            padding-bottom: 12px;
            font-weight: 600;
        }

        /* Футер */
        footer {
            background-color: #f8f9fa;
            padding: 24px 0;
            margin-top: 50px;
            text-align: center;
            border-top: 1px solid #dee2e6;
        }

        .btn-custom {
            background-color: #343a40;
            color: white;
            border-radius: 30px;
            padding: 8px 24px;
            transition: 0.2s;
        }

        .btn-custom:hover {
            background-color: #007bff;
            color: white;
        }

        .mt-4 { margin-top: 30px; }
        .mb-4 { margin-bottom: 30px; }
        .text-center { text-align: center; }
    </style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
        <div class="container">
            <a class="navbar-brand fw-bold" href="/">Детективное агентство «Тайна»</a>

            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Переключить навигацию">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Главная</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/services">Услуги</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/team">Сотрудники</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/about">О нас</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/contact">Контакты</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>


    <!-- Шапка страницы услуг -->
    <div class="hero-section">
        <div class="container">
            <h1>Наши услуги</h1>
            <p class="lead">Профессиональная детективная деятельность по всей России</p>
        </div>
    </div>

    <div class="container">
        <!-- Секция: карточки основных услуг (аналог карточек сотрудников) -->
        <h2 class="section-title">Основные направления</h2>

        <div class="row">
            <!-- Услуга 1: Детективное расследование -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-icon">🕵️‍♂️</div>
                    <div class="service-info">
                        <div class="service-title">Детективное расследование</div>
                        <div class="service-price">от 25 000 ₽</div>
                        <div class="service-desc">
                            Полный цикл расследования: сбор фактов, поиск улик, проверка контрагентов, выявление недобросовестности.
                        </div>
                        <span class="service-badge">⭐ Лицензия МВД</span>
                    </div>
                </div>
            </div>

            <!-- Услуга 2: Наружное наблюдение -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-icon">🚗🔍</div>
                    <div class="service-info">
                        <div class="service-title">Наружное наблюдение</div>
                        <div class="service-price">от 18 000 ₽/день</div>
                        <div class="service-desc">
                            Скрытое наблюдение за объектом, фото/видеофиксация, маршруты передвижения, встречи. Абсолютная конфиденциальность.
                        </div>
                        <span class="service-badge">🎥 Современное оборудование</span>
                    </div>
                </div>
            </div>

            <!-- Услуга 3: Проверка персонала и партнёров -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-icon">📋🔎</div>
                    <div class="service-info">
                        <div class="service-title">Проверка персонала</div>
                        <div class="service-price">от 12 000 ₽</div>
                        <div class="service-desc">
                            Служебное расследование, проверка благонадёжности, выявление хищений, анализ деловой репутации.
                        </div>
                        <span class="service-badge">⚖️ Безопасность бизнеса</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Вторая линия карточек (доп услуги) -->
        <div class="row mt-2">
            <!-- Услуга 4: Аналитическая поддержка -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-icon">📊🧠</div>
                    <div class="service-info">
                        <div class="service-title">Аналитика & OSINT</div>
                        <div class="service-price">от 15 000 ₽</div>
                        <div class="service-desc">
                            Сбор данных из открытых источников, аналитические отчёты, цифровой профиль, мониторинг соцсетей.
                        </div>
                        <span class="service-badge">💻 OSINT-экспертиза</span>
                    </div>
                </div>
            </div>

            <!-- Услуга 5: Юридическая помощь -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-icon">⚖️📑</div>
                    <div class="service-info">
                        <div class="service-title">Юридическое сопровождение</div>
                        <div class="service-price">от 10 000 ₽</div>
                        <div class="service-desc">
                            Консультации, досудебное урегулирование, сбор доказательной базы, представление интересов в суде.
                        </div>
                        <span class="service-badge">👨‍⚖️ Опытные адвокаты</span>
                    </div>
                </div>
            </div>

            <!-- Услуга 6: Розыск людей -->
            <div class="col-md-4">
                <div class="service-card">
                    <div class="service-icon">🧭👤</div>
                    <div class="service-info">
                        <div class="service-title">Розыск людей</div>
                        <div class="service-price">от 30 000 ₽</div>
                        <div class="service-desc">
                            Поиск должников, пропавших родственников, свидетелей. Работаем по всей РФ и странам СНГ.
                        </div>
                        <span class="service-badge">🏆 92% результативность</span>
                    </div>
                </div>
            </div>
        </div>
        

        <!-- Контактный блок – как на странице сотрудников, но адаптированный под услуги -->
        <div class="row mt-4">
            <div class="col-md-12">
                <div class="stat-panel text-center">
                    <h3>💼 Нужна консультация или заказ услуги?</h3>
                    <p>Позвоните нам или оставьте заявку — мы ответим на все вопросы и подберём оптимальный формат работы.</p>
                    <a href="/contact" class="btn btn-dark btn-custom me-2">Связаться с нами</a>
                    <a href="#" class="btn btn-outline-secondary" style="border-radius:30px;" onclick="alert('Бесплатная консультация по телефону: +7 (495) 123-45-67'); return false;">Бесплатная консультация</a>
                </div>
            </div>
        </div>

        <!-- Бонусный блок – обратная связь (аналог доп. элемента, но в стиле детективного агентства) -->
        <div class="row">
            <div class="col-md-12">
                <div class="stat-panel">
                    <h4>📞 Как заказать услугу?</h4>
                    <div class="row align-items-center">
                        <div class="col-md-8">
                            <p>1. Оставьте заявку по телефону <strong>+7 (495) 555-33-22</strong> или через форму на сайте.<br>
                            2. Заключаем официальный договор — гарантия конфиденциальности.<br>
                            3. Назначаем ведущего детектива, согласовываем план работ.<br>
                            4. Предоставляем отчёт с результатами (фото, видео, документы).<br>
                            <span class="text-primary">*Срочные заказы выполняем в течение 24 часов.</span></p>
                        </div>
                        <div class="col-md-4 text-center">
                            <div class="mt-2">📧 services@taena.ru</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Футер (полностью как в оригинале, год динамический через JS) -->
    <footer>
        <div class="container">
            <p>© <span id="currentYear"></span> Детективное агентство «Тайна»</p>
            <p class="small">Все права защищены. Лицензия на детективную деятельность № 77123456789</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Устанавливаем текущий год в футере (аналог {{ year or "2025" }})
        document.addEventListener('DOMContentLoaded', function() {
            const yearSpan = document.getElementById('currentYear');
            if (yearSpan) {
                yearSpan.textContent = new Date().getFullYear();
            }
            console.log('Страница услуг детективного агентства «Тайна» загружена');
            
            // Небольшая интерактивность: hover-эффекты уже в css, но добавим лог для карточек
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