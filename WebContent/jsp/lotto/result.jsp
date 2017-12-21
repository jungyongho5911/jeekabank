<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="com.kabank.jee.domain.LottoBean"%>
<%@page import="java.util.*"%>
<!doctype html>
<html lang="en">
<%@ include file="../common/head.jsp" %>
<body> 
 <%@ include file="../common/nav.jsp" %> 
 <%@ include file="../common/header.jsp" %>
 <section>
 <article>
 <%!
 	public int countRow(String money){
	 int count = 0;
	  count = Integer.parseInt(money)/1000;
	 return count;
 }
  	public List<LottoBean> createLottos(int count){
	 List<LottoBean> list = new ArrayList<>();
	 LottoBean lottoBean = 	null;
	 
	 for(int i=0; i<count; i++){
		 lottoBean=new LottoBean();
		 int[] foo = createLotto();
		 for(int j=0; j<6; j++){
		 String res = ""; 
		 res += foo[i]+" ";
		 lottoBean.setLottoNum(res);
		 }
		list.add(lottoBean);
	 }
	 return list;
 }
 	public int[] createLotto(){
 		int[] lotto = new int[6];
 		lotto[0] = ((int)(Math.random()*45)+1);
		int count = 0;
		for(int i=0; i<6; i++) {
			int tmp = ((int)(Math.random()*45)+1);
			boolean exist = false;
			for(int j=0; j<lotto.length; j++) {
				if(tmp==lotto[j]) {
					exist = true;
					break;
				}
			}
			if(exist) {
				i--;
				continue;
			}else {
				lotto[i]=tmp;
			}
		}
			Arrays.sort(lotto);
			for(int j=0; j<6; j++) {
				System.out.println(lotto[j]);
			}
		return lotto;
	}
%>
  <%
	int count = countRow(request.getParameter("money"));  
  	for(LottoBean lot : createLottos(count)){
  		
  		%>
  		<%=lot.getLottoNum()%>
  		<%
	  
  }
  
  %>
  </article>
 </section>
 <%@ include file="../common/footer.jsp" %> 
 </body>
 </html> 