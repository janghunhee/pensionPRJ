<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		if(session.getAttribute("id") !=null ){
			String name=(String) session.getAttribute("name");
		}

	
		%>
		
	<h1> <%=session.getAttribute("name") %>�� ȯ���մϴ�.</h1>
		
<pre>
�α��� �ϼ̽��ϴ�.
<a href="view.html">����ȭ������</a> <a href="Reservation.jsp">�����ϱ�</a>
</pre>

</body>
</html>