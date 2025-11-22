package husc.edu.vn.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
	private static final String DB_ServerName = "DESKTOP-1JQFEUE";
	private static final String DB_Login = "sa";
	private static final String DB_password = "Cuong3011@";
	private static final String DB_databaseName = "QLKHTT";
	
	public static Connection getConnection() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			String DB_URL = "jdbc:sqlserver://" + DB_ServerName +":1433" +";databaseName:" +DB_databaseName +
					"encrypt = false; trustServerCertificate = true ";
			
			return DriverManager.getConnection(DB_URL, DB_Login, DB_password);
		}catch (ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
			return null;
		
	}
}
