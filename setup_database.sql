-- Drop tables if they exist (for clean setup)
DROP TABLE IF EXISTS `borrow`;
DROP TABLE IF EXISTS `books`;
DROP TABLE IF EXISTS `student`;

-- Create student table
CREATE TABLE `student` (
    `student_id` INT AUTO_INCREMENT PRIMARY KEY,
    `student_first_name` VARCHAR(50) NOT NULL,
    `student_last_name` VARCHAR(50) NOT NULL,
    `student_course` VARCHAR(50) NOT NULL,
    `student_created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Create books table
CREATE TABLE `books` (
    `book_id` INT AUTO_INCREMENT PRIMARY KEY,
    `book_title` VARCHAR(150) NOT NULL,
    `book_author` VARCHAR(100) NOT NULL,
    `book_category` VARCHAR(50) NOT NULL,
    `book_created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Create borrow table
CREATE TABLE `borrow` (
    `borrow_id` INT AUTO_INCREMENT PRIMARY KEY,
    `student_id` INT NOT NULL,
    `book_id` INT NOT NULL,
    `borrow_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `borrow_return_date` TIMESTAMP NULL DEFAULT NULL,
    CONSTRAINT `fk_borrow_student` FOREIGN KEY (`student_id`) REFERENCES `student`(`student_id`) ON UPDATE CASCADE ON DELETE RESTRICT,
    CONSTRAINT `fk_borrow_book` FOREIGN KEY (`book_id`) REFERENCES `books`(`book_id`) ON UPDATE CASCADE ON DELETE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Insert sample students
INSERT INTO `student` (`student_first_name`, `student_last_name`, `student_course`) VALUES
('NARUTO', 'UZUMAKI', 'BSIT'),
('SASUKE', 'UCHIHA', 'BSIT'),
('SAKURA', 'HARUNO', 'BSBA'),
('KAKASHI', 'HATAKE', 'ITE');

-- Insert sample books
INSERT INTO `books` (`book_title`, `book_author`, `book_category`) VALUES
('The Hobbit', 'J.R.R. Tolkien', 'Fantasy'),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 'Fantasy'),
('The Hunger Games', 'Suzanne Collins', 'Dystopian'),
('The Alchemist', 'Paulo Coelho', 'Adventure'),
('The Little Prince', 'Antoine de Saint-Exupery', 'Fiction');

-- Insert sample borrows
INSERT INTO `borrow` (`student_id`, `book_id`) VALUES
(1, 2),
(2, 1),
(3, 3);