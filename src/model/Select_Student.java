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

public class Select_Student {
	private Statement stat;
	 private ResultSet rs;//ResultSet ��java��ִ��select�󣬷��صĽ�����ࡣ
	 private int a;
	 Dbconn s=new Dbconn();
	//���巵�ز�ѯ������ȡ�Ķ��󼯺ϲ�����

	 public List<Student> userSelect(){
	  List<Student> students=new ArrayList<Student>();
	  try { 
	   Connection conn=s.getConnection();
	   String sql="select * from student";
	   stat=conn.createStatement();//ͨ��connection���ݿ����Ӷ��� ����һ��statement�������ݿ��������
	   rs = stat.executeQuery(sql);
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
