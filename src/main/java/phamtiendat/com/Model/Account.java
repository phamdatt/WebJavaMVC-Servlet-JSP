package phamtiendat.com.Model;

public class Account {

	public static final String GENGER_MALE = "M";
	public static final String GENGER_FEMALE = "F";
	private String userName;
	private int gender;
	private String password;
	private int id;
	private int is_user;
	private int is_admin;
	private String name;
	public Account() {}
	
	public Account(int id,String username,String name,String pass,int gender,int is_user,int is_admin) {
		this.id=id;
		this.gender=gender;
		this.password=pass;
		this.userName=username;
		this.is_user=is_user;
		this.is_admin=is_admin;
		this.name=name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public int getGender() {
		return gender;
	}

	public void setGender(int gender) {
		this.gender = gender;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getIs_user() {
		return is_user;
	}

	public void setIs_user(int is_user) {
		this.is_user = is_user;
	}

	public int getIs_admin() {
		return is_admin;
	}

	public void setIs_admin(int is_admin) {
		this.is_admin = is_admin;
	}
	
	
}
