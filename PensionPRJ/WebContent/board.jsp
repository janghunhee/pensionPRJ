<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>후기 작성</title>
<link rel="stylesheet" href="./css/board.css">
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
		
		<form action="ContentInsert.do">
			<div class="input">
				<form>
					<% String name = (String)session.getAttribute("id"); %>
					<input class="title" type="text" name="title" placeholder="제목을 입력해주세요." required>
 					<input class=writer type="hidden" name="name" value="<%= name %>">
					<input class="contents" type="text" name="contents" placeholder="내용을 입력해주세요." required >
					<input class="password" type="text" name="password" placeholder="비밀번호" required >
					<input type="submit" value="등록" class="submit-btn">
				</form>
			</div>
		</form>
		
		<div class="image">
		<img src="./images/background.png" alt="하단2" style="position:absolute; top:780px; left:0; right:0;width:100%; height:150px;"/>
		<div class="text">
			<p>입금 은행명:농협은행 | 계좌번호:111-1111-1111-11 예금주:가자독도</p>
			<p>상호명:가자독도 | 주소 : 독도</p>
			<p>대표전화:1500-0000 | 이메일:kajadokdo@gmail.com</p>
		</div>
		</div>	
</body>
</html>