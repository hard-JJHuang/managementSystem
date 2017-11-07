package model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import dbutil.Dbconn;
import entity.Time;

public class insertHour {
	private Statement stat;
	private ResultSet rs;
	private int a;
	Dbconn s=new Dbconn();
	public Time insert(String hour,String username,String meeting,String gps) {
		Time time = null;
		Connection conn;
		try {
			conn = s.getConnection();
			String sql = "insert into time (hour,username,meeting,gps) values(?,?,?,?)";
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1,hour);
			ps.setString(2,username);
			ps.setString(3,meeting);
			ps.setString(4,gps);
			System.out.println("-------"+sql);
	  		a=ps.executeUpdate();
	  		if(a>0)
	  		{System.out.println("插入成功");}
	  		else
	  		{System.out.println("插入不成功");}
	  		ps.close();
	  		conn.close();
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return time;
	}
}
