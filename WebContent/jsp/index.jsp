<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>main</title>
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />
	<script src="../js/index.js"></script>
</head>
<body>
	<header id="index_header">
		<h1>BIT CAMP MAIN</h1>
	</header>
<div id="wrapper">
	<section id="index_section">
		<article>
			<table id="index_table">
		<tr id="first_child">
			<td colspan="5">
				<form action="burgerking/main.jsp">
					<table id="index_login_box" >					
			<tr>
			 		<td id="index_input_id"> 
			 		<input type="text" placeholder="id"/>
			</td>
			 	<td id="index_input_btn" rowspan="2">
				 <input type="submit" value="로그인" id="index_input_pass"/>
			</td>
			 </tr>
			 <tr>
				<td id="index_input_pass">
			 	<input type="text" name="pass" placeholder="pass"/>
			 	</td>
			 	</tr>
		</table>	 	
	</form>
			<a id="check_admin" href="#" > 관리자</a>		
			<a id="go_join" href="#" > 회원가입</a>		
		</td>
	</tr>	
	</table>
		</article>
	</section>
</div>
<%@ include file="common/footer.jsp" %>
</body>
</html>
   