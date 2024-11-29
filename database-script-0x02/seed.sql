INSERT INTO USER VALUES (
    1, 'Ajani', 'Nurudeen', 'nurudeenolamide010@gmail.com',
     'Tortoise34', '07051448836', 'guest'
);

INSERT INTO USER VALUES (
    2, 'Ajani', 'Rahmah', 'rahmah7@gmail.com',
     'ArikeMide24', '07051448898', 'host'
);


INSERT INTO Property VALUES(1, NULL, 'Oshodi Axis', 
'This is a good property at a very good location',
'3, Oshodi Lane, Lagos',
'16000',
);

INSERT INTO Property VALUES(2, 1, 'Obalende Luxury', 
'This is a luxurious property, best for your relaxation',
'4, Ajao Obalende, Lagos',
'20000',
);


INSERT INTO Booking VALUES (
    1, 2, 1, '1996-12-09','1996-12-11',
    2000000,
    'pending'
);

INSERT INTO Booking VALUES (
    2, 1, 1, '2008-12-09','2008-12-11',
    3000000,
    'confirmed'
);


INSERT INTO Payment VALUES (
    1, 1, 35000,
    'credit_card'
);

INSERT INTO Payment VALUES (
    2, 1, 45000,
    'stripe'
);


INSERT INTO Review VALUES (
    1, 1, 1, 4,
    'Had a nice time at this property'
);

INSERT INTO Review VALUES (
    2, 2, 1, 3,
    'Not so bad'
);


INSERT INTO Messages VALUES (
    1, 1, NULL,
    'Glad you loved it, Looking forward to host you again'
);

INSERT INTO Messages VALUES (
    2, 1, 1,
    'New promotion alert, do not miss it'
);
