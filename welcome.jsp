<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date"%>

<%	
	String greeting = "Star Coffee(이름) 환영합니다";
	String tagline = "Welcome to Star Coffee!";

	String contentPage = request.getParameter("contentPage");
	if (contentPage == null) { contentPage = "/PartialScreen/slideShow.jsp"; }
%>

<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	
	<title>Welcome</title>	
</head>
	
<body>
	<%@ include file="menu.jsp"%> <!-- 동적 페이지의 경우 JSP지시자를 사용함. -->

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"> <%=greeting%> </h1>
		</div>
	</div>	

	<div class="container">
		<div class="text-center">
			<h3> 
				<%=tagline%> 
				<% 
					String id = request.getParameter("id");
					String pw = request.getParameter("pw");
					
					if(id != null && pw != null) {
						if (id.equals("kim@abc.com") && pw.equals("1234")) {
							out.print(id);
						} else {
							response.sendRedirect("welcome.jsp?contentPage=/PartialScreen/login.jsp");
						}
					}
				%>
			</h3>
			
			<%
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속  시각: " + CT + "\n");
			%>
		</div>
		<hr>
		<div class="content">
			<jsp:include page="<%=contentPage%>"></jsp:include> <!-- 동적페이지, 액션태그를 사용함. -->
		</div>
	</div>
	
	<%@ include file="footer.jsp"%>
	
</body>
</html>
