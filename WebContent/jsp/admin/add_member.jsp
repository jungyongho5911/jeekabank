<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Index</title>
	<link rel="stylesheet" href="../../css/admin.css" />
	<link rel="stylesheet" href="../../css/common.css" />
</head>
<body>
<div id="wrapper">
	<header id="main_header">
		<h1>관리자 메인 페이지</h1>
	</header>
<aside id="main_aside">
	<ul>
	<li>관리자화면</li>
	<li><a href="#">회원관리</a></li>
	</ul>
</aside>
<section id="main_section">
		<table id="main_table">
		<tr>
			<td>id : <input type="text" /></td>
		</tr>
		
		<tr>
			<td>이름 : <input type="text" /></td>
		</tr>
		<tr>
			<td>SSN : <input type="text" /></td>
		</tr>
		<tr>
			<td>전화번호 : <input type="text" /></td>
		</tr>
		<tr>
			<td>이메일 : <input type="text" /></td>
		</tr>
		
		<tr>
			<td>주소 : <input type="text" /></td>
		</tr>
			<tr>
			<td><button id="add_member_btn" style="width:150px; height:30px;margin-left: 80%;">추가</button></td>
			</tr>
		</table> 	  
</section>	
</div>
<script src="../../js/member.js"></script>
</body>
</html>
   
   