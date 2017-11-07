package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbutil.Dbconn;
import entity.Message;

public class Insert_Message {
	private Statement stat;
	private ResultSet rs;
	private int a;
	Dbconn s = new Dbconn();
	public Message insert(Integer id,String title,String content,String type,String date,String teacherid){
		Message message=null;
		Connection conn;
		try{
			conn=s.getConnection();
			String sql="insert into message values(?,?,?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setInt(1, id);
			ps.setString(2, title);
			ps.setString(3, content);
			ps.setString(4, type);
			ps.setString(5, date);
			ps.setString(6, teacherid);
			a=ps.executeUpdate();
			if(a>0){
				System.out.print("插入成功");
			}else{
				System.out.print("插入不成功");
			}
			ps.close();
			conn.close();
		}catch(SQLException e){
			e.printStackTrace();
		}
		return message;
	}
	

}
