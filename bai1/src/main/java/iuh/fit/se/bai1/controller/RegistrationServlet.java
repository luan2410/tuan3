package iuh.fit.se.bai1.controller;

import iuh.fit.se.bai1.model.Student;import java.io.IOException;
import java.io.IOException;
// THÀNH CÁC DÒNG NÀY:
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/registration-form")
public class RegistrationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Đảm bảo request được xử lý bằng UTF-8
        request.setCharacterEncoding("UTF-8");

        // 1. Lấy dữ liệu từ request
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dobDay = request.getParameter("dobDay");
        String dobMonth = request.getParameter("dobMonth");
        String dobYear = request.getParameter("dobYear");
        String email = request.getParameter("email");
        String mobileNumber = request.getParameter("mobileNumber");
        String gender = request.getParameter("gender");
        String address = request.getParameter("address");
        String[] hobbies = request.getParameterValues("hobbies");
        String course = request.getParameter("course");

        // 2. Tạo một đối tượng Student (JavaBean)
        Student student = new Student();

        // 3. Dùng jsp:setProperty để set các thuộc tính cho bean
        student.setFirstName(firstName);
        student.setLastName(lastName);
        student.setDobDay(dobDay);
        student.setDobMonth(dobMonth);
        student.setDobYear(dobYear);
        student.setEmail(email);
        student.setMobileNumber(mobileNumber);
        student.setGender(gender);
        student.setAddress(address);
        student.setHobbies(hobbies);
        student.setCourse(course);

        // 4. Lưu bean vào request scope để JSP có thể truy cập
        request.setAttribute("student", student);

        // 5. Dùng jsp:forward để chuyển tiếp tới trang result-form.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("result-form.jsp");
        dispatcher.forward(request, response);
    }
}
