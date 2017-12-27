function init() {
	var adminBtn = document.querySelector('#create_table_btn');
	adminBtn.addEventListener("click",createTable,false);
}
function createTable() {
	location.href = "member.jsp";
	alert('클릭');
}

window.addEventListener("load",init,false);