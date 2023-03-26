INSERT INTO ROOM (room_id,NAME, ROOM_NUMBER, BED_INFO) VALUES (1,'Piccadilly', 'P1', '1Q');
INSERT INTO ROOM (room_id,NAME, ROOM_NUMBER, BED_INFO) VALUES (7,'Piccadilly', 'P5', '1Q');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Piccadilly', 'P3', '1Q');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Piccadilly', 'P4', '2D');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Piccadilly', 'P5', '2D');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Piccadilly', 'P6', '2D');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Cambridge', 'C1', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Cambridge', 'C2', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Cambridge', 'C3', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Westminster', 'W1', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Westminster', 'W2', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Westminster', 'W3', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Westminster', 'W4', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Westminster', 'W5', '2D');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Westminster', 'W6', '2D');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Westminster', 'W7', '2D');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Oxford', 'O1', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Oxford', 'O2', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Oxford', 'O3', '1Q');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Oxford', 'O4', '1Q');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Oxford', 'O5', '1Q');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Victoria', 'V1', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Victoria', 'V2', '2D');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Victoria', 'V3', '2D');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Manchester', 'M1', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Manchester', 'M2', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Manchester', 'M3', '1K');
INSERT INTO ROOM (NAME, ROOM_NUMBER, BED_INFO) VALUES ('Manchester', 'M4', '1K');

-- Inserting a guest with ID 2
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (2, 'Smith', 'John', 'jsmith@gmail.com', 'United States', '123 Main St', 'NY', '5551234');

-- Inserting a guest with ID 3
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (3, 'Johnson', 'Mary', 'mjohnson@yahoo.com', 'Canada', '456 Elm St', 'ON', '5555678');

-- Inserting a guest with ID 4
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (4, 'Brown', 'Robert', 'rbrown@hotmail.com', 'Australia', '789 Oak St', 'NSW', '5559101');

INSERT INTO RESERVATION (reservation_id,ROOM_ID, GUEST_ID, RES_DATE) VALUES (1,(SELECT ROOM_ID FROM ROOM WHERE ROOM_NUMBER = 'P1'), 2, '20220101');

-- Inserting a guest with ID 5
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (5, 'Taylor', 'Jennifer', 'jtaylor@aol.com', 'United Kingdom', '234 Maple St', 'ENG', 5551212);

-- Inserting a guest with ID 6
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (6, 'Jones', 'Michael', 'mjones@outlook.com', 'France', '567 Pine St', 'IDF', 5553434);

-- Inserting a guest with ID 7
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (7, 'Lee', 'David', 'dlee@gmail.com', 'United States', '123 Oak St', 'CA', 5555656);

-- Inserting a guest with ID 8
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (8, 'Kim', 'Sarah', 'skim@yahoo.com', 'South Korea', '456 Maple St', 'SEO', 5557878);

-- Inserting a guest with ID 9
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (9, 'Garcia', 'Maria', 'mgarcia@hotmail.com', 'Spain', '789 Elm St', 'MAD', 5552323);

-- Inserting a guest with ID 10
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (10, 'Gonzalez', 'Luis', 'lgonzalez@aol.com', 'Mexico', '234 Oak St', 'MEX', 5558989);

-- Inserting a guest with ID 11
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (11, 'Martinez', 'Ana', 'amartinez@outlook.com', 'Argentina', '567 Maple St', 'BUE', 5554545);

-- Inserting a guest with ID 12
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (12, 'Chen', 'Wei', 'wchen@gmail.com', 'China', '123 Pine St', 'BJ', 5557878);

-- Inserting a guest with ID 13
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (13, 'Wang', 'Ling', 'lwang@yahoo.com', 'China', '456 Oak St', 'SH', 5551212);

-- Inserting a guest with ID 14
INSERT INTO guest (guest_id, last_name, first_name, email_address, country, address, state, phone_number)
VALUES (14, 'Liu', 'Jing', 'jliu@hotmail.com', 'China', '789 Maple St', 'HK', 5555656);


