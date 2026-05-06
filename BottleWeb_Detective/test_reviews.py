import unittest
import sys
import os
from datetime import date, timedelta

sys.path.append(os.path.dirname(os.path.abspath(__file__)))

from routes import validate_review

class TestReviewValidatorDate(unittest.TestCase):
    """Тесты для проверки валидации даты"""
    
    def test_valid_date_format(self):
        """Тест корректного формата даты"""
        errors, cleaned = validate_review("User", "Отличный сервис, всем рекомендую!", "2024-05-15")
        self.assertNotIn('date', errors)
        self.assertEqual(cleaned['date'], '2024-05-15')
    
    def test_invalid_date_format(self):
        """Тест неверного формата даты"""
        errors, cleaned = validate_review("User", "Отличный сервис, всем рекомендую!", "15.05.2024")
        self.assertIn('date', errors)
        self.assertEqual(errors['date'], 'Неверный формат даты')
    
    def test_old_date_before_1900(self):
        """Тест даты до 1900 года"""
        errors, cleaned = validate_review("User", "Отличный сервис, всем рекомендую!", "1899-12-31")
        self.assertIn('date', errors)
        self.assertEqual(errors['date'], 'Дата не может быть раньше 1900 года')
    
    def test_today_date(self):
        """Тест сегодняшней даты"""
        today = date.today().strftime('%Y-%m-%d')
        errors, cleaned = validate_review("User", "Отличный сервис, всем рекомендую!", today)
        self.assertNotIn('date', errors)
    
    def test_empty_date(self):
        """Тест пустой даты"""
        errors, cleaned = validate_review("User", "Отличный сервис, всем рекомендую!", "")
        self.assertIn('date', errors)
        self.assertEqual(errors['date'], 'Укажите дату')


if __name__ == '__main__':
    unittest.main()