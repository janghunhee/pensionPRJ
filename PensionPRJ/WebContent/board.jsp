<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�ı� �ۼ�</title>
<link rel="stylesheet" href="./css/board.css">
</head>
<body>
		<ul id="menu">
				<li><a href="#">ACCOUNT</a>
					<ul>
						<li><a href="login.jsp">�α���</a>
						<li><a href="join.jsp">ȸ������</a>
					</ul>
				</li>
				<li><a href="#">LOCATION</a>
					<ul>
						<li><a href="jido.html">��ã��</a>
					</ul>
				</li>
				<li><a href="#">TRAVEL</a>
					<ul>
						<li><a href="jubyun_t.html">�ֺ� ������</a>
						<li><a href="jubyun_f.html">�ֺ� �԰Ÿ�</a>
					</ul>
				</li>
				<li><a href="#">RESERVE</a>
					<ul>
						<li><a href="Reservation.do">����ȳ�</a>
						<li><a href="PensionInsert.jsp">�ǽð� ����</a>
					</ul>
				</li>
				<li><a href="#">SPECIAL</a>
					<ul>
						<li><a href="swim.html">������</a>
						<li><a href="service.html">���� �ü�</a>
						<li><a href="board2.jsp">�ı�Խ���</a>
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
						<li><a href="sogae.html">��� �Ұ�</a>
						<li><a href="view.html">�ܰ� ����</a>
					</ul>
				</li>
				
				<a href="index.html"style="
					position:absolute;
					top:25px;
					left:70px;
					font-size:40px;
					color:white;
					text-decoration:none;
					z-index:-1;">���� ����</a>
					
		</ul>
		
		<form action="ContentInsert.do">
			<div class="input">
				<form>
					<% String name = (String)session.getAttribute("id"); %>
					<input class="title" type="text" name="title" placeholder="������ �Է����ּ���." required>
 					<input class=writer type="hidden" name="name" value="<%= name %>">
					<input class="contents" type="text" name="contents" placeholder="������ �Է����ּ���." required >
					<input class="password" type="text" name="password" placeholder="��й�ȣ" required >
					<input type="submit" value="���" class="submit-btn">
				</form>
			</div>
		</form>
		
		<div class="image">
		<img src="./images/background.png" alt="�ϴ�2" style="position:absolute; top:780px; left:0; right:0;width:100%; height:150px;"/>
		<div class="text">
			<p>�Ա� �����:�������� | ���¹�ȣ:111-1111-1111-11 ������:���ڵ���</p>
			<p>��ȣ��:���ڵ��� | �ּ� : ����</p>
			<p>��ǥ��ȭ:1500-0000 | �̸���:kajadokdo@gmail.com</p>
		</div>
		</div>	
</body>
</html>