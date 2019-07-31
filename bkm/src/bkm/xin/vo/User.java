package bkm.xin.vo;

public class User {
	private int id;
	private String name;
	private String pass;
	private String status;
	public User(){}
	public User(int id,String name,String pass,String status){
		this.id=id;
		this.name=name;
		this.pass = pass;
		this.status=status;
	}
	public User(String name,String pass,String status,int id){

		this.name=name;
		this.pass = pass;
		this.status=status;
		this.id = id;
	}
	public User(String name,String pass,String status){

		this.name=name;
		this.pass = pass;
		this.status=status;
	}
	public User(String name,String pass){

		this.name=name;
		this.pass = pass;

	}
	public User(String name,String pass,int id){

		this.name=name;
		this.pass = pass;
		this.id=id;

	}
	public User(int id,String name,String pass){

		this.name=name;
		this.pass = pass;
		this.id=id;

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
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
