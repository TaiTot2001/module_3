package vn.codegym.jdbc_transaction.controller;

import vn.codegym.jdbc_transaction.dao.StudentDAO;
import vn.codegym.jdbc_transaction.model.Student;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "StudentController", urlPatterns = "/student")
public class StudentController extends HttpServlet {
    private StudentDAO studentDAO;

    /**
     * @throws ServletException
     */
    @Override
    public void init() throws ServletException {
        studentDAO = new StudentDAO();
    }

    /**
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher;
        String action = req.getParameter("action");
        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "detail":
                int id = Integer.parseInt(req.getParameter("id"));
                req.setAttribute("student", studentDAO.getStudentById(id));
                dispatcher = req.getRequestDispatcher("students/detail.jsp");
                break;
            case "delete":
                int idDelete = Integer.parseInt(req.getParameter("id"));
                req.setAttribute("student", studentDAO.getStudentById(idDelete));
                dispatcher = req.getRequestDispatcher("students/delete.jsp");
                break;
            case "update":
                int idUpdate = Integer.parseInt(req.getParameter("id"));
                req.setAttribute("student", studentDAO.getStudentById(idUpdate));
                dispatcher = req.getRequestDispatcher("students/update.jsp");
                break;
            default:
                req.setAttribute("students", studentDAO.getStudents());
                dispatcher = req.getRequestDispatcher("students/list.jsp");

        }
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String action = req.getParameter("action");
        if (action == null) {
            action = "list";
        }

        switch (action) {
            case "delete":
                int id = Integer.parseInt(req.getParameter("id"));
                studentDAO.deleteStudentById(id);
                resp.sendRedirect("/student");
                break;
            case "update":
                int idUpdate = Integer.parseInt(req.getParameter("id"));
                String name = req.getParameter("name");
                String email = req.getParameter("email");
                Student student = new Student(idUpdate, name, email);
                studentDAO.updateStudent(student);
                resp.sendRedirect("/student");
                break;
        }
    }
}
