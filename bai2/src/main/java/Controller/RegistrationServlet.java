package Controller;


import Model.User;
import Model.UserDAO;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1. Nhận dữ liệu từ form
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        // ... (Nhận các trường khác)

        // 2. Tạo đối tượng User (Model)
        User newUser = new User();
        newUser.setFirstName(firstName);
        newUser.setLastName(lastName);
        newUser.setEmail(email);
        newUser.setPassword(password); // Lưu ý: Trong thực tế, cần mã hóa password

        // 3. Lưu User vào "cơ sở dữ liệu" (Model - UserDAO)
        UserDAO.getInstance().addUser(newUser);

        // 4. Lấy danh sách tài khoản để hiển thị
        request.setAttribute("users", UserDAO.getInstance().getAllUsers());

        // 5. Chuyển hướng đến trang danh sách (View)
        RequestDispatcher dispatcher = request.getRequestDispatcher("/userList.jsp");
        dispatcher.forward(request, response);
    }
}