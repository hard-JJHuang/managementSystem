package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import dbutil.Dbconn;
import entity.Student;

public class Update_class {
	private Statement stat;
	private ResultSet rs;
	Dbconn s = new Dbconn();
	int a;
	public Student load(String latitude,String longitude,Integer clas){
		Student student = null;
		String sql = "update student set latitude=?,longitude=?,where clas=? ";
		try{
			Connection conn = s.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, latitude);
			ps.setString(2, longitude);
			ps.setInt(3, clas);
	        a=ps.executeUpdate();
		  		if(a>0)
		  		{System.out.println("更新成功");}
		  		else
		  		{System.out.println("更新不成功");}
		  		
		  		ps.close();
		  		conn.close();
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return student;
	}

}
