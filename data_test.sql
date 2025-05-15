INSERT INTO user_profile (login_user, password_user, fullname) VALUES
('hochybarovIBA', 'securepass123', 'Хочубаров Иба'),
('hochyzalovIBA', 'qwerty789', 'Хочузалов Иба');

INSERT INTO user_portfolio (
    id_user, phone, city, gender, birthdate, position, desired_salary
) VALUES
(1, '+79363174761', 'Назрань', 'male', '1990-05-15', 'Уборщик', 150000),
(2, '+79363174761', 'Нестеровская', 'female', '1995-08-22', 'Повар', 180000);

INSERT INTO skill (skill_name) VALUES
('PostgreSQL'), ('Python'), ('Machine Learning'), ('Docker');

INSERT INTO user_skill (id_user, id_skill, proficiency_level) VALUES
(1, 1, 'advanced'), (1, 2, 'intermediate'),
(2, 2, 'advanced'), (2, 3, 'advanced');

INSERT INTO language (language_name, code) VALUES
('Английский', 'en'), ('Русский', 'ru');

INSERT INTO user_language (id_user, id_language, proficiency_level) VALUES
(1, 1, 'fluent'), (1, 2, 'native'),
(2, 1, 'advanced'), (2, 2, 'native');