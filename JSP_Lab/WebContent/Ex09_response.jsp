<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
Client(웹브라우저) -> Server
				  request:요청
Client(웹브라우저) -> Server
				  response:응답
	javax(Tomcat이 제공)
	:request, response 객체 제공
	
	1.표현식(출력) 
	2.페이지의 이동 처리(sendRedirect)
	
	resonse.sendRedirect()...(서버쪽코드)
	똑같은 원리 javascript
	location.href = "Ex01_Basic.jsp"
	>>둘다 페이지를 서버에게 [재요청]
					  
 -->
 1.일반적인 사용 (=출력):<%=100+200+300 %><br>
 2.sendRedirect : response 객체 함수(클라이언트 서버에게 페이지를 재요청)<br>
 <%
 	response.sendRedirect("Ex01_Basic.jsp");
 %>
 <!-- 
 response.sendRedirect 코드가 클라이언트 브라우저 해석할 수 있는 형태로 변환
 <script type = "text/javascript">
 	location.href="Ex01_Basic.jsp"
 	</script>
  -->
</body>
</html>