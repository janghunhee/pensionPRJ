<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<script src="js/jquery-3.3.1.js"></script>
<script>
	var alist = "";
	alist = '${ alist2 }';
	if (alist == "") {	
		$(document).ready(function() {
			$('#contentsList').one('click', function() {
			});

			$('#contentsList').trigger('click');
		});

		function call_getAllContent() {

	   		location.href = 'getAllContent.do';
		}    
	}
</script>
<title>�ı� ���</title>
<link rel="stylesheet" href="./css/board2.css">
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
		
		<div class="text1">
		<h3>BOARD LIST</h3>
		</div>
		
		<div class="board_list_wrap">
			<div class="board_list">
				<div class="board_list_head">
					<div class="num">No</div>
					<div class="title">����</div>
					<div class="writer">���̵�</div>
					<div class="date">�ۼ���</div>
				</div>
				<div class="board_list_body" id="contentsList" onclick="call_getAllContent();">
					<c:forEach var="vo1" items="${ alist2 }">
					<div class="item">
						<div class="num">${ vo1.num }</div>
						<div class="title"><a href="ContentSearchOne.do?title=${ vo1.title }">${ vo1.title }</a></div>
						<div class="writer">${ vo1.name }</div>
						<div class="date">${ vo1.d }</div>
					</div>
					</c:forEach>
				</div>
			</div>
		</div>
		
		<form action="#" method="post">
			<div class="input">
				<form>
					<input type="button" value="�۾���" class="submit-btn" onClick="location.href='board.jsp'">
				</form>
			</div>
		</form>
		
		<div class="image">
		<img src="./images/background.png" alt="�ϴ�2" style="position:absolute; top:800px; left:0; right:0;width:100%; height:150px;"/>
		<div class="text">
			<p>�Ա� �����:�������� | ���¹�ȣ:111-1111-1111-11 ������:���ڵ���</p>
			<p>��ȣ��:���ڵ��� | �ּ� : ����</p>
			<p>��ǥ��ȭ:1500-0000 | �̸���:kajadokdo@gmail.com</p>
		</div>
		</div>
</body>
</html>