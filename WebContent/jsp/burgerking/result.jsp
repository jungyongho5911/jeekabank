<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.kabank.jee.domain.BurgerkingBean"%>
<%@page import="java.util.*"%>
<jsp:useBean id="hamburger" class= "com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="coke" class= "com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="coffee" class= "com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="salad" class= "com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="chip" class= "com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<jsp:useBean id="bagel" class= "com.kabank.jee.domain.BurgerkingBean" scope="request"/>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body> 
 <%@ include file="../common/header.jsp" %> 
 <%@ include file="../common/nav.jsp" %>
 <section> 
 <article>
<%
	//<input type="submit" value="전송" style="widht : 200px;margin-right : 20px"  />  
	//<input type="hidden" name="hamburger" value="5500" />		
	//<input type="hidden" name="coke" value="1000" />		
	//<input type="hidden" name="chip" value="1000" />		
	//<input type="hidden" name="coffee" value="900" />
	//<input type="hidden" name="bagle" value="2000" />
	//<input type="hidden" name="salads" value="1500" />

	String hamburgerPrice = request.getParameter("hamburger");
	String cokePrice = request.getParameter("coke");
	String chipPrice = request.getParameter("chip");
	String saladPrice = request.getParameter("salad");
	String coffeePrice = request.getParameter("coffee");
	String bagelPrice = request.getParameter("bagel");
	
	String hamburgerCount = request.getParameter("hamburger-count");
	String cokeCount = request.getParameter("coke-count");
	String chipCount = request.getParameter("chip-count");
	String saladCount = request.getParameter("salad-count");
	String coffeeCount = request.getParameter("coffee-count");
	String bagelCount = request.getParameter("bagel-count");
	
	String place = request.getParameter("place");
	
	hamburger.setMenu("햄버거");
	hamburger.setPrice(hamburgerPrice);
	hamburger.setCount(hamburgerCount);
	
	coke.setMenu("콜라");
	coke.setPrice(cokePrice);
	coke.setCount(cokeCount);
	
	chip.setMenu("감자칩");
	chip.setPrice(chipPrice);
	chip.setCount(chipCount);
	
	coffee.setMenu("커피");
	coffee.setPrice(coffeePrice);
	coffee.setCount(coffeeCount);
	
	
	salad.setMenu("샐러드");
	salad.setPrice(saladPrice);
	salad.setCount(saladCount);
	
	bagel.setMenu("베이글");
	bagel.setPrice(bagelPrice);
	bagel.setCount(bagelCount);
	
	List<BurgerkingBean> list = new ArrayList<>();
	list.add(hamburger);
	list.add(coke);
	list.add(salad);
	list.add(bagel);
	list.add(coffee);
	list.add(chip);
%>
		<%= place %> <br/>
<% 
	int pay = 0;
	for(BurgerkingBean b : list){
		if(b.getCount()!=""){
%>	
		주문한 품목<%=b%> <br />		
			
<%			
		pay += Integer.parseInt(b.getCount())*Integer.parseInt(b.getPrice());
		}	
	}		
%>
		
		 결제	할 금액<%=pay %> 원
</article>		 
</section>
<aside></aside>
<%@ include file="../common/footer.jsp" %>  
</body>
</html>

   