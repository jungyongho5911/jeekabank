/**
 * 
 */
	function showalert(){
		var admin = confirm('관리자?');	;
		if(admin){
			alert('안녕하세요 관리자님');
			location.href = "burgerking/main.jsp";
		}else{
			alert('관리자만 접근가능 합니다');
			
		}
	}

	function goJoin(){
		location.href = "member/join.jsp";	
	}
	
	function clickme(){
		document.querySelector('#go_join').onclick = goJoin;
		document.querySelector('#check_admin').onclick = showalert;
	}
	
	window.onload = clickme;

	
		