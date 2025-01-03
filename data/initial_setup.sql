INSERT INTO
    roles (name)
VALUES
    ('Admin'),
    ('User')
ON CONFLICT DO NOTHING;

INSERT INTO
    users (name, email, password_hash, role_id)
SELECT
    'Eleazar Fig',
    'eleazar.fig@example.com',
    '$2b$12$hxb9i21Vf53kKIKr6mtkXuHyx3U804FYHdiMlUECwmMy73kzFIevC',
    role_id
FROM
    roles
WHERE
    name LIKE 'Admin';
