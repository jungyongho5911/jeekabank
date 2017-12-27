<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.kabank.jee.domain.MemberBean"%>
<%@page import="java.util.*"%>
	
<!doctype html>
<html lang="en">
<body>
  <div id = "wrapper">
 <section id="member_section">
 <article>
 	<header style="text-align: center;" >
 		<hgroup>
 	       <h1 > 비트캠프 회원가입</h1>
 		</hgroup>
 	</header>
 		<form name="join_form" action="../index.jsp">
 		<table style="margin: auto" id="#main_table"  >
 			<tr >
 				<td>아이디</td>
 				<td>
 				<input  id="join_id" name="join_id"type="text" />
 				<button id="check_dupl_btn" name="check_dupl_btn">중복확인</button>
 				</td>
 			</tr>
 			<tr>
 				<td>이름</td>
 				<td><input  type="text"  /></td>
 			</tr>
 			<tr>
 				<td>비밀번호</td>
 				<td><input id="join_pass" name="join_pass"  type="password"  /></td>
 			</tr>
 			<tr>
 				<td>비밀번호 확인</td>
 				<td><input   type="password"  /></td>
 			</tr>
 			<tr>
 				<td>이메일</td>
 				<td><input type="email" />@ <input type="email" /><select >
 				<option>naver.com</option>
 				<option>daum.net</option>
 				<option>nate.com</option>
 				</select>
 				</td>
 			<tr>
 				<td>가입일</td>
 				<td><input  type="date" /></td>
 			</tr>
 			<tr>
 			<tr>
 				<td>주민번호</td>
 				<td><input type="text" />- <input  type="text" placeholder="" /></td>
 			</tr>
 			<tr>
 				<td>핸드폰번호</td>
 				<td>
 				<input type="radio" name="phone" /> SKT
 				<input type="radio" name="phone" /> LG
 				<input type="radio" name="phone" /> KT
 				<br/>
 				<select>
 				<option>010</option>
 				</select>
 				- <input pattern="[0-9]{4}" type="tel" /> -  <input pattern="[0-9]{4}" type="tel" />
 				</td>
 			</tr>
 			<tr>
 				<td>주소</td> 
				<td>
				<input type="button" value="주소검색" />-<input style="width: 300px "type="text" />
 				</td>
 			</tr>
 			<tr>
 			<td colspan = "2"> 
 				<button  id="join_confirm_btn"style="width: 160px; height: 30px">회원가입</button> 
 				<button style="width: 160px; height: 30px">취소</button>
 			</td>
 			</tr>
 		</table>
 		</form>
 </article>
 </section>
</div>
 <%@ include file="../common/footer.jsp" %>
</body>
<script src="../../js/join.js"></script> 
</html> 