<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.kabank.jee.domain.AttendBean"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>
<%
Connection conn = null;
Statement stmt = null;
String sql = "";
List<AttendBean> result = new ArrayList<>();
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","bitcamp","bitcamp");
	stmt = conn.createStatement();
}catch(Exception e){
	e.printStackTrace();
	pageContext.forward("main.jsp");
}
%>