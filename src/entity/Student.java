package entity;

public class Student {

	private int id;
	private int number ;
	private String name;
	private int grade;
	private String major;
	private int clas;
	private String position;
//	private double latitude;//Î³¶È
//	private double longitude;//¾­¶È
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public int getClas() {
		return clas;
	}
	public void setClas(int clas) {
		this.clas = clas;
	}
	public String getName() {
		  return name;
	}
	public void setName(String name) {
		  this.name = name;
	}
	public String getMajor() {
		   return major;
	}
	public void setMajor( String major) {
		   this.major = major;
	}

	public String getPosition() {
			  return position;
	}
	public void setPosition( String position) {
			  this.position = position;
	}
//	public double getLatitude() {
//		  return latitude;
//    }
//    public void setLatitude( double latitude) {
//		  this.latitude = latitude;
//    }
//    public double getLongitude(){
//    	return longitude;
//    }
//    public void setLongitude(double longitude){
//    	this.longitude = longitude;
//    }
//	

		

	
}
