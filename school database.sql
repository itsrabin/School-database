-- Creating the students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,             
    first_name VARCHAR(50) NOT NULL,          
    last_name VARCHAR(50) NOT NULL,            
    sex CHAR(1) CHECK (sex IN ('M', 'F')) NOT NULL, 
    date_of_birth DATE                         
);

-- Creating the courses table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,              
    course_name VARCHAR(100) NOT NULL,         
    course_description TEXT                  
);

-- Creating the enrolments table
CREATE TABLE enrolments (
    enrolment_id SERIAL PRIMARY KEY,           
    student_id INT REFERENCES students(student_id), 
    course_id INT REFERENCES courses(course_id),    
    enrolment_date DATE NOT NULL,              
    expected_completion_date DATE              
);
