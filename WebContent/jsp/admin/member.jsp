<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> 
<%@ page import = "java.util.*" %> 
<%
Statement stmt = null;
Connection conn = null;
String sql = "";
ResultSet rs= null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",
			"bitcamp","bitcamp");
	stmt = conn.createStatement();
	sql = "SELECT * FROM tab";
	rs = stmt.executeQuery(sql);
	List<String> list = new ArrayList<>();
	while(rs.next()){
		String temp = rs.getString("TNAME");
		list.add(temp);
	}
	boolean exist = false;
	for(String s : list){
		if(s.equalsIgnoreCase("member")){
			exist = true;
			break;
		}
		if(!exist){
			sql = 
					"CREATE TABLE Member("
						+"id VARCHAR2(20) PRIMARY KEY,"
						+"pass VARCHAR2(20),"
						+"name VARCHAR2(20),"
						+"ssn VARCHAR2(20),"
						+"phone VARCHAR2(20),"
						+"email VARCHAR2(20),"
						+"profile VARCHAR2(20),"
						+"addr VARCHAR2(20)"
							+")";
			stmt.executeUpdate(sql);
		}
	}
}catch(Exception e){
	e.printStackTrace();
}finally{
	if(stmt !=null){
		try{stmt.close();}catch(Exception e){e.printStackTrace();}
	}
	if(conn != null){
		try{conn.close();}catch(Exception e){e.printStackTrace();}
	}
}

%>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Index</title>
	<link rel="stylesheet" href="../../css/admin.css" />
	<link rel="stylesheet" href="../../css/common.css" />
</head>
<body id="body">
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
		<th>
		<select >
		<option>ID</option>
		<option>이름</option>
		<option>성별</option>
		</select>
		</th>
		 <th colspan="5"><input id= "member_button1" type="text" /></th>
		 <th colspan="2"> <button id = "member_button2">검색</button></th>
		</tr>
			<tr>
				<th>NO</th>
				<th>ID</th>
				<th>이름</th>
				<th>생년월일</th>
				<th>성별</th>
				<th>전화번호</th>
				<th>이메일</th>
				<th>주소</th>
			</tr>
			<tr>
				<td>2</td>
				<td>hong</td>
				<td>홍길동</td>
				<td>1980-01-01</td>
				<td>남</td>
				<td>010-1111-2222</td>
				<td>hong@test.com</td>
				<td>서울</td>
			</tr>
			<tr>
				<td>1</td>
				<td>kim</td>
				<td>김유신</td>
				<td>1985-02-01</td>
				<td>여</td>
				<td>010-1111-2222</td>
				<td>kim@test.com</td>
				<td>서울</td>
			</tr>
			<tr>
			<th colspan="8"><button id="add_member_btn">추가</button></th>
			</tr>
		</table> 	  
</section>	
</div>
<script src="../../js/member.js"></script>
</body>
</html>
   