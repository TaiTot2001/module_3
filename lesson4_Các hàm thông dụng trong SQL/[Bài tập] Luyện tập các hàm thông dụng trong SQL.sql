USE quanlysinhvien;

-- Hiển thị tất cả các thông tin môn học (bảng subject) có credit lớn nhất.
SELECT 
    *
FROM
    subject
WHERE
    credit = (SELECT 
            MAX(credit)
        FROM
            subject);
            
-- Hiển thị các thông tin môn học có điểm thi lớn nhất.
SELECT 
    s.*, m.mark
FROM
    subject s
        JOIN
    mark m ON m.subid = s.subid
WHERE
    m.mark = (SELECT 
            MAX(mark)
        FROM
            mark);

-- Hiển thị các thông tin sinh viên và điểm trung bình của mỗi sinh viên, 
-- xếp hạng theo thứ tự điểm giảm dần
SELECT 
    s.*, AVG(m.mark) AVG_mark
FROM
    student s
        LEFT JOIN
    mark m ON s.studentid = m.studentid
GROUP BY studentid
ORDER BY AVG_mark DESC;