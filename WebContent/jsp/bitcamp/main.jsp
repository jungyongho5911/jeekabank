<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!doctype html>
<html lang="en">
 <%@ include file="../common/head.jsp" %>
 <body> 
 <%@ include file="../common/header.jsp" %> 
<%@ include file="../common/nav.jsp" %> 
 <section>
  <article>
 	<h1>비트캠프메인</h1>
  </article>
  <article>
  	<table >
  		<tr>
  			<td></td>
  			<td>월요일</td>
  			<td>화요일</td>
  			<td>수요일</td>
  			<td>목요일</td>
  			<td>금요일</td>
  			
  		</tr>
  		<tr>
  			<td>결석</td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  		</tr>
  		<tr>
  			<td>지각</td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  		</tr>
  		<tr>
  			<td>조퇴</td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  		</tr>
  		<tr>
  			<td>출석</td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  			<td><input type="radio" /></td>
  		</tr>
  		<tr>
  			<td>결과</td>
  			<td><input type="text" /></td>
  			<td><input type="text" /></td>
  			<td><input type="text" /></td>
  			<td><input type="text" /></td>
  			<td><input type="text" /></td>
  		</tr>
  	</table>
  </article>
 </section>
 <%@ include file="../common/footer.jsp" %>  
 </body>
 <script src="../../js/bitcamp/main.js"></script>
 </html>