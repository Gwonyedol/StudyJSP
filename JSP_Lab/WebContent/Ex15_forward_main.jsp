<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	요청에 대한 흐름 제어(forward..)
	
	include
	forward 같이 비교
	공통점 : request 객체 공유
	차이점: incluse 제어권을 돌려받는다
		 forward 제어권을 넘겨 준다
		 (요청주소는 동일한데 : 각각 다른 페이지의 서비스를 받는다)
		 Why: 처음 요청했던 page 버퍼(buffer)를 그대로 사용
		 localhost:8090/WebJSP/login.jsp
		 받는 페이지 내용은 : A.jsp , B.jsp, C.jsp를 받을 수 있다.
	*/
	String code = request.getParameter("code");
	String viewURL = null;
	
	if(code.equals("A")){
		viewURL = "/forward/A.jsp";
	}else if(code.equals("B")){
		viewURL = "/forward/B.jsp";
	}else if(code.equals("C")){
		viewURL = "/forward/C.jsp";
	}
%>
<jsp:forward page ="<%=viewURL %>"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>