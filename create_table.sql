CREATE TABLE user_profile (
    id_user SERIAL PRIMARY KEY,
    login_user VARCHAR(50) UNIQUE NOT NULL,
    password_user VARCHAR(255) NOT NULL,
    fullname VARCHAR(100) NOT NULL,
    data_registration TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    profile_photo VARCHAR(255)
    
);

CREATE TABLE user_portfolio (
    id_portfolio SERIAL PRIMARY KEY,
    id_user INT UNIQUE NOT NULL REFERENCES user_profile(id_user),
    phone VARCHAR(20),
    city VARCHAR(100),
    gender VARCHAR(10),
    birthdate DATE,
    citizenship VARCHAR(50),
    marital_status VARCHAR(50),
    position VARCHAR(100),
    desired_salary NUMERIC(10, 2),
    employment_type VARCHAR(50),
    additional_info TEXT
);

CREATE TABLE education (
    id_education SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES user_profile(id_user),
    institution VARCHAR(255) NOT NULL,
    degree VARCHAR(100),
    start_date DATE,
    end_date DATE,
    description TEXT
);

CREATE TABLE skill (
    id_skill SERIAL PRIMARY KEY,
    skill_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE user_skill (
    id_user INT NOT NULL REFERENCES user_profile(id_user),
    id_skill INT NOT NULL REFERENCES skill(id_skill),
    proficiency_level VARCHAR(50),
    PRIMARY KEY (id_user, id_skill)
);

CREATE TABLE language (
    id_language SERIAL PRIMARY KEY,
    language_name VARCHAR(50) UNIQUE NOT NULL,
    code VARCHAR(5)
);

CREATE TABLE user_language (
    id_user INT NOT NULL REFERENCES user_profile(id_user),
    id_language INT NOT NULL REFERENCES language(id_language),
    proficiency_level VARCHAR(50),
    PRIMARY KEY( id_user, user_language)

);