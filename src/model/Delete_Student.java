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

public class Delete_Student {
	private Statement stat;
	 private ResultSet rs;
	 private int a;
	 Dbconn s=new Dbconn();
//定义返回查询处理后获取的对象集合并返回
	 public Student load(Integer id) {
			Student student = null; 
			
			String sql = "delete from student where id = ? ";
	     try {
	 		Connection conn=s.getConnection();
	     	PreparedStatement ps = conn.prepareStatement(sql);//给sql赋值
	     	ps.setInt(1, id.intValue());
	        
	     
	         
	         a=ps.executeUpdate();
		  		if(a>0)
		  		{System.out.println("删除成功");}
		  		else
		  		{System.out.println("删不除成功");}
		  		ps.close();
		  		conn.close();
	            
	     } catch (Exception e) {
	         e.printStackTrace();
	     }
	 return student;
	 
	} 

}
