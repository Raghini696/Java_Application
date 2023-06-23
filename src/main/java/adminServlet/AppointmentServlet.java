package adminServlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.AppointmentDetails;
import dbConn.DbConnect;
import entity.BookAppointment;

@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String fullname = req.getParameter("fullname");
		String email = req.getParameter("email");
		String phno = req.getParameter("phno");
		String stylist = req.getParameter("stylist");
		String appoint_date = req.getParameter("appoint_date");
		String status = req.getParameter("status");

		BookAppointment ap = new BookAppointment(fullname, email, phno, stylist, appoint_date, "Pending");

		AppointmentDetails d = new AppointmentDetails(DbConnect.getConn());
		HttpSession session = req.getSession();

		if (d.addAppointment(ap)) {
			session.setAttribute("sucMsg", "Appointment request is sent, admin checks the availability and sends the Appointment status email.");
			resp.sendRedirect("bookappointment.jsp");
		} else {
			session.setAttribute("errorMsg", "Something is wrong");
			resp.sendRedirect("bookappointment.jsp");
		}

	}

}