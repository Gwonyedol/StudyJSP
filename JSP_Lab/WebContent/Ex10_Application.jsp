<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int sum = 0; /*유효범위 : page (Ex10_Application.jsp)*/
	/*
	WAS(컨테이너) : 여러개의 웹 어플리케이션을 서비스할 수있다.
	WAS : WebJSP 웹 어플리케이션 가지고있다
	WevJSP(가상 디렉토리) ->실경로(WebContent폴더/defualt폴더)
	http://localhost:8090/WebJSP/Ex09_reponse.jsp
	>>context root -> WebContent
	
	Webcontent 안에 있는 모든 페이지가 공유할 수 있는 자원은 없을까
	웹 어플리케이션은 하나의 설정파일을 가지고 있다(웹 사이트 설정 정보)
	web.xml(웹 어플리케이션 전반에 관련된 환경 설정 파일이다)
	>>사이트를 실행하면 >>Web.xml가 가장먼저 실행됨
	WebContent>>WEB-INF >>web.xml
	**WEB-INF(보안폴더) : 클라이언트가 접속할 수 없는 경로..
	에러가 404로 남
	실 프로젝트 >> WEB-INF >> views >> member 안에서 JSP 관리
	
	*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// application.getInitParameter >> web.xml 가서 >> email
	String param = application.getInitParameter("email");
	out.print("<h3>"+param+"<h3>");
	String param2 = application.getInitParameter("Filepath");
	out.print("<h3>"+param2+"<h3>");
	%>
	
	application 객체는 서버 전체에 사용할 수 있는 공유자원 얻을 수 있고
	또는 생성도 할 수있따.

</body>
</html>