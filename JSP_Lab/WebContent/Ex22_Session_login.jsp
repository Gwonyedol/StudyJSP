<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String memberid = (String)session.getAttribute("memberid");
	boolean loginstate = (memberid == null)?false:true;
%>
<%
	//한글 처리
	request.setCahracterEncodeng("UTF-8");
	//데이터 받기
	request.getParameter("d")
	String pwd = requset.getParameter("pwd");
	
	System.out.println(uid+"/"+pwd);
	
	//로직처리
	//Db연결 >> select >> 회원테이블 >> ID,PWD 존재..
boolean suceess = false;
	if(uid.equsals(pwd)){
		//로그인 성공
		//session변수에 id값을 넣기
		//session변수는 모든 JSP 페이지에서 공뷰 가능
		session.setAttribute("member"
	}
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원전용 페이지</title>
</head>
<body>
	<%
		if(loginstate){
			out.print(memberid+"님 로그인 상탠데요");
			out.print("당신은 이 페이지를 볼 수 있습니다");
			out.print("<a href='Ex22_Session_logout.jsp'>로그아웃</a>");
		}else{
			out.print("<script>alert('넌누구냐')</script>");
			out.print("<script>location.href='Ex22_Session_login.jsp'</script>");
		}
	%>
	<form action="Ex23_Session_ok.jsp" method="get">
		<input type="text" name="uid"><br> <input type="password"
			name="pwd"><br> <input type="submit" name="login">
		<input type="reset" name="취소">
	</form>
	<hr>
	<h3>회원 가입 페이지</h3>
	<a href="Ex22_Session_member.jsp">회원접속</a>

</body>
	<%
		if(success == true){
			ot.pri
		}
		%>
</html>