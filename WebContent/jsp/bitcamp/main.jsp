<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> 
<%@ page import = "java.util.*" %> 
<%@ page import = "com.kabank.jee.domain.AttendBean"%>
<%
Connection conn = null;
Statement stmt = null;
String sql = "";
ResultSet rs = null;
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
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
		if(s.equalsIgnoreCase("attend")){
			exist = true;
			break;
		}
	}
	if(!exist){
		sql = "CREATE TABLE Attend("
				+"id VARCHAR2(20) PRIMARY KEY,"
				+"week VARCHAR2(10),"
				+"status VARCHAR2(10)"
				+")";
		stmt.executeUpdate(sql);	
	}
}catch(Exception e){
		e.printStackTrace();
	}
%>	
 <!doctype html>
<html lang="en">
 <%@ include file="../common/head.jsp" %>
<link rel="stylesheet" href="../../css/bitcamp.css" /> 
 <body> 
 <%@ include file="../common/header.jsp" %> 
<%@ include file="../common/nav.jsp" %>
 <section>
  <article>
 	<h1>비트캠프메인</h1>
  </article>
  <article>
  	<table id= "bitcamp_table" >
  		<tr>
  			<td>상태</td>
  			<td>월요일</td>
  			<td>화요일</td>
  			<td>수요일</td>
  			<td>목요일</td>
  			<td>금요일</td>
  			
  		</tr>
  		<tr>
  			<td>결석</td>
  			<td><input type="radio" name="monday" value="absent" checked/></td>
  			<td><input type="radio" name="tuesday" value="absent" checked/></td>
  			<td><input type="radio" name="wednesday" value="absent" checked/></td>
  			<td><input type="radio" name="thursday"value="absent" checked/></td>
  			<td><input type="radio" name="friday"value="absent" checked/></td>
  		</tr>
  		<tr>
  			<td>지각</td>
  			<td><input type="radio" name="monday" value="late" /></td>
  			<td><input type="radio" name="tuesday" value="late"/></td>
  			<td><input type="radio" name="wednesday"value="late"/></td>
  			<td><input type="radio" name="thursday"value="late"/></td>
  			<td><input type="radio" name="friday"value="late"/></td>
  		</tr>
  		<tr>
  			<td>조퇴</td>
  			<td><input type="radio" name="monday" value="early_leave"  /></td>
  			<td><input type="radio" name="tuesday" value="early_leave"/></td>
  			<td><input type="radio" name="wednesday"value="early_leave"/></td>
  			<td><input type="radio" name="thursday" value="early_leave"/></td>
  			<td><input type="radio" name="friday" value="early_leave"/></td>
  		</tr>
  		<tr>
  			<td>출석</td>
  			<td><input type="radio" name="monday" value="attend"  /></td>
  			<td><input type="radio" name="tuesday"  value="attend"/></td>
  			<td><input type="radio" name="wednesday"  value="attend"/></td>
  			<td><input type="radio" name="thursday"  value="attend"/></td>
  			<td><input type="radio" name="friday" value="attend"/></td>
  		</tr>
  		<tr>
  			<td>결과</td>
  			<td><input type="text" name="result"  /></td>
  			<td><input type="text" name="result" /></td>
  			<td><input type="text" name="result" /></td>
  			<td><input type="text" name="result" /></td>
  			<td><input type="text" name="result" /></td>
  		</tr>
  		<tr >
  			<td colspan="6">
  			<input type="hidden" name="id" value="hong" />
  			<button id="attend_result">검색</button></td>
  		</tr>
  	</table>
  </article>
 </section>
 <%@ include file="../common/footer.jsp" %> 
 </body>
 <script src="../../js/bitcamp/bitcamp.js"></script>
 </html>