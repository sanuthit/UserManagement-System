package Login;

public class User {
	
	private int id;
	private String name;
	private String email;
	private String phone;
	private String uname;
	private String psw;
	
	
	public User(int id, String name, String email, String phone, String uname, String psw) {
		
		this.id = id;
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.uname = uname;
		this.psw = psw;
	}


	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getEmail() {
		return email;
	}

	public String getPhone() {
		return phone;
	}

	public String getUname() {
		return uname;
	}

	public String getPsw() {
		return psw;
	}


	
	
	
}
