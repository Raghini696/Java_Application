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

@WebServlet("/userLogin")
public class UserLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String email = req.getParameter("email");
		String password = req.getParameter("password");

		HttpSession session = req.getSession();

		UserDetails d = new UserDetails(DbConnect.getConn());
		user user = d.login(email, password);
        System.out.println(user);
		if (user != null) {
			session.setAttribute("userObj", user);
			resp.sendRedirect("userdashboard.jsp");
		} else {
			session.setAttribute("errorMsg", "invalid email & password");
			resp.sendRedirect("userlogin.jsp");
		}

	}

}
