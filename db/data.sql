INSERT INTO users (id, login_name, name, weight, height, age, gender) VALUES
    (1, 'nick', 'Nicholas Wong', 145, 71, 25, 'm'),
    (2, 'jin', 'Lu Jin Chen', 130, 67, 27, 'm'),
    (3, 'bob', 'male user', 205, 72, 45, 'm'),
    (4, 'bob1', 'male user', 205, 50, 45, 'm'),
    (5, 'bob2', 'male user', 130, 72, 16, 'm'),
    (6, 'jay', 'male user', 150, 71, 30, 'm'),
    (7, 'kay', 'male user', 180, 73, 33, 'm'),
    (8, 'elle', 'female user', 110, 65, 22, 'f'),
    (9, 'mars', 'female user', 99, 60, 50, 'f'),
    (10, 'venus', 'female user', 105, 59, 40, 'f');

INSERT INTO workouts (id, user_id, workout, date, improve, notes) VALUES
    (1, 1, 'pushup', '2014-10-30 10:45:24-07', 't', ''),
    (2, 1, 'pushup', '2014-10-22 15:34:12-07', 't', ''),
    (3, 1, 'pullup', '2014-10-22 15:34:12-07', 't', ''),
    (4, 1, 'pullup', '2014-10-30 10:45:24-07', 't', ''),
    (5, 2, 'bench', '2014-10-30 10:45:24-07', 't', ''),
    (6, 2, 'running', '2014-11-03 3:45:24-07', 't', ''),
    (7, 2, 'squat', '2014-11-03 3:45:24-07', 't', ''),
    (8, 3, 'bench', '2014-11-03 1:45:24-07', 't', ''),
    (9, 4, 'squat', '2014-11-13 17:32:24-07', 't', ''),
    (10, 5, 'running', '2014-09-03 13:45:24-07', 't', ''),
    (11, 6, 'pushup', '2014-09-04 14:35:24-07', 't', ''),
    (12, 7, 'pullup', '2014-09-04 14:35:24-07', 't', '');








