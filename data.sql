-- Executed under Dean Academic privileges

-- Inserting time slot data with corresponding capacity
INSERT INTO slot VALUES 
    (1, 50), 
    (2, 50), 
    (3, 50), 
    (4, 100), 
    (5, 30);

-- Defining academic departments
INSERT INTO department VALUES 
    (1, 'CSE'), 
    (2, 'EE'), 
    (3, 'ME');

-- Introducing course catalog
INSERT INTO course VALUES
    ('CS101', 'Discrete Mathematics', 3, 1, 2, 3.5, 3, 1),
    ('CS201', 'Data Structures', 3, 1, 2, 3.5, 4, 1),
    ('EE101', 'Intro to Electrical Systems', 3, 1, 2, 3.5, 3, 2),
    ('EE201', 'Signal Analysis', 3, 1, 2, 3.5, 3, 2),
    ('ME101', 'Engineering Graphics', 3, 1, 2, 3.5, 3, 3),
    ('ME201', 'Material Science', 3, 1, 2, 3.5, 3, 3);

-- Specifying prerequisites for advanced courses
INSERT INTO prereq VALUES
    ('CS201', 'CS101'),
    ('EE201', 'EE101'),
    ('ME201', 'ME101');

-- Registering instructors with their departments
INSERT INTO instructor VALUES
    ('2015csp0001', 'A. Sharma', 'a.sharma@iitrpr.ac.in', 1),
    ('2015csp0002', 'N. Rao', 'n.rao@iitrpr.ac.in', 1),
    ('2010eep0003', 'B. Gill', 'b.gill@iitrpr.ac.in', 2),
    ('2016eep0010', 'J. Singh', 'j.singh@iitrpr.ac.in', 2),
    ('2014mep0001', 'W. Khan', 'w.khan@iitrpr.ac.in', 3),
    ('2017mep0020', 'B. Lee', 'b.lee@iitrpr.ac.in', 3);

