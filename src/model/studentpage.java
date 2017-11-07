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

public class studentpage {
 private Statement stat;
 private ResultSet rs;
 private PreparedStatement ps;
 private int a;
 Dbconn s=new Dbconn();
//定义返回查询处理后获取的对象集合并返回
 public  int couts(){
	 String sql="select count(*) from student";
	 int count=0;
	 try{
		 
		  Connection conn=s.getConnection();
		  ps = conn.prepareStatement(sql);
		   
		   rs = ps.executeQuery();
	  
	 while(rs.next()){
		 count=rs.getInt(1);
		  
	   
		   	
	   } 
	    s.closeALL(conn, stat, rs);
	  } catch (SQLException e) {
	   e.printStackTrace();
	  }
	  return count; 
	  
 }
 
 public List<Student> Liststudents(int startRow,int size){
  List<Student> students=new ArrayList<Student>();
  String sql="                                                                                                                                                                                                                  select * from student limit ?,?";
  try { 
   Connection conn=s.getConnection();
   ps = conn.prepareStatement(sql);
   ps.setInt(1, startRow);
   ps.setInt(2,size);
   rs = ps.executeQuery();
   Student student;
   while(rs.next()){
	   student=new Student();
	   student.setId(rs.getInt("id"));
	   student.setNumber(rs.getInt("number"));
	   student.setGrade(rs.getInt("grade"));
	   student.setClas(rs.getInt("clas"));
	   student.setName(rs.getString("name"));
	   student.setMajor(rs.getString("major"));
	   student.setPosition(rs.getString("position"));
	  
   
	   	students.add(student);
	   	

   } 
    s.closeALL(conn, stat, rs);
  } catch (SQLException e) {
   e.printStackTrace();
  }
  return students; 
 }
 
 
} 