package Controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/language")
public class LanguageControllerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String language = request.getParameter("lang");
        if (language != null && !language.isEmpty()) {
            // Lưu ngôn ngữ đã chọn vào session
            request.getSession().setAttribute("lang", language);
        }

        // Chuyển hướng về lại trang đăng nhập
        response.sendRedirect("index.jsp");
    }
}