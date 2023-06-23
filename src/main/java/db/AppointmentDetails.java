package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.BookAppointment;

public class AppointmentDetails {

	private Connection conn;

	public AppointmentDetails(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addAppointment(BookAppointment ap) {
		boolean f = false;

		try {

			String sql = "insert into appointment(fullname,email,phno,stylist,appoint_date,status) values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, ap.getFullName());
			ps.setString(2, ap.getEmail());
			ps.setString(3, ap.getPhNo());
			ps.setString(4, ap.getStylist());
			ps.setString(5, ap.getAppoinDate());
			ps.setString(6, ap.getStatus());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	public int countAppointment() {
		int i = 0;
		try {
			String sql = "select * from appointment";
			PreparedStatement ps = conn.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				i++;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return i;
	}
	
	public List<BookAppointment> getAllAppointment() {
		List<BookAppointment> list = new ArrayList<BookAppointment>();
		BookAppointment ap = null;

		try {

			String sql = "select * from appointment order by id asc";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				ap = new BookAppointment();
				ap.setId(rs.getInt(1));
				ap.setFullName(rs.getString(2));
				ap.setEmail(rs.getString(3));
				ap.setPhNo(rs.getString(4));
				ap.setStylist(rs.getString(5));
				ap.setAppoinDate(rs.getString(6));
				ap.setStatus(rs.getString(7));
				list.add(ap);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}

}
         
