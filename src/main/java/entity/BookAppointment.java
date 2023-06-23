package entity;

public class BookAppointment {
 	private int id;
 	private String fullName;
 	private String appoinDate;
 	private String email;
 	private String phNo;
 	private String stylist;
 	private String status;

	public BookAppointment() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BookAppointment(String fullName, String email,
			String phNo, String stylist, String appoinDate, String status) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.phNo = phNo;
		this.stylist = stylist;
		this.appoinDate = appoinDate;
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public String getAppoinDate() {
		return appoinDate;
	}

	public void setAppoinDate(String appoinDate) {
		this.appoinDate = appoinDate;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhNo() {
		return phNo;
	}

	public void setPhNo(String phNo) {
		this.phNo = phNo;
	}
	
	public String getStylist() {
		return stylist;
	}
	
	public void setStylist(String stylist) {
		this.stylist = stylist;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
}
