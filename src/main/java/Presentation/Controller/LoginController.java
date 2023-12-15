package Presentation.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/login","/dang-nhap"})
public class LoginController extends HttpServlet {
	
	private static final long serialVersionUID = -1867967919058603939L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rq = req.getRequestDispatcher("View/login.jsp");
		rq.forward(req, resp);
	}
}
