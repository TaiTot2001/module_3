use quanlysinhvien;

SELECT 
    address, COUNT(studentid) AS 'Số lượng học viên'
FROM
    student
GROUP BY address;

SELECT 
    s.StudentID, s.StudentName, AVG(m.mark)
FROM
    student s
        JOIN
    mark m ON m.StudentID = s.StudentID
GROUP BY s.studentid , s.studentname;

SELECT 
    s.studentid,
    s.studentname,
    AVG(m.Mark) AS 'điểm trung bình các môn'
FROM
    student AS s
        JOIN
    mark AS m ON s.studentid = m.studentid
GROUP BY s.studentid , s.studentname
HAVING AVG(m.mark) > 15;

SELECT 
    s.studentid,
    s.studentname,
    AVG(m.mark) AS 'điểm trung bình max'
FROM
    student s
        JOIN
    mark m ON s.studentid = m.studentid
GROUP BY s.studentid
HAVING AVG(mark) >= ALL (SELECT 
        AVG(mark)
    FROM
        mark
    GROUP BY mark.studentid);
