	package userDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import pensionDBConn.PensionDBConn;
import roomVO.RoomVO;
import sun.security.util.Password;
import userVO.UserVO;

public class UserDAO {

	
	
	ArrayList<UserVO> list = new ArrayList<UserVO>();
	
		private Connection con;			
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;				
		
		
		public UserDAO() throws ClassNotFoundException, SQLException {
			con=new PensionDBConn().getConnection(); 
												  	 
													
		} 
		
		public void pstmtClose() throws SQLException {
			if(pstmt != null) 
				pstmt.close();
		}
		
		public ArrayList<UserVO> ReservationClose()
				throws SQLException {
			if(rs != null)
				rs.close();
			if(pstmt != null)
				pstmt.close();
			if(con != null)
				con.close();
			return null;
		}

	
public boolean user_insert ( String id, String password, String name, String tel) {
	String sql="insert into Travler values(?,?,?,?)";
	
	try {
		pstmt=con.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, password);
		pstmt.setString(3, name);
		pstmt.setString(4, tel);
		
		
		pstmt.executeUpdate();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
return true;	
}










}
