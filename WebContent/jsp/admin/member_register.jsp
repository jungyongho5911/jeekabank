<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.kabank.jee.domain.MemberBean"%>
<%@page import="java.sql.*"%>
<jsp:useBean id ="member" class="com.kabank.jee.domain.MemberBean" scope="request"/>
<%
Connection conn = null;
Statement stmt = null;
String sql = "";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
	member.setId(request.getParameter("id"));
	member.setPass(request.getParameter("pass"));
	member.setName(request.getParameter("name"));
	member.setSsn(request.getParameter("ssn"));
	member.setPhone(request.getParameter("phone"));
	member.setEmail(request.getParameter("email"));
	member.setProfile(request.getParameter("default_profile.jpg"));
	member.setAddr(request.getParameter("addr"));
	sql = String.format("INSERT INTO Member("
			+"id,"
			+"pass,"
			+"name,"
			+"ssn,"
			+"phone,"
			+"email,"
			+"profile,"
			+"addr"
			+")VALUES('%s','%s','%s','%s','%s','%s','%s','%s')",
			member.getId(),member.getPass(),member.getName(),member.getSsn(),member.getPhone(),member.getEmail(),member.getProfile(),member.getAddr()
			);
		stmt.executeUpdate(sql);
}catch(Exception e){e.printStackTrace();}
	pageContext.forward("member_list.jsp");
%>