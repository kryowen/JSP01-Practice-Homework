<%@ page import="com.test.HelloWorld"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello World</title>
</head>
<body>
	<!-- 2023. 04. 04. 20184431 강민찬, Servlet 호출하기! -->
	<h1>강민찬</h1>
	<h2>Hello World</h2>
	<hr>
	<%-- 현재 날짜와 시간은 <%=java.time.LocalDateTime.now()%> 입니다. --%>
	
	<!-- 액션태그를 사용하여 서블릿 호출 -->
	<%-- <jsp:forward page="hello"></jsp:forward> --%>
	
	<!-- <form> 태그를 활용하여 서블릿 호출 -->
	<%--
		<form id="my_form" action="/Ch05_Practice/hello" method="post"></form>
	
	<script>
		document.forms[0].submit();
	</script>
	 --%>
	 
	<!-- sendRedirect 방식 -->
	<% response.sendRedirect("/Ch05_Practice/hello"); %>
	
	<!-- 결론: 액션태그를 제외한 방식으로 서블릿을 호출할 때는 프로잭트 경로를 명심하자. -->
</body>
