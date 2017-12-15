<%@page import="com.sun.corba.se.spi.orbutil.fsm.Input"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
  <html lang="en">
  <head>
   <meta charset="UTF-8" />
   <title>Result</title>
   <style>
		table{
			width : 80%; height: 760px; margin: 0 auto;
		}
		table tr{
			width : 100%; height: 50px;border: 1px solid blue;
		}
		table tr th{
			width : 100%; height: 30px;border: 1px solid blue;
		}
		
		table tr td{
			width : 100%; height: 30px;border: 1px solid blue;
		}
		</style>
		<body>
		<table>
		<tr style="height: 10%">
			<td colspan="5">네비게이션</td>
		</tr>
		<tr style="height: 20%">
			<td style="width :20%; tetx-align: center;">버거킹</td>
			<td style="width :20%; tetx-align: center;">카카오뱅크</td>
			<td style="width :20%; tetx-align: center;">비트캠프</td>
			<td style="width :20%; tetx-align: center;">SKTELECOME</td>
			<td style="width :20%; tetx-align: center;">로또</td>
		</tr>
		<tr style="height: 60%">
			<td colspan="5">
  </head>
<%
	String menu = request.getParameter("menu");
	String count = request.getParameter("count");
	String price =	"";
	String total = "";
	String hamburger = request.getParameter("hamburger");
	String coke = request.getParameter("coke");
	String chip = request.getParameter("chip");
	String coffee = request.getParameter("coffee");
	if(count.equals("")){
%>	
	
	<div style="width : 300px; height: 200px;border: 3px solid red; margin: 0 auto;">
	<p>메뉴와 수량을 반드시 입력해야합니다
	</p>
	<form action="index.jsp">
		<input type="submit" value="뒤로가기" />
		</form>
	</div>
<%	
}else{
		switch(menu){
		case "햄버거" :
			price = String.valueOf(Integer.parseInt(hamburger));
			total = String.valueOf(Integer.parseInt(count)*Integer.parseInt(hamburger));
			break;
		case "콜라" :
			price = String.valueOf(Integer.parseInt(coke));
			total = String.valueOf(Integer.parseInt(count)*Integer.parseInt(coke));
			break;
		case "감자칩" :
			price = String.valueOf(Integer.parseInt(chip));
			total = String.valueOf(Integer.parseInt(count)*Integer.parseInt(chip));
			break;
		case "커피" :
			price = String.valueOf(Integer.parseInt(coffee));
			total = String.valueOf(Integer.parseInt(count)*Integer.parseInt(coffee));
			break;
		}

%>
  <div style="width : 300px; height: 200px; margin: 0 auto;">
   		<p>
   			 <%=menu  %> <%= price+"원" %> <%= count +"개" %> <br /> 
   			--------------- <br />
   			결제금액 <%=total+"원"%>
   		</p>
   		<form action="">
   			<input type="submit" value="결 제" />
   		</form>
   		</div>
<%	
}
%>
			</td>
		</tr>
	</table>
</body> 
 </html>

