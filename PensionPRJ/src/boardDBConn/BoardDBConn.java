package boardDBConn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BoardDBConn {
	private Connection con;
	
	public Connection getConnection() {
		return con;	
	}
	
	public BoardDBConn() throws ClassNotFoundException, SQLException {
		Class.forName("oracle.jdbc.driver.OracleDriver"); 
		con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
	}
}
