<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Join</title>
<link rel="stylesheet" href="./css/join.css">
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
		
	<form action="Sign_Up.do">
   		<div class="text1">
				<h1>ȸ������</h1>
		</div>

		<div class="input">
   		<table cellpadding="5" cellspacing="0">
      <tr>

        <td>ID:</td>
        <td><input type="text" name="id" required>
            <input type="button" value="�ߺ�Ȯ��">
        </td>
      </tr>

      <tr>
        <td>��й�ȣ:</td>
        <td><input type="password" name="password" required> </td>
      </tr>

      <tr>
        <td>��й�ȣȮ��:</td>
        <td><input type="password" name="password" required> </td>
      </tr>

      <tr>
        <td>�� ��:</td>
        <td><input type="text" name="name" required> </td>
      </tr>

      <tr>
        <td>��ȭ��ȣ:</td>
      <td><input type="text" name="tel" required></td>
      </tr>

      
      <tr align="center">
        <td colspan="2">
           <input class="enrollment" type="submit" value="���">
        </td>       
      </tr>
      
     </table>
     </form>
	</div>

	<div class="image">	
	<a href="index.html"><img src="./images/view3.jpg" id="mainImage" alt="����" style="position:absolute; top: 0;left: 0;right: 0;width:100%; height:300px;"/></a>
	
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