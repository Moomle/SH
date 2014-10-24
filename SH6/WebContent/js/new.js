//查询表单
function CheckQueryForm(){
	if("" == document.QueryForm.Submit.value){
		alert("请输入快递单号！");
		document.QueryForm.submit.focus();
		return false;
	}
}