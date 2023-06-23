package entity;

public class Stylist {
	private int id;
	private String stylistName;
	private String phoneNum;

	public Stylist() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Stylist(String stylistName, String phoneNum) {
		super();
		this.stylistName = stylistName;
		this.phoneNum = phoneNum;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStylistName() {
		return stylistName;
	}

	public void setStylistName(String stylistName) {
		this.stylistName = stylistName;
	}
	
	public String getPhoneNumber() {
		return phoneNum;
	}

	public void setPhoneNumber(String phoneNum) {
		this.phoneNum = phoneNum;
	}

}