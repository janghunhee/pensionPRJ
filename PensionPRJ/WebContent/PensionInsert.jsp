<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>	


<meta charset="EUC-KR">
<title>예약하기</title>
<link rel="stylesheet" href="./css/menu.css">
<link rel="stylesheet" href="./css/reserve.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
	
		<div class = "rsvtable">
			<p>객실 예약</p>
			<hr>
			<form action="PensionInsert.do">
				<table table cellpadding="0" cellspacing="0"  align="center" border="1">
				
					
			
					<tr>
					<td>객실 번호</td>
					<td>객실 이름</td>
					<td>이름</td>
					<td>전화번호</td>
					<td>예약 날짜</td>
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
						<select id="room_name"  name="room_name">
				 			<option>VIP_(마운틴뷰)</option>
				 			<option>VIP_(오션뷰)</option>
				 			<option>스위트룸_(마운틴뷰)</option>
				 			<option>스위트룸_(오션뷰)</option>
			
			 			</select>
					</td>
					<td><input type="text" name="name" required></td>
					<td><input type="tel" name="tel" placeholder="010-0000-0000"></td>
					<td><input type="date" name="date"></td>
					</tr>
					
					<tr>
					<td colspan="5" align="center">
					<input type="submit" value="예약하기">
					<input type="button" id="reservation" value="결제하기">
					<input type="reset"  value="다시작성"></td>
					</tr>
				</table>
				
<script>
    $("#reservation").click(function () {
        var IMP = window.IMP; // 생략가능
        IMP.init('imp62832234'); 
        // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
        // i'mport 관리자 페이지 -> 내정보 -> 가맹점식별코드
         var sname = $('input[name=name]').val();
         var stel = $('input[name=tel]').val();
        
        IMP.request_pay({
            pg: 'html5_inicis', // version 1.1.0부터 지원.
            /* 
                'kakao':카카오페이, 
                'html5_inicis':이니시스(웹표준결제)
                    'nice':나이스페이
                    'jtnet':제이티넷
                    'uplus':LG유플러스
                    'danal':다날
                    'payco':페이코
                    'syrup':시럽페이
                    'paypal':페이팔
                */
            pay_method: 'card',
            /* 
                'samsung':삼성페이, 
                'card':신용카드, 
                'trans':실시간계좌이체,
                'vbank':가상계좌,
                'phone':휴대폰소액결제 
            */
            merchant_uid: 'merchant_' + new Date().getTime(),
            
            name: '숙박 예약 결제',
            //결제창에서 보여질 이름
            amount: 100,	
            //가격 
            buyer_name: sname,
            buyer_tel: stel,

        }, function (rsp) {
            console.log(rsp);
            if (rsp.success) {
                var msg = '결제가 완료되었습니다.' + "\n";
                msg += '결제 금액 : ' + rsp.paid_amount + "\n";
            } else {
                var msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
            }
            alert(msg);
        });
    });
</script>
				
			</form>
		</div>
		
		<div class="bottom_rsv">
        	<div class="txt_rsv">
            	<p>입금 은행명:농협은행 | 계좌번호:xxx-xxxx-xxx-xx 예금주:가자독도</p>
                <p>상호명:가자독도 | 주소 : 독도</p>
                <p>대표전화:1500-0000 | 이메일:kajadokdo@gmail.com</p>
            </div>
		</div>
</body>
</html>