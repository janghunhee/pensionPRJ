<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel = "stylesheet" href = "./css/menu.css">
<link rel = "stylesheet" href = "./css/reserve.css">
</head>
<body onLoad="focusIt();">
	
	<ul id="menu">
				<li><a href="#">ACCOUNT</a>
					<ul>
						<li><a href="login.jsp">로그인</a>
						<li><a href="join.jsp">회원가입</a>
					</ul>
				</li>
				<li><a href="#">LOCATION</a>
					<ul>
						<li><a href="jido.html">길찾기</a>
					</ul>
				</li>
				<li><a href="#">TRAVEL</a>
					<ul>
						<li><a href="jubyun_t.html">주변 여행지</a>
						<li><a href="jubyun_f.html">주변 먹거리</a>
					</ul>
				</li>
				<li><a href="#">RESERVE</a>
					<ul>
						<li><a href="Reservation.do">예약안내</a>
						<li><a href="PensionInsert.jsp">실시간 예약</a>
					</ul>
				</li>
				<li><a href="#">SPECIAL</a>
					<ul>
						<li><a href="swim.html">수영장</a>
						<li><a href="service.html">편의 시설</a>
						<li><a href="board2.jsp">후기게시판</a>
					</ul>
				</li>
				<li><a href="#">ROOMS</a>
					<ul>
						<li><a href="room1.html">room1</a>
						<li><a href="room2.html">room2</a>
						<li><a href="room3.html">room3</a>
						<li><a href="room4.html">room4</a>
					</ul>
				</li>
				<li><a href="#">ABOUT</a>
					<ul>
						<li><a href="sogae.html">펜션 소개</a>
						<li><a href="view.html">외경 보기</a>
					</ul>
				</li>
				
				<a href="index.html"style="
					position:absolute;
					top:25px;
					left:70px;
					font-size:40px;
					color:white;
					text-decoration:none;
					z-index:-1;">가자 독도</a>
					
		</ul>
		
		<div class="headimg">	
			<img src="./images/rsv1.jpg">
		</div>
		
	<div class=rsvtable3>	
		<h2>예약 수정</h2>
		
		<hr>
		
		<form action="roomUpdate.do?sroom_number=${srv.room_number}">
		
		<table table cellpadding="0" cellspacing="0"  align="center" border="1">
		<tr>
		<td>객실 번호</td>
		<td>객실 이름</td>
		<td>이름</td>
		<td>전화번호</td>
		<td>예약날짜</td>
		</tr>
		
		<tr>
			<td>
				<select id="room_number" name="room_number">
		 			<option>room1</option>
		 			<option>room2</option>
		 			<option>room3</option>
		 			<option>room4</option>
		 			
		 			
					</select>
					
		 		
				
				</td>
				
			
					<td>
					<select id="room_name"  name="room_name" >
			 			<option>VIP_(마운틴뷰)</option>
				 		<option>VIP_(오션뷰)</option>
				 		<option>스위트룸_(마운틴뷰)</option>
				 		<option>스위트룸_(오션뷰)</option>
		 		
		 			
					</select>
			
					
					
					
					</td>
				
		<td><input type="text" name="name" value="${srv.name }"></td>
		<td><input type="tel" name="tel" value="${srv.tel }"></td>
		<td><input type="date" name="d" value="${srv.d }"></td>
		<input type="hidden" name="sroom_number" value="${srv.room_number}">
		</tr>
		<tr>
		<td colspan=5 align="center">
		<input type="submit" value="수정">
		<a href="roomDelete.do?room_number=${srv.room_number}">[예약취소]</a>
		</td>
		</tr>
		
		
		</table>
		</form>
	</div>

	<div class="bottom_rsv">
    	<div class="txt_rsv">
        	<p>입금 은행명:농협은행 | 계좌번호:111-1111-1111-11 예금주:가자독도</p>
            <p>상호명:가자독도 | 주소 : 독도</p>
            <p>대표전화:1500-0000 | 이메일:kajadokdo@gmail.com</p>
        </div>
    </div>

</body>
</html>