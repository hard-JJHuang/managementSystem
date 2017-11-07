package model;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import dbutil.Dbconn;
import entity.Message;



public class UpdataNews {
	private Statement stat;
	 private ResultSet rs;
	 private int a;
	 Dbconn s=new Dbconn();
//定义返回查询处理后获取的对象集合并返回
	 public Message load(String if_read,String id) {
			Message message = null; 
			
			String sql = "update news set if_read=concat(?,if_read) where id=?";
	     try {
	 		Connection conn=s.getConnection();
	     	PreparedStatement ps = conn.prepareStatement(sql);//给sql赋值
	     	ps.setString(1,if_read);
	     	ps.setString(2,id);
	  
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
	 return message;
	 
	} 

 
 
} 