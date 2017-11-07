package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbutil.Dbconn;
import entity.Student;
public class Insert_Student {
	 private Statement stat;
	 private ResultSet rs;
	 private int a;
	 Dbconn s=new Dbconn();
	 public Student insert(Integer id,Integer number,String name,Integer grade,String major,Integer clas,String position){
	    Student student1 = null; 
		Connection conn;
		try {
			conn = s.getConnection();
			String sql = "insert into student values (?,?,?,?,?,?,?)"; 
			PreparedStatement ps = conn.prepareStatement(sql);
			
	    	ps.setInt(1,id);
	  		ps.setInt(2,number);
	  		ps.setString(3,name);
	  		ps.setInt(4,grade);
	  		ps.setString(5,major);
	  		ps.setInt(6,clas);
	  		ps.setString(7,position);
	  		System.out.println("-------"+sql);
	  		a=ps.executeUpdate();
	  		if(a>0)
	  		{System.out.println("插入成功");}
	  		else
	  		{System.out.println("插入不成功");}
	  		ps.close();
	  		conn.close();
	  	  
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return student1;
 


}

}
