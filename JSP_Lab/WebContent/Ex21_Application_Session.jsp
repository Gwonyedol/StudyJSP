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
Today point
서버 자원(Was) : memery

application : session
[전역객체]변수(접속하는 모든 사용자에게 공유)

session
[개인 : 접속한 브라우저 : 고유값] : 접속한 사용자 마다 고유하게 부여되는 변수

사이트 접속: 전체 접속사 수 application >> count + 1...
1.applicaiotn.setAttribute("count",0)
사이트에 접속하는 모든 사용자는 count라는 변수에 접근이 가능합니다!

2.session.setAttribute("userid","hong");
접속한 사용자(브라우저)마다 고유하게 부여되는 변수

A라는 사용자 웹 서버 접속을 하면..
서버 session 객체 생성 > 식별값(7373FA165C133A2EA0E4F80105489596) > 접속 브라우저에게 response한다
session.setAttribute("userid","kglim");

B라는 사용자 웹 서버 접속
서버 session 객체 생성 > 식별값(AAAAACF854242C6B3E83566C5397344B) > 접속 브라우저
session.setAttribute("userid","hong");

Application 변수는 사용자마다 같은 값
Session 변수는 접속하는 사용자마자 다른 값을 가질 수 있다

 
 
 -->
 <h3>세션정보</h3>
 웹 서버가 부여한 고유한 ID값:<%=session.getId() %>
<hr>
<%
	String userid = request.getParameter("userid");
	session.setAttribute("id",userid);
	//session 변수의 범위 : 모든 페이지
	
%>
<h3>세션 변수값</h3>
<%
	String id = (String)session.getAttribute("id");
	out.print("당신의 ID는<b>"+id+"</b>");
%>
</body>
</html>