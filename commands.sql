-- Setup for upcoming academic session

INSERT INTO batch VALUES 
    (1, 2021, 1), 
    (2, 2021, 2), 
    (3, 2021, 3);

-- Adding student data for 2021 intake
INSERT INTO student VALUES
    ('2021csb1113', 'John', '2021csb1113@iitrpr.ac.in', 1),
    ('2021csb1068', 'Jim', '2021csb1068@iitrpr.ac.in', 1),
    ('2021csb0000', 'Jonny', '2021csb0000@iitrpr.ac.in', 1),
    ('2021eeb1000', 'Kim', '2021eeb1000@iitrpr.ac.in', 2),
    ('2021eeb1001', 'Peter', '2021eeb1001@iitrpr.ac.in', 2),
    ('2021meb0001', 'Harry', '2021meb0001@iitrpr.ac.in', 3),
    ('2021meb0000', 'Neel', '2021meb0000@iitrpr.ac.in', 3);

-- Appoint academic advisors
INSERT INTO advisor VALUES 
    ('2015csp0001', 1),
    ('2015csp0002', 2),
    ('2010eep0003', 3);

-- Commence new semester (2021-1)
CALL start_add(1, 2021);

-- Create course offerings with constraints
CALL add_offering('CS101', 1); -- Instructor: 2015csp0001
CALL add_constraints(1, 1, 7);

CALL add_offering('EE101', 1); -- Instructor: 2010eep0003
CALL add_constraints(2, 2, 7);

CALL add_offering('ME101', 1); -- Instructor: 2014mep0001
CALL add_constraints(3, 3, 7);

-- Students enroll for courses
CALL enroll_credit(1); -- 2021csb1113
CALL enroll_credit(2); -- 2021eeb1000
CALL enroll_credit(3); -- 2021meb0001

-- Finalize course additions
CALL stop_add();

-- Withdrawal window opens and closes
CALL start_withdraw();
CALL stop_withdraw();

-- Faculty update grades from CSV files
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_1_1.csv', 1);
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_1_2.csv', 2);
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_1_3.csv', 3);

-- Generate transcript for a student
CALL generate_transcript('2021csb1113', 1, 2021);

-- Next batch arrives (2022)
INSERT INTO batch VALUES 
    (4, 2022, 1), 
    (5, 2022, 2), 
    (6, 2022, 3);

-- Registering students for 2022 batch
INSERT INTO student VALUES
    ('2022csb1113', 'Bruno', '2022csb1113@iitrpr.ac.in', 4),
    ('2022csb1068', 'Selena', '2022csb1068@iitrpr.ac.in', 4),
    ('2022csb0000', 'Justin', '2022csb0000@iitrpr.ac.in', 4),
    ('2022eeb1000', 'Joe', '2022eeb1000@iitrpr.ac.in', 5),
    ('2022eeb1001', 'Mike', '2022eeb1001@iitrpr.ac.in', 5),
    ('2022meb0001', 'Zayn', '2022meb0001@iitrpr.ac.in', 6),
    ('2022meb0000', 'Virat', '2022meb0000@iitrpr.ac.in', 6);

-- Assign faculty mentors for new students
INSERT INTO advisor VALUES
    ('2016eep0010', 4),
    ('2014mep0001', 5),
    ('2017mep0020', 6);

-- Begin next term (2021-2)
CALL start_add(2, 2021);

-- Add course offerings and constraints
CALL add_offering('CS101', 1); -- Offered again
CALL add_constraints(4, 1, 7);
CALL add_constraints(4, 2, 7);
CALL add_constraints(4, 3, 7);
CALL add_constraints(4, 4, 7);

CALL add_offering('CS201', 2);
CALL add_constraints(5, 1, 7);

CALL add_offering('EE101', 1);
CALL add_constraints(6, 1, 7);
CALL add_constraints(6, 2, 7);
CALL add_constraints(6, 3, 7);
CALL add_constraints(6, 5, 7);

CALL add_offering('EE201', 2);
CALL add_constraints(7, 2, 7);

CALL add_offering('ME101', 1);
CALL add_constraints(8, 1, 7);
CALL add_constraints(8, 2, 7);
CALL add_constraints(8, 3, 7);
CALL add_constraints(8, 6, 7);

CALL add_offering('ME201', 2);
CALL add_constraints(9, 3, 7);

-- Enrollment for second semester
CALL enroll_credit(5); -- 2021csb1113
CALL enroll_credit(7); -- 2021eeb1000
CALL enroll_credit(4); -- new
CALL enroll_credit(9); -- 2021meb0001

-- Ticket system used for permission
CALL enroll_audit(4);
CALL generate_ticket(4);
CALL ticket_verdict_i(1, '2021meb0001', FALSE);
CALL ticket_verdict_b(1, '2021meb0001', TRUE);
CALL ticket_verdict_d(1, '2021meb0001', TRUE);
CALL enroll_audit(4); -- once approved

-- New batch enrolls in second semester
CALL enroll_credit(4); -- 2022csb1113
CALL enroll_credit(6); -- 2022eeb1000
CALL enroll_credit(8); -- 2022meb0001

-- End course registration
CALL stop_add();

-- Drop course window
CALL start_withdraw();
CALL withdraw_offering(4); -- Dropping course
CALL stop_withdraw();

-- Faculty upload grades for ongoing semester
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_2_4.csv', 4);
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_2_5.csv', 5);
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_2_6.csv', 6);
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_2_7.csv', 7);
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_2_8.csv', 8);
CALL update_credit_grades('/home/akshita/Documents/btech/cs301/project/Academic-Portal/grades/2021_2_9.csv', 9);
