<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>

<%-- HTML로 시작함. --%>
<html> 

<head> 
<meta charset="EUC-KR">
<title>3장 HTML 입력 양식</title>
</head>

<body>
	<%-- 기본적인 Input 타입 --%>
	ID <input type="text" name="id" value="kim@abc.com"> <br>
	Password <input type="password" name="password" value="111"> <br>
	E-mail <input type="email" name="email" placeholder="이메일 형식을 지켜서 입력" autofocus="autofocus"> <br>
	Number <input type="number" name="age" value="10" min="1" max="120" step="2"> <br> <br>
	
	<%-- Checkbox 타입은 중복선택이 가능하다. --%>
	<input type="checkbox" name="fruit" value="apple"> Apple <br>
	<input type="checkbox" name="fruit" value="banana"> Banana <br>
	<input type="checkbox" name="fruit" value="strawberry"> Strawberry <br>
	<input type="checkbox" name="fruit" value="grape"> Grape <br>
	<input type="checkbox" name="fruit" value="orange" checked="checked"> Orange <br> <br>
	
	<%-- Radio는 중복선택이 안됨, ~중 1택 --%>
	<input type="radio" name="fruit" value="apple"> Apple <br>
	<input type="radio" name="fruit" value="banana"> Banana <br>
	<input type="radio" name="fruit" value="strawberry" checked="checked"> Strawberry <br>
	<input type="radio" name="fruit" value="grape"> Grape <br>
	<input type="radio" name="fruit" value="orange"> Orange <br> <br>
	
	<%-- input 태그의 버튼형은 버튼형이랑 똑같다. --%>
	<input type="submit" name="submit" value="제출"> <br>
	<input type="reset"> <br> <br>
	
	
	<%-- Range 타입 특정 범위값을 지정받기 위한 UI --%>
	Number <input type="range" name="num" value="10" min="1" max="100" step="2"> <br> <br>
	
	<%-- Date 타입은 날짜를 설정할 수 있음. (value값을 지정하지 않을경우, 현재 날짜를 기준으로 선택가능함.) --%>
	Birth <input type="date" name="birth" value="1999-01-01"> <br> <br>
	
	<%-- Color로 정의할 경우, 색상을 입력받기 위한 팔레트 제공 --%>
	Background <input type="color" name="bg" value="#ff0000"> <br> <br>
	
	<%-- Hidden 타입은 UI가 표시안되고 name, value를 웹 서버로 전송함 --%>
	<input type="hidden" name="setting" value="true"> <br> <br>
	
	<%-- 여러줄의 텍스트를 입력할 때 사용 --%>
	Comment <br>
	<textarea name="comment" rows="10" cols="50" placeholder="Add Your Comments"></textarea> <br> <br>
	
	<%-- 드롭다운 리스트 형태의 UI 제공 = input radio타입과 유사 --%>
	<select name="fruit">
		<option value="apple">Apple</option>
		<option value="banana" selected="selected">Banana</option>
		<option value="orange">Orange</option>
	</select> <br> <br>
	
	<%-- select의 multiple는 중복 선택가능, 그러나 드롭다운 형식은 아님. = input Checkbox와 유사 --%>
	<select multiple="multiple" name="fruit">
		<option value="apple">Apple</option>
		<option value="banana" selected="selected">Banana</option>
		<option value="orange">Orange</option>
	</select> <br> <br>
	
	<%-- 버튼은 자바스크립트 코드를 등록하여 연동이 가능함. --%>
	<button>Write The Comments</button> <br> <br>
	
	<%-- 여래개의 입력양식을 정렬해서 보여주고자 할 때 사용 --%>
	<table border="1">
		<tr><td colspan="2" align="center" height="20"><b>로그인&nbsp;</b></td>
		</tr>
		
		<tr><td>아이디&nbsp;</td>
			<td><input type="text" name="id" placeholder="ID"></td>
		</tr>
		
		<tr><td>패스워드&nbsp;</td>
			<td><input type="password" name="ps" placeholder="Password"></td>
		</tr>
		
		<tr><td colspan="2" align="center"><input type="submit" value="로그인"></td>
		</tr>
	</table> <br>
	
	<%-- 3장 연습문제 9번 --%>
	<input type="radio" name="sport" value="baseball"> BaseBall <br>
	<input type="radio" name="sport" value="football"> FootBall <br>
	<input type="radio" name="sport" value="volleyball" checked="checked"> VolleyBall <br> <br>
	
	<%-- 3장 연습문제 10번 --%>
	<select name="city" multiple="multiple">
		<option value="seoul">Seoul</option>
		<option value="busan" selected="selected">Busan</option>
		<option value="incheon">Incheon</option>
	</select> <br> <br>
	
	<%-- 3장 연습문제 11번 --%>
	<table>
		<tr><td>아이디&nbsp;</td>
			<td><input type="text" name="id" placeholder="ID"></td>
		</tr>
		
		<tr><td>패스워드&nbsp;</td>
			<td><input type="password" name="ps" placeholder="Password"></td>
		</tr>
		
		<tr><td><input type="submit" value="로그인"></td>
		</tr>
	</table> <br>
	
	<%-- 3장 연습문제 12번 --%>
	<table align="center">
		<tr><td colspan="2" align="center" height="20"><b>회원가입&nbsp;</b></td>
		</tr>
		
		<tr><td>아이디&nbsp;</td>
			<td><input type="text" name="id" placeholder="Email address"></td>
		</tr>
		
		<tr><td>패스워드&nbsp;</td>
			<td><input type="password" name="ps"></td>
		</tr>
		
		<tr><td>패스워드(확인)&nbsp;</td>
			<td><input type="password" name="ps"></td>
		</tr>
		
		<tr><td>이름&nbsp;</td>
			<td><input type="text" name="name"></td>
		</tr>
		
		<tr><td colspan="2" align="center"><input type="submit" value="회원가입 하기"></td>
		</tr>
	</table> <br>
</body>
</html>