/**
 * 
 */
	function clickme(){
		document.querySelector("#go_burgerking").onlick = goBurgerking;
		document.querySelector("#go_kakao").onlick = goKakao;
		document.querySelector("#go_bitcamp").onlick = goBitcamp;
		document.querySelector("#go_sktelecom").onlick = goSktelecom;
		document.querySelector("#go_lotto").onlick = goLotto;
	}
	function goBurgerking(){
		location.href = "../burgerking/main.jsp";	
	}
	function goKakao(){
		location.href = "../kakao/main.jsp";	
	}
	function goBitcamp(){
		location.href = "../bitcamp/main.jsp";	
	}
	
	function goSktelecom(){
		location.href = "../sktelecom/main.jsp";	
	}
	
	function goLotto(){
		location.href = "../lotto/main.jsp";	
	}
	window.onload = clickme;
	