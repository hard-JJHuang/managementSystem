package entity;

public class Teacher {
	private int id;
	private String username;
	private String password;
	private String name;
	private String clas;
	public int getId(){
		return id;
	}
	public void setId(int id){
		this.id=id;
	}
	public String getUsername(){
		return username;
	}
	public void setUsername(String username){
		this.username=username;
	}
	public String getPassword(){
		return password;
	}
	public void setPassword(String password){
		this.password=password;
	}
	public String getName(){
		return name;
	}
	public void setName(String name){
		this.name=name;
	}
	public String getClas(){
		return clas;
	}
	public void setClas(String clas){
		this.clas=clas;
	}

}
