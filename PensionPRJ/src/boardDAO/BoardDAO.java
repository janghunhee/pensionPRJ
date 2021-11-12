package boardDAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import boardVO.BoardVO;
import pensionDBConn.PensionDBConn;

public class BoardDAO {
	private Connection con;

	PreparedStatement pstmt = null;
	ResultSet rs = null;

	public BoardDAO() throws ClassNotFoundException, SQLException {
		con = new PensionDBConn().getConnection();
	}

	public void pstmtClose() throws SQLException {
		if (pstmt != null)
			pstmt.close();
	}

	public void getAllInfoClose() throws SQLException {
		if (rs != null)
			rs.close();
		if (pstmt != null)
			pstmt.close();
		if (con != null)
			con.close();
	}
	
	//전체 정보 조회
	public ArrayList<BoardVO> getAllContent() throws SQLException {
		ArrayList<BoardVO> tiarray = new ArrayList<BoardVO>();
		String sql = "SELECT * FROM reboard ORDER BY num desc";

		pstmt = con.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while (rs.next()) {
			int num = rs.getInt("num");
			String title = rs.getString("title");
			String name = rs.getString("name");
			String password = rs.getString("password");
			String contents = rs.getString("contents");
			Date d = rs.getDate("d");

			BoardVO tv = new BoardVO(num, title, name, password, contents, d);
			tiarray.add(tv);
		}
		return tiarray;
	}

	
	//선택 게시물 정보 조회
	public BoardVO getContent(String orititle)			
			throws SQLException{
		BoardVO tv=null;
	String sql = "SELECT * FROM reboard where title=?";	
	pstmt = con.prepareStatement(sql);
	pstmt.setString(1, orititle);
	rs = pstmt.executeQuery();
	if(rs.next()){	
		int num = rs.getInt("num");
		String title = rs.getString("title");
		String name = rs.getString("name");
		String password = rs.getString("password");
		String contents = rs.getString("contents");
		Date d = rs.getDate("d");			
		
		tv = new BoardVO(num, title, name, password, contents, d);	
			
	}else { 
		tv = null; 
		}
	return tv;		
	}
	
	
	//후기 입력
	public String getDate() {
		String sql = "select to_char(sysdate,'yyyymmdd') from dual";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "database erorr";
	}
	
	public int getNext() {
		String sql = "select num from reboard order by num desc";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return -1;
	}
	
	
	public boolean insert_Content(String title,String name,String password, String contents) {
		String sql = "insert into reboard values(?,?,?,?,?,?)";
		int num = getNext();
		String d = getDate();
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			pstmt.setString(2, title);
			pstmt.setString(3, name);
			pstmt.setString(4, password);
			pstmt.setString(5, contents);
			pstmt.setString(6, d);
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			System.out.println("Insert Exception");
			return false;
		}
		return true;
	}
	
	
	public String getPassword(int num) {
		String sql = "select password from reboard where num=?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "database erorr";
	}
	
	public boolean delete_Contents(int num, String password) {
		if(password.equals(getPassword(num))) {
			String sql="delete from reboard where num=?";
			try {
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				System.out.println("Delete Exception");
				return false;
			}
			return true;
		}
		else 
			return false;
	}
	
	public boolean update_Contents(int num, String title, String contents, String password, int snum) {
		if (password.equals(getPassword(num))) {
			String sql = "update reboard set title=?, contents=? where num=?";
			try {
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, title);
				pstmt.setString(2, contents);
				pstmt.setInt(3, snum);
				pstmt.executeUpdate();
			} catch (SQLException e) {
				System.out.println("Update Exception");
				return false;
			}
			return true;
		} else
			return false;
	}
}
