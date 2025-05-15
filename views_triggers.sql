CREATE VIEW user_profile_view AS
SELECT 
    up.id_user,
    up.login_user,
    up.fullname,
    up.data_registration,
    p.phone,
    p.city,
    p.position,
    p.desired_salary
FROM 
    user_profile up
JOIN 
    user_portfolio p ON up.id_user = p.id_user;

CREATE OR REPLACE FUNCTION create_user_portfolio()
RETURNS TRIGGER AS $$
BEGIN
    INSERT INTO user_portfolio (id_user) VALUES (NEW.id_user);
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_create_portfolio
AFTER INSERT ON user_profile
FOR EACH ROW
EXECUTE FUNCTION create_user_portfolio();