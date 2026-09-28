create table students (
    student_id int auto_increment primary key not null,
    student_first_name varchar(255) not null,
    student_last_name varchar(255) not null,
    student_course varchar(255) not null
);

create table books (
    book_id int auto_increment primary key not null,
    book_title varchar(100) not null,
    book_author varchar(100) not null,
    book_category varchar(50) not null,
    book_created_at timestamp not null default current_timestamp
);

create table borrow (
    borrow_id int auto_increment primary key not null,
    student_id int not null,
    book_id int not null, 
    borrow_date timestamp not null default current_timestamp,
    borrow_return_date timestamp null default null,
    constraint fk_borrow_student foreign key(student_id) references students(student_id),
    constraint fk_borrow_book foreign key(book_id) references books(book_id)
);