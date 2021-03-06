<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %> 
<%@ page import = "java.util.*" %> 
<%@ page import = "com.kabank.jee.domain.MemberBean" %> 
<%
Statement stmt = null;
Connection conn = null;
String sql = "";
ResultSet rs= null;
List<MemberBean> result = new ArrayList<>();
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
		
	}
	if(exist){
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
	}else{
		rs = stmt.executeQuery("SELECT id,pass,name,ssn,phone,email,profile,addr FROM Member");
		while(rs.next()){
			MemberBean m = new MemberBean();
			m.setId(rs.getString("id"));
			m.setName(rs.getString("name"));
			m.setAddr(rs.getString("addr"));
			m.setEmail(rs.getString("email"));
			m.setPass(rs.getString("pass"));
			m.setSsn(rs.getString("ssn"));
			result.add(m);
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
<%@ include file="../common/head.jsp" %>
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
				<%
				for(int i=0; i<result.size(); i++){
					%>
					<tr>
				<td>00</td>
				<td><%=result.get(i).getId()%></td>
				<td><%=result.get(i).getName()%></td>
				<td>1980-01-01</td>
				<td>남</td>
				<td><%=result.get(i).getPhone()%></td>
				<td><%=result.get(i).getEmail()%></td>
				<td><%=result.get(i).getAddr()%></td>
			</tr>
					<%
				}
				%>
			
			<tr>
			<th colspan="8"><button id="add_member_btn">추가</button></th>
			</tr>
		</table> 	  
</section>	
</div>
<%@ include file="../common/footer.jsp" %> 
</body>
<script src="../../js/admin/member_list.js"></script>
</html>
   