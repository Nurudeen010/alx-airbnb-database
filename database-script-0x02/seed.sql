INSERT INTO USER VALUES (
    1, 'Ajani', 'Nurudeen', 'nurudeenolamide010@gmail.com',
     'Tortoise34', '07051448836', 'guest', '2024-12-1 9:00'
);

INSERT INTO USER VALUES (
    2, 'Ajani', 'Rahmah', 'rahmah7@gmail.com',
     'ArikeMide24', '07051448898', 'host', '2022-12-08 8:00'
);

INSERT INTO USER VALUES (
    3, 'Balogun', 'Semeton', 'semeton@gmail.com',
     'ArikeMide24', '07051448897', 'guest', '2022-12-09 8:00'
);


INSERT INTO Property VALUES(1, NULL, 'Oshodi Axis', 
'This is a good property at a very good location',
'3, Oshodi Lane, Lagos',
'16000', '2023-09-10 14:00', '2024-10-09 22:30'
);

INSERT INTO Property VALUES(2, 1, 'Obalende Luxury', 
'This is a luxurious property, best for your relaxation',
'4, Ajao Obalende, Lagos',
'20000', '2023-09-10 14:10', '2024-10-09 22:40'
);

INSERT INTO Property VALUES(3, 2, 'Palm Avenue Estate', 
'A perfect place to enjoy light 24/7',
'124, Isolo Road, Mushin',
'500000', '2023-09-10 14:10', '2024-10-09 22:40'
);


INSERT INTO Booking VALUES (
    1, 2, 1, '1996-12-09','1996-12-11',
    2000000,
    'pending', '2024-12-01 18:21'
);

INSERT INTO Booking VALUES (
    2, 1, 1, '2008-12-09','2008-12-11',
    3000000,
    'confirmed', '2024-12-01 18:50'
);

INSERT INTO Booking VALUES (
    3, 2, 3, '2008-12-09','2008-12-11',
    3000000,
    'confirmed', '2024-12-01 18:50'
);


INSERT INTO Payment VALUES (
    1, 1, 35000.00, '2024-11-30 20:15',
    'credit_card'
);

INSERT INTO Payment VALUES (
    2, 1, 45000.00, '2024-11-29 23:00',
    'stripe'
);


INSERT INTO Review VALUES (
    1, 1, 1, 4,
    'Had a nice time at this property',
    '2024-10-28 18:00'
);

INSERT INTO Review VALUES (
    2, 2, 1, 3,
    'Not so bad',
    '2024-11-10 23:00'
);

INSERT INTO Review VALUES (
    3, 3, 3, 5,
    'Great property I must say',
    '2024-10-28 18:00'
);




INSERT INTO Messages VALUES (
    1, 1, NULL,
    'Glad you loved it, Looking forward to host you again',
     '2024-10-28 18:00'
);

INSERT INTO Messages VALUES (
    2, 1, 1,
    'New promotion alert, do not miss it',
    '2024-11-10 23:00'
);

