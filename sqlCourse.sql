
CREATE TABLE Course AS (
	course_prefix CHAR(4),
	course_number INTEGER PRIMARY KEY,
	course_description TEXT
);

CREATE TABLE Classroom AS (
	building TEXT,
	room_number INTEGER PRIMARY KEY,
	capacity INTEGER
);

CREATE TABLE Faculty AS (
	faculty_name TEXT PRIMARY KEY,
	office TEXT,
	email TEXT,
	phone_number INTEGER,
);

CREATE TABLE Schedule (
	course_id INTEGER PRIMARY KEY,
	section INTEGER,
	room_number INTEGER,
	course_meeting_days TEXT[],
	start_time TIME,
	end_time TIME,
	instructor_name TEXT
);

INSERT INTO Course (course_prefix, course_number, course_description)
VALUES 
	('CSCI', 1300, 'Introduction to SQL'),
	('COMM', 4402, 'Theory of Conspiracy Theories'),
	('ART', 3301, 'Advanced Basket Weaving');

INSERT INTO Classroom (building, room_number, capacity)
VALUES 
	('CSI', 448, 30),
	('Dicke Hall', 201, 60),
	('Dicke Hall', 303, 50);

INSERT INTO Faculty (faculty_name, office, email, phone_number)
VALUES 
	('Jeremy Lin', '233B', 'jLin@trinity.edu', 6576778907),
	('Professor Professorson', '325D', 'pProfess@trinity.edu', 5556655757),
	('Justin Bieber', '327E', 'jbieber@trinity.edu', 5556659967);

INSERT INTO Schedule (course_id, section, room_number, course_meeting_days, start_time, end_time, instructor_name)
VALUES 
	(1300, 4, 448, ('Monday','Wednesday','Friday'), 10:30:00, 11:20:00, 'Jeremy Lin'),
	(4402, 1, 201, ('Tuesday','Thursday'), 9:55:00, 11:10:00, 'Professor Professorson'),
	(3301, 2, 303, ('Tuesday','Thursday'), 11:20:00, 12:35:00, 'Justin Bieber');

