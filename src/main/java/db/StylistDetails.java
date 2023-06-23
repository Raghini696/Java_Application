package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import entity.Stylist;

public class StylistDetails {

	private Connection conn;

	public StylistDetails(Connection conn) {
		super();
		this.conn = conn;
	}

	public boolean addStylist(Stylist s) {
		boolean f = false;
		try {
			String sql = "insert into stylist(stylist_name,phone) values(?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, s.getStylistName());
			ps.setString(2, s.getPhoneNumber());

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}

	public List<Stylist> getAllStylist() {
		List<Stylist> list = new ArrayList<Stylist>();
		Stylist s = null;

		try {
			String sql = "select * from stylist";
			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				s = new Stylist();
				s.setId(rs.getInt(1));
				s.setStylistName(rs.getString(2));
				s.setPhoneNumber(rs.getString(3));
				list.add(s);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;
	}
	
	public boolean deleteStylist(int id) {
		boolean f = false;
		try {
			String sql = "delete from stylist where id=?";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);

			int i = ps.executeUpdate();
			if (i == 1) {
				f = true;
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return f;
	}
	
	public int countStylist() {
		int i = 0;
		try {
			String sql = "select * from stylist";
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


}