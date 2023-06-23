package adminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.StylistDetails;
import dbConn.DbConnect;
import entity.Stylist;

@WebServlet("/addStylist")
public class AddStylist extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String stylistName = req.getParameter("stylistName");
		String phoneNum = req.getParameter("phoneNum");
		
		Stylist s = new Stylist(stylistName,phoneNum);

		StylistDetails d = new StylistDetails(DbConnect.getConn());
		
		HttpSession session = req.getSession();
		
		boolean f = d.addStylist(s);

		if (f) {
			session.setAttribute("sucMsg", "Stylist Added");
			resp.sendRedirect("admin/stylist.jsp");
		} else {
			session.setAttribute("errorMsg", "something is not correct");
			resp.sendRedirect("admin/index.jsp");
		}

	}

}