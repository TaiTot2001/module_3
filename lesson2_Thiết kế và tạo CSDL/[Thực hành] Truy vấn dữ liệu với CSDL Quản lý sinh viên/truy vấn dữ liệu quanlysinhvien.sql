use quanlysinhvien;

SELECT 
    *
FROM
    student;
    
SELECT 
    *
FROM
    student
WHERE
    status = TRUE;

SELECT 
    *
FROM
    subject
WHERE
    credit < 10;
    
SELECT 
    s.studentID, s.studentname, c.classid, c.ClassName
FROM
    student AS s
        JOIN
    class AS c ON c.classid = s.classid;

select *from subject;
select *from mark;

SELECT 
    s.studentid, s.studentname, sj.subname, m.Mark
FROM
    student AS s
        JOIN
    mark AS m ON m.studentid = s.studentid
        JOIN
    subject AS sj ON sj.subid = m.subid
WHERE
    sj.subname = 'cf';
    

