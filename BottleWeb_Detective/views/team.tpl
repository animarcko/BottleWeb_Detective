<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Детективное агентство «Тайна»</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Простые стили как у студента */
        body {
            background-color: #f5f5f5;
        }
        
        /* Шапка */
        .hero-section {
            background-color: #343a40;
            color: white;
            padding: 40px 0;
            text-align: center;
            margin-bottom: 30px;
        }
        
        /* Карточки сотрудников */
        .employee-card {
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin-bottom: 20px;
            height: 100%;
        }
        
        .employee-card:hover {
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
        }
        
        .employee-photo {
            width: 100%;
            height: 200px;
            background-color: #6c757d;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            font-size: 48px;
        }
        
        .employee-info {
            padding: 15px;
        }
        
        .employee-name {
            font-size: 1.2rem;
            font-weight: bold;
            margin-bottom: 5px;
        }
        
        .employee-position {
            color: #007bff;
            font-style: italic;
            margin-bottom: 5px;
        }
        
        .employee-department {
            color: #6c757d;
            font-size: 0.9rem;
            margin-bottom: 10px;
        }
        
        .employee-badge {
            display: inline-block;
            background-color: #343a40;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
            font-size: 0.8rem;
        }
        
        /* Таблица */
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
            padding: 12px;
        }
        
        .badge-active {
            background-color: #28a745;
            color: white;
            padding: 5px 10px;
            border-radius: 5px;
        }
        
        .badge-vacation {
            background-color: #ffc107;
            color: black;
            padding: 5px 10px;
            border-radius: 5px;
        }
        
        /* Панели статистики */
        .stat-panel {
            background: white;
            border-radius: 10px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
            margin-bottom: 20px;
        }
        
        .stat-panel h4 {
            margin-top: 0;
            margin-bottom: 15px;
            padding-bottom: 10px;
            border-bottom: 2px solid #007bff;
        }
        
        /* Прогресс бар */
        .progress {
            height: 20px;
            border-radius: 5px;
            background-color: #e9ecef;
        }
        
        .progress-bar {
            background-color: #007bff;
            color: white;
            text-align: center;
            line-height: 20px;
        }
        
        /* Заголовки */
        .section-title {
            text-align: center;
            margin-bottom: 30px;
            color: #343a40;
            border-bottom: 2px solid #007bff;
            padding-bottom: 10px;
        }
        
        /* Футер */
        footer {
            background-color: #f8f9fa;
            padding: 20px 0;
            margin-top: 40px;
            text-align: center;
            border-top: 1px solid #dee2e6;
        }
        
        /* Простые отступы */
        .mt-4 { margin-top: 30px; }
        .mb-4 { margin-bottom: 30px; }
        .text-center { text-align: center; }
    </style>
</head>

<body>
    <!-- навигация -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="/">Детективное агентство «Тайна»</a>
            <div class="navbar-nav">
                <a class="nav-link" href="/">Главная</a>
                <a class="nav-link" href="/services">Услуги</a>
                <a class="nav-link active" href="/employees">Сотрудники</a>
                <a class="nav-link" href="/about">О нас</a>
                <a class="nav-link" href="/contact">Контакты</a>
            </div>
        </div>
    </nav>

    <!-- шапка -->
    <div class="hero-section">
        <div class="container">
            <h1>Наши сотрудники</h1>
            <p class="lead">Профессионалы детективного дела</p>
        </div>
    </div>

    <div class="container">
        <!-- Карточки сотрудников -->
        <h2 class="section-title">Ключевые сотрудники</h2>
        
        <div class="row">
            <!-- Андреева Екатерина -->
            <div class="col-md-4">
                <div class="employee-card">
                    <div class="employee-photo">👩</div>
                    <div class="employee-info">
                        <div class="employee-name">Андреева Екатерина</div>
                        <div class="employee-position">Ведущий детектив</div>
                        <div class="employee-department">Отдел расследований</div>
                        <p>Опыт: 8 лет</p>
                        <span class="employee-badge">Руководитель</span>
                    </div>
                </div>
            </div>
            
            <!-- Скулябина Маргарита -->
            <div class="col-md-4">
                <div class="employee-card">
                    <div class="employee-photo">👩‍💼</div>
                    <div class="employee-info">
                        <div class="employee-name">Скулябина Маргарита</div>
                        <div class="employee-position">Детектив-аналитик</div>
                        <div class="employee-department">Аналитический отдел</div>
                        <p>Опыт: 5 лет</p>
                        <span class="employee-badge">Аналитик</span>
                    </div>
                </div>
            </div>
            
            <!-- Пароменкова Ольга -->
            <div class="col-md-4">
                <div class="employee-card">
                    <div class="employee-photo">👨</div>
                    <div class="employee-info">
                        <div class="employee-name">Пароменкова Ольга</div>
                        <div class="employee-position">Оперативный сотрудник</div>
                        <div class="employee-department">Наружное наблюдение</div>
                        <p>Опыт: 6 лет</p>
                        <span class="employee-badge">Сотрудник</span>
                    </div>
                </div>
            </div>
        </div>

        <!-- Простой контактный блок -->
        <div class="row mt-4">
            <div class="col-md-12">
                <div class="stat-panel text-center">
                    <h3>Хотите работать с нами?</h3>
                    <p>Присылайте резюме на почту: hr@taena.ru</p>
                    <a href="/contact" class="btn btn-dark">Связаться с нами</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Простой футер -->
    <footer>
        <div class="container">
            <p>© {{ year or "2025" }} Детективное агентство «Тайна»</p>
            <p class="small">Все права защищены</p>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Скрипт
        document.addEventListener('DOMContentLoaded', function() {
            console.log('Страница сотрудников загружена');
        });
    </script>
</body>
</html>