<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session 객체</title>
</head>
<body>
<!-- 
	session 웹 브라우저마다(접속한 사용자)마다 부여되는 고유한 객체
	
	session 값: 웹서버가 접속한 클라이언트(브라우저)에 부여하는  식별값
	A라는 사용자가 > 웹서버에 접속(session 객체 생성) > id값을 생성> Client response
	클라이언트와 서버 동기화(연결) 고유한 식별값으로...
	
	서버에서 생성한 session id 값 F3F094B8964E39B3319D7ED41CF7C707
	Client 가지고 있는 session 값 F3F094B8964E39B3319D7ED41CF7C707
	
	session 객체
	:처음 접속한 시간
	:마지막 접속한 시간
	
 	
 -->
 <%
 	Date time = new Date();
 	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
 %>
 <h3> 세션 정보 </h3>
 <%= session.getId() %>
 <hr>
 <%
 	time.setTime(session.getCreationTime());
 %>
 [session 생성된 시간] : <%= formatter.format(time) %>
 <hr>
 <%
 	time.setTime(session.getLastAccessedTime());
 %>
 
  [session 마지막 접속 시간] : <%= formatter.format(time) %>
</body>
</html>