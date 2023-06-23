package UserServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.UserDetails;
import dbConn.DbConnect;
import entity.user;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {

			String fullName = req.getParameter("fullname");
			String email = req.getParameter("email");
			String password = req.getParameter("password");

			user u = new user(fullName, email, password);

			UserDetails d = new UserDetails(DbConnect.getConn());

			HttpSession session = req.getSession();

			boolean f = d.userRegister(u);

			if (f) {

				session.setAttribute("sucMsg", "Registered Successfully");
				resp.sendRedirect("userlogin.jsp");

			} else {
				session.setAttribute("errorMsg", "Something went wrong");
				resp.sendRedirect("signup.jsp");
			}
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
