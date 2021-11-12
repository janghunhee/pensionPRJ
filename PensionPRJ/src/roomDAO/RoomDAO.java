package roomDAO;

import java.sql.Array;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Vector;

import pensionDBConn.PensionDBConn;

import roomVO.RoomVO;




public class RoomDAO {
private Connection con;			
	
	PreparedStatement pstmt=null;
	ResultSet rs=null;				
	
	
	public RoomDAO() throws ClassNotFoundException, SQLException {
		con=new PensionDBConn().getConnection(); 
											  	 
												
	} 
	
	public void pstmtClose() throws SQLException {
		if(pstmt != null) 
			pstmt.close();
	}
	
	public ArrayList<RoomVO> ReservationClose()
			throws SQLException {
		if(rs != null)
			rs.close();
		if(pstmt != null)
			pstmt.close();
		if(con != null)
			con.close();
		return null;
	}
	
	// insert-----------------
	
	public boolean insert ( String room_number1, String room_name, String name, String tel, String d) {
		String sql="insert into Room values(?,?,?,?,?)";
		
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, room_number1);
			pstmt.setString(2, room_name);
			pstmt.setString(3, name);
			pstmt.setString(4, tel);
			pstmt.setString(5, d);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	return true;	
	}

	
	public ArrayList<RoomVO> Reservation() throws SQLException{
		ArrayList<RoomVO> tiarray=new ArrayList<RoomVO>();
		String sql="select * from Room order by room_number";
		pstmt=con.prepareStatement(sql);
		rs=pstmt.executeQuery();
		while(rs.next()) {
			String room_number=rs.getString("room_number");
			String room_name=rs.getString("room_name");
			String name=rs.getString("name");
			String tel=rs.getString("tel");
			Date d=rs.getDate("d");
			
			
			RoomVO rv=new RoomVO(room_number,room_name,name,tel,d);
			
			
		
			tiarray.add(rv);
			
		}//while-end
		return tiarray;
	}
	
	

	public RoomVO getInfo(String room_number)			
			throws SQLException{
	RoomVO rv=null;
	String sql = "SELECT * FROM Room where room_number=?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, room_number);
	rs = pstmt.executeQuery();
	if(rs.next()){	
			String room_number1=rs.getString("room_number");
			String room_name=rs.getString("room_name");
			String name=rs.getString("name");
			String tel=rs.getString("tel");
			Date d=rs.getDate("d");				
			rv=new RoomVO(room_number1,room_name,name,tel,d);	
			
	}else { 
		rv=null;	// null (return null) 
		}
	return rv;		
	}


	
	public boolean room_update
	   (String room_number, String room_name, String name, String tel, String d, String sroom_number) {
	
		String sql="update Room set room_number=?, room_name=?, name=?,"
				       + " tel=?, d=TO_DATE(?,'YYYY-MM-DD') where room_number=?";
		try {
			pstmt=con.prepareStatement(sql);
			
			pstmt.setString(1, room_number);
			pstmt.setString(2, room_name);
			pstmt.setString(3, name);
			pstmt.setString(4, tel);
			pstmt.setString(5, d);
			pstmt.setString(6, sroom_number);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Update Exception");
			return false;
		}
		return true;
	}
	
	
	public boolean delete_room_number(String room_number) {
		String sql="delete from Room where room_number=?";
		try {
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, room_number);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Delete Exception");
			return false;
		}
		return true;
	} 
	
	
	
	}
		
		
