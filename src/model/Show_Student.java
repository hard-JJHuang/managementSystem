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

public class Show_Student {
	private Statement stat;
	 private ResultSet rs;

	 Dbconn s=new Dbconn();
//定义返回查询处理后获取的对象集合并返回
	 public Student load(Integer id) {
			Student student = null; 
			System.out.print("asdfas");
			String sql = "select * from student where id = ? ";
	     try {
	 		Connection conn=s.getConnection();
	     	PreparedStatement ps = conn.prepareStatement(sql);
	     	ps.setInt(1, id.intValue());
	         rs = ps.executeQuery();
	         if(rs.next()){
	        student=new Student();
		      	   student.setId(rs.getInt("id"));
		      	   student.setNumber(rs.getInt("number"));
		      	   student.setGrade(rs.getInt("grade"));
		      	   student.setClas(rs.getInt("clas"));
		      	   student.setName(rs.getString("name"));
		      	   student.setMajor(rs.getString("major"));
		      	   student.setPosition(rs.getString("position"));
		      	   //student.setLatitude(rs.getDouble("latitude"));
		      	   //student.setLongitude(rs.getDouble("longitude"));
	         }
	         s.closeALL(conn, ps, rs);  
	     } catch (Exception e) {
	         e.printStackTrace();
	     }
	 return student;
	 
	} 

}
