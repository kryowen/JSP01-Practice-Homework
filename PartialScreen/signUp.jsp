<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
	<table style="margin-left: auto; margin-right: auto;">
		<tr>
			<td colspan=2 align=center height=40><h3><b>Star Coffee 회원가입</b></h3></td>
		</tr>
		<tr>
			<td align=right>아이디&nbsp;</td>
			<td><input type="text" name="new_id" placeholder="Email address" maxlength="30" required></td>
		</tr>
		<tr>
			<td align=right>패스워드&nbsp;</td>
			<td><input type="password" name="new_pw" maxlength="15" required></td>
		</tr>
		<tr>
			<td align=right>패스워드&nbsp;확인&nbsp;</td>
			<td><input type="password" name="pw_check" required></td>
		</tr>
		<tr>
			<td align=right>이름&nbsp;</td>
			<td><input type="text" name="user_name" maxlength="10"></td>
		</tr>
		<tr>
			<td align=right>이메일&nbsp;</td>
			<td><input type="email" name="e-mail"></td>
		</tr>
		<tr>
			<td align=right>전화번호&nbsp;</td>
			<td><input type="text" name="phone_number"></td>
		</tr>						
		<tr>
			<td height=50 align="center" colspan="2">
				<input type="submit" value="가입하기">
				<input type="reset" value="다시쓰기">
			</td>
		</tr>
	</table>
</div>