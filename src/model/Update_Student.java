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

public class Update_Student {

	private Statement stat;
	 private ResultSet rs;
	 private int a;
	 Dbconn s=new Dbconn();
//定义返回查询处理后获取的对象集合并返回
	 public Student load(Integer number,String name,Integer grade,String major,Integer clas,String position,Integer id) {
			Student student = null; 
			
			String sql = "update student set number=?,name=?,grade=?,major=?,clas=?,position=? where id=?";
	     try {
	 		Connection conn=s.getConnection();
	     	PreparedStatement ps = conn.prepareStatement(sql);//给sql赋值
	     	ps.setInt(1,number);
	  		ps.setString(2,name);
	  		ps.setInt(3,grade);
	  		ps.setString(4,major);
	  		ps.setInt(5,clas);
	  		ps.setString(6,position);
	  		ps.setInt(7,id);
	         
	         a=ps.executeUpdate();
		  		if(a>0)
		  		{System.out.println("更新成功");}
		  		else
		  		{System.out.println("更新不成功");}
		  		ps.close();
		  		conn.close();
	            
	     } catch (Exception e) {
	         e.printStackTrace();
	     }
	 return student;
	 
	} 
}
