<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
<link rel="stylesheet" href="./css/login.css">
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
		
		<div class="image">	
		<a href="index.html"><img src="./images/view3.jpg" id="mainImage" alt="����" style="position:absolute; top: 0;left: 0;right: 0;width:100%; height:300px;"/></a>
		</div>
		
		<div class="text1">
		<h1>LOGIN</h1>
		</div>
		
	
		
		<a href="/Login_Success.jsp">�α��� ȭ������</a>

		<form action="Login.do" method="post">
			<div class="input">
				<form>
					<input class="username" type="text" name="id" placeholder="���̵�" required>
					<input class="password" type="password" name="password" placeholder="��й�ȣ" required>
					<input type="submit" value="�α���" class="submit-btn">
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