package dbutil;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Dbconn {
	private Connection conn;
	public Connection getConnection()throws SQLException{
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/teachers?useUnicode=true&characterEncoding=utf8","root","root");
			
		}catch(ClassNotFoundException e){
			System.out.println("�Ҳ�������");
			e.printStackTrace();
		}
		return conn;
	}
	public void closeALL(Connection conn,Statement stat,ResultSet rs){
		if(rs!=null){
			try{
				rs.close();
			}catch(SQLException e){
				e.printStackTrace();
			}finally{
				if(stat!=null){
					try{
						stat.close();
					}catch(SQLException e){
						e.printStackTrace();
					}finally{
						if(conn!=null){
							try{
								conn.close();
							}catch(SQLException e){
								e.printStackTrace();
							}
						}
					}
				}
			}
		}
	}

}
