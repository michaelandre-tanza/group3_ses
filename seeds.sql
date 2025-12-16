INSERT INTO `users` (`user_id`, `username`, `password`, `role`, `date_created`) VALUES
(1, 'admin_jane', 'adminjane', 'Admin', '2025-12-16 12:39:58'),
(2, 'admin_mike', 'passadmin', 'Admin', '2025-12-16 12:39:58'),
(3, 'reg_alex', 'alex123', 'Registrar', '2025-12-16 12:39:58'),
(4, 'reg_luna', '123luna', 'Registrar', '2025-12-16 12:39:58'),
(5, 'carlosd', 'carlosd123', 'Student', '2025-12-16 12:39:58'),
(6, 'emilys', 'emily321', 'Student', '2025-12-16 12:39:58'),
(7, 'patrickk', 'pat12345', 'Student', '2025-12-16 12:39:58'),
(8, 'joshr', 'rjosh1234', 'Student', '2025-12-16 12:39:58'),
(9, 'nicst', 'nicst109', 'Student', '2025-12-16 12:39:58');


INSERT INTO `students` (`student_id`, `user_id`, `first_name`, `last_name`, `birthdate`, `gender`, `email`, `contact_number`, `address`, `date_registered`) VALUES
(1, 5, 'Carlos', 'Dela Cruz', '2004-05-12', 'Male', 'carlos.dc@gmail.com', '09173546798', 'Manila', '2025-12-16 12:40:06'),
(2, 6, 'Emily', 'Santos', '2004-08-21', 'Female', 'emily.s@gmail.com', '09175468971', 'Quezon City', '2025-12-16 12:40:06'),
(3, 7, 'Patrick', 'Kim', '2003-11-03', 'Male', 'patrick.k@gmail.com', '09125348670', 'Pasig', '2025-12-16 12:40:06'),
(4, 8, 'Joshua', 'Reyes', '2004-02-18', 'Male', 'joshua.r@gmail.com', '09185764803', 'Makati', '2025-12-16 12:40:06'),
(5, 9, 'Nicole', 'Tan', '2003-07-09', 'Female', 'nicole.t@gmail.com', '09123456789', 'Taguig', '2025-12-16 12:40:06');

INSERT INTO `courses` (`course_id`, `course_code`, `course_name`, `description`, `units`) VALUES
(1, 'BSIT', 'Information Technology', NULL, 150),
(2, 'BSBA', 'Business Administration', NULL, 140),
(3, 'BSHM', 'Hospitality Management', NULL, 145),
(4, 'BSCS', 'Computer Science', NULL, 150),
(5, 'BSCRIM', 'Criminology', NULL, 150);


INSERT INTO `subjects` (`subject_id`, `course_id`, `subject_code`, `subject_name`, `units`) VALUES
(1, 1, 'IT201', 'Object-Oriented Programming', 3),
(2, 1, 'IT202', 'Web Development', 3),
(3, 2, 'BA201', 'Human Resource Management', 3),
(4, 3, 'HM201', 'Hotel Operations', 3),
(5, 4, 'CS201', 'Operating Systems', 3),
(6, 4, 'CS202', 'Software Engineering', 3),
(7, 5, 'CR201', 'Criminal Procedure', 3);


INSERT INTO `academic_year` (`ay_id`, `year_range`, `semester`) VALUES
(1, '2024-2025', '1st'),
(2, '2024-2025', '2nd'),
(3, '2025-2026', '1st'),
(4, '2025-2026', '2nd'),
(5, '2026-2027', '1st');

INSERT INTO `sections` (`section_id`, `course_id`, `section_name`, `year_level`) VALUES
(1, 1, 'BSIT-1A', 1),
(2, 1, 'BSIT-1B', 1),
(3, 2, 'BSBA-2A', 2),
(4, 3, 'BSHM-1A', 1),
(5, 4, 'BSCS-2A', 2);

INSERT INTO `enrollments` (`enrollment_id`, `student_id`, `course_id`, `section_id`, `ay_id`, `enrollment_date`) VALUES
(1, 1, 1, NULL, 1, '2025-12-16 12:40:30'),
(2, 2, 1, NULL, 1, '2025-12-16 12:40:30'),
(3, 3, 2, NULL, 2, '2025-12-16 12:40:30'),
(4, 4, 3, NULL, 2, '2025-12-16 12:40:30'),
(5, 5, 4, NULL, 3, '2025-12-16 12:40:30');

INSERT INTO `enrolled_subjects` (`es_id`, `enrollment_id`, `subject_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 2, 2),
(5, 3, 3),
(6, 4, 4),
(7, 5, 5);

INSERT INTO `payments` (`payment_id`, `enrollment_id`, `amount`, `payment_date`, `payment_method`) VALUES
(1, 1, 2000.00, '2025-12-16 12:40:36', 'Cash'),
(2, 2, 2500.00, '2025-12-16 12:40:36', 'GCash'),
(3, 3, 2200.00, '2025-12-16 12:40:36', ''),
(4, 4, 3000.00, '2025-12-16 12:40:36', 'Cash'),
(5, 5, 2800.00, '2025-12-16 12:40:36', 'Card');

INSERT INTO `grades` (`grade_id`, `es_id`, `prelim_grade`, `midterm_grade`, `final_grade`, `remarks`) VALUES
(1, 1, 1.75, 1.50, 1.00, 'Passed'),
(2, 2, 2.00, 2.25, 1.00, 'Passed'),
(3, 3, 1.50, 1.25, 1.50, 'Passed'),
(4, 4, 2.25, 2.50, 2.25, 'Passed'),
(5, 5, 1.75, 1.75, 1.75, 'Passed'),
(6, 6, 2.50, 2.75, 2.50, 'Passed'),
(7, 7, 1.25, 1.00, 1.25, 'Passed');