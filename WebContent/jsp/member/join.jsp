<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.kabank.jee.domain.MemberBean"%>
<%@page import="java.util.*"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %> 
<body>
 <%@ include file="../common/nav.jsp" %> 
 <section>
 <article>
 	<header id="#member_header">
 		<hgroup>
 	<h1>비트캠프 회원가입</h1>
 	</hgroup>
 		<figure>
 			<figcaption>
 			이름	<input  type="text" name="name" value="" placeholder="이름입력" />
 			</figcaption>
 		</figure>
 	<figure>
 			<figcaption>
 			아이디 <input  type="text" name="id" value="" placeholder="id입력" /> <input type="submit" value="중복확인" />
 			</figcaption>
 		</figure>
 		<figure>
 			<figcaption>
 			비밀번호	<input  type="text"  name="pass" value="" placeholder="비밀번호" />
 			</figcaption>
 		</figure>
 		<figure>
 			<figcaption>
 			생년월일	<input  type="text"  name="ssn" value=""placeholder="생년월일 입력" />
 			</figcaption>
 		</figure>
 		<figure>
 			<figcaption>
 			핸드폰번호	<input  type="text"  name="email" value="" placeholder="핸드폰번호 입력" />
 			</figcaption>
 		</figure>
 		<figure>
 			<figcaption>
 			이메일	<input  type="text"  name="phone" value="" placeholder="이메일 입력" />
 			</figcaption>
 		</figure>
 		
 		<figure>
 			<figcaption>
 			주소	<input  type="text"  name="addr" value="" placeholder="주소입력" />
 			</figcaption>
 		</figure>
 		<form action="../burgerking/main.jsp">
 		<input style="width : 150px; height:30px"  type="submit" value="회원가입"  />
 		</form >
 		<form action="../index.jsp">
 		<input style="width : 150px; height:30px" type="submit" value="취소"  />
 		</form >	
 	</header>
 </article>
 </section>
 <%@ include file="../common/footer.jsp" %> 
</body>
<script>
</script>
</html> 