package pensioncontrooler.aa.main;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import boardDAO.BoardDAO;
import boardVO.BoardVO;
import pensionDBConn.PensionDBConn;
import roomDAO.RoomDAO;
import roomVO.RoomVO;
import userDAO.UserDAO;




/**
 * Servlet implementation class PensionFrontController
 * @param 
 */
@WebServlet("*.do")
public class PensionFrontController<room_number> extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PensionFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		System.out.println(request.getRequestURI()); 
		

		System.out.println(request.getContextPath()); 
			

		
		String c = request.getRequestURI().substring(request.getContextPath().length());
		
		String path = null;
		PrintWriter out = response.getWriter();//콤보박스 출력
		
		switch(c){
		case "/Reservation.do":
			RoomDAO ro1=null;
			
			try {
				ro1= new RoomDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ArrayList<RoomVO> alist1=null;
			try {
				alist1 = ro1.Reservation();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			request.setAttribute("alist1", alist1);
			path = "Reservation.jsp";
			
			
			
			break;
			
			
			//예약
		case "/PensionInsert.do":
			String room_number1=request.getParameter("room_number");
		
			
			
			String room_name=request.getParameter("room_name");
			
			String name=request.getParameter("name");
			
			String tel=request.getParameter("tel");
			String d=request.getParameter("date");	
			
			RoomDAO ro2=null;
			
			try {
				ro2=new RoomDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ro2.insert(room_number1, room_name, name, tel, d);
			
			path = "Reservation.jsp";
			break;
			
			
			
			
			
		case "/roomSearchOne.do":
			RoomDAO ro3 = null;
			RoomVO rv1= null;
			
			try {
				ro3= new RoomDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			String room_number=request.getParameter("room_number");
			try {
				rv1=ro3.getInfo(room_number); 
				
			}catch(SQLException e) { 
				e.printStackTrace();
			}
			
			
			request.setAttribute("sroom_number", room_number); 
			request.setAttribute("srv", rv1); 
			path = "roomUpdate.jsp";
			break;
			
			
			//업데이트
		case "/roomUpdate.do":
			
			RoomDAO ro4 = null;
			RoomVO rv3 =null;
			
			String room_number3=request.getParameter("room_number");
			String room_name3=request.getParameter("room_name");
			
			String name3=request.getParameter("name");
			String tel3=request.getParameter("tel");
			String d3=request.getParameter("d");
			
			String sroom_number3=request.getParameter("sroom_number");
			
			try {
				ro4=new RoomDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ro4.room_update(room_number3, room_name3, name3, tel3, d3, sroom_number3);
			//전부 다 update하는 메소드
			
			path="Reservation.jsp";
			break;	
			
		
			//예약취소
		case "/roomDelete.do":
			RoomDAO ro5=null;
			RoomVO	rv4=null;
			
			String room_number4=request.getParameter("room_number");
			
			try {
				ro5 =new RoomDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			ro5.delete_room_number(room_number4);
			path="Reservation.jsp";
			break;
			
	
			
			//회원가입 성공시
		case "/Sign_Up.do":
			String id=request.getParameter("id");

			String password=request.getParameter("password");
			
			
			String name2=request.getParameter("name");
			
			String tel2=request.getParameter("tel");
			
			
			UserDAO ud=null;
			
			try {
				ud=new UserDAO();
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			ud.user_insert(id,password,name2,tel2);
			
			path = "Sign_Up_success.jsp";
			break;
			
		
		
		
		//내용 보기======================================================
				case "/getAllContent.do":
					BoardDAO tidao1 = null;
					
				try {
					tidao1 = new BoardDAO();
				} catch (ClassNotFoundException | SQLException e) {
					e.printStackTrace();
				} 
				
				ArrayList<BoardVO> alist2 = null;
				
				try {
					alist2 = tidao1.getAllContent();
				} catch (SQLException e) {
					e.printStackTrace();
				}
				request.setAttribute("alist2", alist2);
				path = "board2.jsp"; 
				
				break;
				
				
				//선택 게시물 정보 검색======================================================
				case "/ContentSearchOne.do":
					BoardDAO tidao3 = null;
					BoardVO tv1 = null;
				try {
					tidao3 = new BoardDAO();
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				
				String title3 = request.getParameter("title");
				String password3 = request.getParameter("password");
				try {
					tv1 = tidao3.getContent(title3);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				
				request.setAttribute("stitle", title3);
				request.setAttribute("spassword", password3);
				request.setAttribute("stv", tv1);
				path = "board3.jsp";
				
				break;
				
				
				
				
				//수정하기======================================================
				case "/ContentUpdate.do":
					BoardDAO tidao4 = null;
					BoardVO tv2 = null;
					int num5 = Integer.parseInt(request.getParameter("num"));
					String title5 = request.getParameter("title");
					String contents5 = request.getParameter("contents");
					String password5 = request.getParameter("password");
				
					int snum = Integer.parseInt(request.getParameter("num"));
					
				try {
					tidao4 = new BoardDAO();
				} catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} 
				
				tidao4.update_Contents(num5, title5, contents5,password5,  snum);
				path = "board2.jsp";
				
				break;
				
				
				//삭제하기======================================================
				case "/ContentDelete.do":
					BoardDAO tidao5 = null;
					BoardVO tv3 = null;
					int num6 = Integer.parseInt(request.getParameter("num"));
					String password6 = request.getParameter("password");
					
					try {
						tidao5 = new BoardDAO();
					} catch (ClassNotFoundException |SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
					
					tidao5.delete_Contents(num6, password6);
					path = "board2.jsp";
					
					break;
					
					//입력하기======================================================
				case "/ContentInsert.do":
					BoardDAO tidao6 = null;
					
					String title8 = request.getParameter("title");
					String name8 = request.getParameter("name");
					
					String password8 = request.getParameter("password");
					String content8 = request.getParameter("contents");
					
					
					try {
						tidao6 = new BoardDAO();
					} catch (ClassNotFoundException | SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					} 
					
					tidao6.insert_Content(title8,name8,password8,content8 );
					path = "board2.jsp";
					
					break;
				
					
				}
		
	
		RequestDispatcher rd1=request.getRequestDispatcher(path);
		rd1.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println(request.getRequestURI()); 
		request.setCharacterEncoding("euc-kr");
		response.setCharacterEncoding("euc-kr");
		
		String c = request.getRequestURI().substring(request.getContextPath().length());
		String path1=null;
		
		PrintWriter out = response.getWriter();
		
		
		
				
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;				

		
		switch(c) {
		//로그인
		case "/Login.do":
		
			String id=request.getParameter("id");
			String pw=request.getParameter("password");
			String sql="SELECT*FROM Travler WHERE id=? AND password=?";
			Connection con= null;
			PreparedStatement pst = null;
			ResultSet rs1 =null;
			HttpSession session = request.getSession();
			
			try {
				con=new PensionDBConn().getConnection();
				pst = con.prepareStatement(sql);
				pst.setString(1, id);
				pst.setString(2,  pw);
				rs=pst.executeQuery();
				
				if(rs.next()) {
					String name=rs.getString("name");
				
					session.setAttribute("id", id);
					 session.setAttribute("name", name);
					
					response.sendRedirect("Login_Success.jsp");
					
					
				} if(id.equals("admin")&&pw.equals("0000")) {
					//관리자 id pw;
					
						
						
						response.sendRedirect("Login_Success.jsp");
						
				}else {
					response.sendRedirect("Login_Faild.jsp");
				}
	
				
				
			} catch (Exception e) {
	            System.out.println(e);
	        } finally {
	            try {
	                if (rs != null)
	                    rs.close();

	                if (pst != null)
	                    pst.close();

	                if (con != null)
	                    con.close();
	            } catch (Exception e) {
	                System.out.println(e);
	            }
	            
	        
	        }
	    }
			
	}
}