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
		
	<div class=rsvtable3>	
		<h2>���� ����</h2>
		
		<hr>
		
		<form action="roomUpdate.do?sroom_number=${srv.room_number}">
		
		<table table cellpadding="0" cellspacing="0"  align="center" border="1">
		<tr>
		<td>���� ��ȣ</td>
		<td>���� �̸�</td>
		<td>�̸�</td>
		<td>��ȭ��ȣ</td>
		<td>���೯¥</td>
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
			 			<option>VIP_(����ƾ��)</option>
				 		<option>VIP_(���Ǻ�)</option>
				 		<option>����Ʈ��_(����ƾ��)</option>
				 		<option>����Ʈ��_(���Ǻ�)</option>
		 		
		 			
					</select>
			
					
					
					
					</td>
				
		<td><input type="text" name="name" value="${srv.name }"></td>
		<td><input type="tel" name="tel" value="${srv.tel }"></td>
		<td><input type="date" name="d" value="${srv.d }"></td>
		<input type="hidden" name="sroom_number" value="${srv.room_number}">
		</tr>
		<tr>
		<td colspan=5 align="center">
		<input type="submit" value="����">
		<a href="roomDelete.do?room_number=${srv.room_number}">[�������]</a>
		</td>
		</tr>
		
		
		</table>
		</form>
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