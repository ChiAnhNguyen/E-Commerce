package Presentation.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Domain.Model.Custommer;
import Domain.Model.Bussiness.IcustommerBuss;
import Domain.Model.Bussiness.ImplCustommerBuss;
import Persistence.DAO.ICustommerDAO;
@WebServlet(urlPatterns = {"/login","/dang-nhap"})
public class LoginController extends HttpServlet {
	
	private static final long serialVersionUID = -1867967919058603939L;
	private IcustommerBuss custommerBuss = new ImplCustommerBuss();
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		RequestDispatcher rq = req.getRequestDispatcher("./View/login.jsp");
		rq.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	    resp.setContentType("text/html; charset=UTF-8");
	    
	     try {
	    	 String email = req.getParameter("email");
		     String password = req.getParameter("password");
		     Custommer custommer = custommerBuss.getCustommerbyID(email,password);
		     HttpSession session = req.getSession(true);
		   	 session.setAttribute("acc", custommer);
		     if(custommer== null) {
		    	 resp.sendRedirect("login");
		    	 
		     }else {
		    	
		    	 resp.sendRedirect("home");
		     }
		} catch (Exception e) {
		e.printStackTrace();
		}
	     
	}
	
}
