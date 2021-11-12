
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
	
			
	<div class="headimg">	
		<img src="./images/rsv1.jpg">
	</div>
	
	<div class="rsvtable2">
		<h2>���� ����Դϴ�.</h2><br>
		
		<div class="tb1">
			<form action ="Reservation.do">
				<input type="submit" value="������">
			</form>
			<div class="rsv2tb">
				<table border ="1">
					<tr>
					<td>���ǹ�ȣ</td>
					<td>�����̸�</td>
					<td>�̸�</td>
					<td width="30%">��ȭ��ȣ</td>
					<td>���೯¥</td>
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
			
				<td> <a href="PensionInsert.jsp">[����]</a></td>
			
				</tr>
			</table>
		</div>
	</div>
	
	<div class="bottom_rsv">
                <div class="txt_rsv">
                    <p>�Ա� �����:�������� | ���¹�ȣ:111-1111-1111-11 ������:���ڵ���</p>
                    <p>��ȣ��:���ڵ��� | �ּ� : ����</p>
                    <p>��ǥ��ȭ:1500-0000 | �̸���:kajadokdo@gmail.com</p>
                </div>
	</div>
</body>
</html>