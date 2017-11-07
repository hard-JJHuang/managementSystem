package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dbutil.Dbconn;
import entity.Message;

public class Delete_Message {
	private Statement stat;
	private ResultSet rs;
	private int a;
	Dbconn s = new Dbconn();
	public Message delete(Integer id){
		Message message = null;
		Connection conn;
		try{
			conn = s.getConnection();
			String sql="delete from teacher where id=?";
			PreparedStatement ps =conn.prepareStatement(sql);
			ps.setInt(1, id.intValue());
			a=ps.executeUpdate();
			if(a>0){
				System.out.print("删除成功");
			}else{
				System.out.print("删除不成功");
			}
					
		}catch(SQLException e){
			e.printStackTrace();
		}
		return message;
	}

}
