
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    
  

<!DOCTYPE html>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel = "stylesheet" href="./css/reserve.css">
<link rel = "stylesheet" href="./css/menu.css">
<link rel = "stylesheet" href="./css/table.css">
</head>
<body>
	
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
	
	<div class="rsvtable2">
		<h2>예약 목록입니다.</h2><br>
		
		<div class="tb1">
			<form action ="Reservation.do">
				<input type="submit" value="예약명단">
			</form>
			<div class="rsv2tb">
				<table border ="1">
					<tr>
					<td>객실번호</td>
					<td>객실이름</td>
					<td>이름</td>
					<td width="30%">전화번호</td>
					<td>예약날짜</td>
					</tr>
					
					<c:forEach var="vo1" items="${alist1}" >
					<tr>
					
					<td><a href="roomSearchOne.do?room_number=${vo1.room_number}">${vo1.room_number}</a></td>
					<td>${vo1.room_name}</td>
					<td>${vo1.name}</td>
					<td>${vo1.tel}</td>
					<td>${vo1.d}</td>
					
					</c:forEach>
				</table>
			</div>
			
			
			
			
			
			
			
			<table border=0>
				<tr>	
			
				<td> <a href="PensionInsert.jsp">[예약]</a></td>
			
				</tr>
			</table>
		</div>
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