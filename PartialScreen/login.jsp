<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
	<form name="login_form" action="./welcome.jsp" method="post">
		<table style="margin-left: auto; margin-right: auto;">
			<tr>
				<td colspan=2 align=center height=40><h3><b>Star Coffee 로그인</b></h3></td>
			</tr>
			<tr>
				<td align=right>아이디&nbsp;</td>
				<td><input type="text" name="id" placeholder="Email address" maxlength="30" required></td>
			</tr>
			<tr>
				<td align=right>패스워드&nbsp;</td>
				<td><input type="password" name="pw" maxlength="15" required></td>
			</tr>				
			<tr>
				<td height=50 align="center" colspan="2">
					<input type="submit" value="로그인">
					<input type="reset" value="취소">
				</td>
			</tr>
			<tr>
				<td align="center" colspan="3">
					<a href="./welcome.jsp">처음 페이지로&emsp;</a>
					<a href="./welcome.jsp?contentPage=/PartialScreen/signUp.jsp">회원가입</a>
					<!-- 추후 ID/PW 찾기기능 추가예정 -->
				</td>
			</tr>
		</table>
	</form>
</div>