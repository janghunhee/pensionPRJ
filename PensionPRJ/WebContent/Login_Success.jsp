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
		
	<h1> <%=session.getAttribute("name") %>님 환영합니다.</h1>
		
<pre>
로그인 하셨습니다.
<a href="view.html">메인화면으로</a> <a href="Reservation.jsp">예약하기</a>
</pre>

</body>
</html>