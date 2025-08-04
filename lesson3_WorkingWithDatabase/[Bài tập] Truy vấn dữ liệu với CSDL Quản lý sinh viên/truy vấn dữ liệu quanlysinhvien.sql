use quanlysinhvien ;
-- Hiển thị tất cả sinh viên có tên bắt đầu bảng ký tự 'h'
SELECT 
    *
FROM
    student
WHERE
    StudentName LIKE 'h%';
-- hiển thị thông tin môn học có thời gian bắt đầu vào tháng 12
select * from class where StartDate like '%12%';

-- Hiển thị tất cả các thông tin môn học có credit trong khoảng 3-5
SELECT 
    *
FROM
    subject
WHERE
    credit >= 3 AND credit <= 5;

-- Thay đổi mã lớp của sinh viên có tên 'hung' là 2
SELECT 
    *
FROM
    student;
SET SQL_SAFE_UPDATES = 0;
UPDATE student 
SET 
    classid = 2
WHERE
    studentname = 'hung';

-- Hiển thị các thông tin: StudentName, SubName, Mark. 
-- Dữ liệu sắp xếp theo điểm thi (mark) giảm dần. nếu trùng sắp theo tên tăng dần.
SELECT 
    s.studentname, sj.subname, m.Mark
FROM
    student AS s
        JOIN
    mark AS m ON s.studentid = m.studentid
        JOIN
    subject AS sj ON sj.subid = m.subid
ORDER BY Mark DESC ,s.studentname;