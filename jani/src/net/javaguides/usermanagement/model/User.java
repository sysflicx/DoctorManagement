package net.javaguides.usermanagement.model;


public class User {
	protected int id;
	protected String name;
	protected String dn;
	protected String email;
	protected String a1;
	protected String a2;
	protected String a3;
	
	public User() {
	}
	
	public User(String name, String dn, String email, String a1, String a2, String a3) {
		super();
		this.name = name;
		this.dn = dn;
		this.email = email;
		this.a1 = a1;
		this.a2 = a2;
		this.a3 = a3;
	}

	public User(int id, String name, String dn, String email, String a1, String a2, String a3) {
		super();
		this.id = id;
		this.name = name;
		this.dn = dn;
		this.email = email;
		this.a1 = a1;
		this.a2 = a2;
		this.a3 = a3;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getdn() {
		return dn;
	}
	public void setdn(String dn) {
		this.dn = dn;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String geta1() {
		return a1;
	}
	public void seta1(String a1) {
		this.a1 = a1;
	}
	public String geta2() {
		return a2;
	}
	public void seta2(String a2) {
		this.a2 = a2;
	}
	public String geta3() {
		return a3;
	}
	public void seta3(String a3) {
		this.a3 = a3;
	}
}
