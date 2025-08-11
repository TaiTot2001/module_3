use jdbc_db;

delimiter //
create procedure getStudentById(in idStudent int)
begin
     select*from students where id = idStudent;
end //
delimiter ;

call getStudent;
call getStudentById(3);
call 

DELIMITER //
CREATE PROCEDURE deleteStudentById(IN idStudent INT)
BEGIN
    DELETE FROM students WHERE id = idStudent;
END //
DELIMITER ;

insert into students (name, email) values
 ('Hung', 'hung@gmail.com'),
 ('Hai', 'hai@gmail.com');
 
 insert into students (name, email) values
 ('Huong', 'huong@gmail.com');
 update students set id =1 where id =15 ;
 update students set id =2 where id =16 ;
 
 select * from students;