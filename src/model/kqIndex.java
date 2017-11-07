package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dbutil.Dbconn;
import entity.Time;


public class kqIndex {
	private Statement stat;
	private ResultSet rs;
	
	Dbconn s = new Dbconn();
	
	public Time load (String username) {
		Time time = null;
		String sql = "select * from time where username = ?";
		try {
			Connection  conn = s.getConnection();
			PreparedStatement ps = conn.prepareStatement(sql);
			rs = ps.executeQuery();
			if(rs.next()) {
				time = new Time();
				time.setUsername(rs.getString("username"));;
			}
			s.closeALL(conn, ps, rs);
		}catch (Exception e) {
			e.printStackTrace();
		}
		return time;
	}
	
}
