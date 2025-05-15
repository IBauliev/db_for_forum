CREATE INDEX idx_user_login ON user_profile(login_user);
CREATE INDEX idx_user_fullname ON user_profile(fullname);
CREATE INDEX idx_portfolio_city ON user_portfolio(city);
CREATE INDEX idx_portfolio_position ON user_portfolio(position);

ALTER TABLE user_profile ADD CONSTRAINT chk_password_length CHECK (length(password_user) >= 8);
ALTER TABLE user_portfolio ADD CONSTRAINT chk_gender_values CHECK (gender IN ('male', 'female', 'other'));
ALTER TABLE user_portfolio ADD CONSTRAINT chk_positive_salary CHECK (desired_salary >= 0);