package vn.codegym.jdbc_transaction.dao;

import vn.codegym.jdbc_transaction.model.Student;
import vn.codegym.jdbc_transaction.utils.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import static vn.codegym.jdbc_transaction.utils.DBConnection.getConnection;

public class StudentDAO {
    public List<Student> getStudents() {
        List<Student> students = new ArrayList<>();
        // try-with-resources to manage connection and statement
        try (Connection conn = getConnection();
             CallableStatement cstmt = conn.prepareCall("{call getStudent()}")) {
            ResultSet rs = cstmt.executeQuery();
            while (rs.next()) {
                Student student = new Student();
                student.setId(rs.getInt("id"));
                student.setName(rs.getString("name"));
                student.setEmail(rs.getString("email"));
                students.add(student);
            }
        } catch (SQLException e) {
            System.out.println("Co loi xay ra khi lay danh sach sinh vien");
            e.printStackTrace();
        }
        // logic call store procedure to get students
        return students;
    }

    public Student getStudentById(int id) {
        Student student = new Student();
        // try-with-resources to manage connection and statement
        try (Connection conn = getConnection();
             CallableStatement cstmt = conn.prepareCall("{call getStudentById(?)}")) {
            cstmt.setInt(1, id);
            ResultSet rs = cstmt.executeQuery();
            while (rs.next()) {
                student.setId(rs.getInt("id"));
                student.setName(rs.getString("name"));
                student.setEmail(rs.getString("email"));
            }
        } catch (SQLException e) {
            System.out.println("Co loi xay ra khi lay danh sach sinh vien");
            e.printStackTrace();
        }
        // logic call store procedure to get students
        return student;
    }

    public void deleteStudentById(int id) {
        try (Connection conn = getConnection();
             CallableStatement cstmt = conn.prepareCall("{call deleteStudentById(?)}")) {
            cstmt.setInt(1, id);
            int rowsAffected = cstmt.executeUpdate();
            if (rowsAffected == 0) {
                System.out.println("Không tìm thấy sinh viên với ID = " + id);
            } else {
                System.out.println("Đã xóa " + rowsAffected + " sinh viên.");
            }

        } catch (SQLException e) {
            System.out.println("Có lỗi xảy ra khi xóa sinh viên ID = " + id);
            e.printStackTrace();
        }
    }

    public boolean updateStudent(Student student) {
        String sql = "UPDATE students SET name = ?, email = ? WHERE id = ?";
        try (Connection connection = getConnection();
             PreparedStatement ps = connection.prepareStatement(sql)) {

            ps.setString(1, student.getName());
            ps.setString(2, student.getEmail());
            ps.setInt(3, student.getId());

            return ps.executeUpdate() > 0;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    // delete student by id
    // update student by id
}
