<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>

	<meta charset="UTF-8" />
	<title>main</title>
	<link rel="stylesheet" href="../css/common.css" />
	<link rel="stylesheet" href="../css/index.css" />
</head>
<body>
<div id="wrapper">
	<header id="index_header">
		<h1>BIT CAMP MAIN</h1>
	</header>
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
			<a id="click_me" href="#"> 처음 오셨어요?</a>		
		<a href="member/join.jsp"><input type="submit" value="회원가입" /></a>
		</td>
	</tr>
	</table>
		</article>
	</section>
<%@ include file="common/footer.jsp" %>
</div>
</body>
<script>
	function showalert(){
		alert('관리자입니까?')	;
	}
	function clickme(){
		document.getElementById('click_me').onclick = showalert;
	}
	window.onload = clickme;
</script>
</html>