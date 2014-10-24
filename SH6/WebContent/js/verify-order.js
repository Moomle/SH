//订单录入变量
var isOrdNum = false;
var isOrgName = false;
var isOrgPhone = false;
var isOrgPlc = false;
var isDstName = false;
var isDstPhone = false;
var isDstPlc = false;
var isCurPhone = false;
//订单更新变量
var isOrdNumUp = false;
var isPlcUp = false;
var isCurPhoneUp = false;
//订单修改前查询变量
var isOrdNumSearch = false;
var projName = "SH5";
var path = location.href.split("/"+projName+"/")[0] +"/"+ projName + "/";

$(document).ready(function(){

	//验证订单号
	$("#ord_num").focus(function(){
		$("#ord_num_error").hide();
	}).blur(function(){
		cordnum();
	});

	/**
	 * 验证寄件人信息
	 */
	//验证寄件人
	$("#org_name").focus(function(){
		$("#org_name_error").hide();
	}).blur(function(){
		corgname();
	});
	//验证寄件人手机号
	$("#org_phone").focus(function(){
		$("#org_phone_error").hide();
	}).blur(function(){
		corgphone();
	});
	//验证寄件人地址
	$("#org_plc").focus(function(){
		$("#org_plc_error").hide();
	}).blur(function(){
		corgplc();
	});
	
	/**
	 * 验证收件人信息
	 */
	//验证收件人
	$("#dst_name").focus(function(){
		$("#dst_name_error").hide();
	}).blur(function(){
		cdstname();
	});
	//验证收件人手机号
	$("#dst_phone").focus(function(){
		$("#dst_phone_error").hide();
	}).blur(function(){
		cdstphone();
	});
	//验证收件人地址
	$("#dst_plc").focus(function(){
		$("#dst_plc_error").hide();
	}).blur(function(){
		cdstplc();
	});
	/**
	 * 验证快递员电话
	 */
	$("#cur_phone").focus(function(){
		$("#cur_phone_error").hide();
	}).blur(function(){
		ccurphone();
	});
	
	
	
	
	//**************表单录入***********************

	$("#submitAdd").click(function(){
		cordnum();
		corgname();
		corgphone();
		corgplc();
		cdstname();
		cdstphone();
		cdstplc();
		ccurphone();
		if (isOrdNum && isOrgName && isOrgPhone && isOrgPlc && isDstName && isDstPhone && isDstPlc && isCurPhone){
			$("#formAdd").submit();
		}
	});
	//****************表单更新***********************

/*	$("#submitUpdate").click(function(){
		cordnumup();
		cplcup();
		ccurphoneup();
		if (isOrdNumUp && isPlcUp && isCurPhoneUp){
			$("#formUpdate").submit();
		}
	});*/
	//*************表单修改前查询**********
	$("#submitSearch").click(function(){
		cordnumsearch();
		if (isOrdNumSearch){
			$("#formSearch").submit();
		}
	});
});

	function cordnum(){
	
	ordnum = $("#ord_num").val();
	if (ordnum == '') {
		$("#ord_num").show();
		$("#ord_num_error").show().find(".err-txt").text("订单号不能为空");
		isOrdNum = false;
	} 
	else{
		var patrn = /^\d{12}$/;
		if(!(patrn.exec(ordnum))){
			$("#ord_num").show();
			$("#ord_num_error").show().find(".err-txt").text("订单号长度为12位");
			isOrdNum = false;
		}
		else{
			$.get(path+'order/'+ordnum+"/isExist",{"ord_num":ordnum},function(data){
				if(data == 'success'){
					$("#ord_num").show();
					$("#ord_num_error").show().find(".err-txt").text("该订单已存在！");
					isOrdNum = false;
					
				}
				else{
					$("#ord_num_error").hide();
					isOrdNum = true;
				}
			});
			}
		} 
	}

	/**
	 * 验证寄件人信息
	 */
	function corgname() {

	orgname = $("#org_name").val();
	if (orgname == '') {
		$("#org_name").show();
		$("#org_name_error").show().find(".err-txt").text("寄件人不能为空");
		isOrgName = false;
	} 
	else {
			$("#org_name_error").hide();
			isOrgName = true;
		}
	}

	function corgphone(){
		
		orgphone = $("#org_phone").val();
		if(orgphone == ''){
			$("#org_phone").show();
			$("#org_phone_error").show().find(".err-txt").text("电话不能为空");
			isOrgPhone = false;
		}else{
			var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/;
			if(!(patrn1.exec(orgphone))){
				$("#org_phone_error").show().find(".err-txt").text("手机格式不对");
				isOrgPhone = false;
			}
			else {
				$("#org_phone_error").hide();
				isOrgPhone = true;
			}
		}
	}
	
	function corgplc(){
		orgplc = $("#org_plc").val();
		if(orgplc == ''){
			$("#org_plc").show();
			$("#org_plc_error").show().find(".err-txt").text("地址不能为空");
			isOrgPlc = false;
		}
		else if(orgplc.length > 30){
				$("#org_plc_error").show().find(".err-txt").text("地址过长");
				isOrgPlc = false;
			}
		else{
			$("#org_plc_error").hide();
			isOrgPlc = true;
		}
	}
	
	/**
	 * 验证收件人信息
	 */
	function cdstname() {

		dstname = $("#dst_name").val();
		if (dstname == '') {
			$("#dst_name").show();
			$("#dst_name_error").show().find(".err-txt").text("寄件人不能为空");
			isDstName = false;
		} 
		else {
				$("#dst_name_error").hide();
				isDstName = true;
			}
		}

		function cdstphone(){
			
			dstphone = $("#dst_phone").val();
			if(dstphone == ''){
				$("#dst_phone").show();
				$("#dst_phone_error").show().find(".err-txt").text("电话不能为空");
				isDstPhone = false;
			}else{
				var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
				var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/;
				if(!(patrn1.exec(dstphone))){
					$("#dst_phone_error").show().find(".err-txt").text("手机格式不对");
					isDstPhone = false;
				}
				else {
					$("#dst_phone_error").hide();
					isDstPhone = true;
				}
			}
		}
		
		function cdstplc(){
			dstplc = $("#dst_plc").val();
			if(dstplc == ''){
				$("#dst_plc").show();
				$("#dst_plc_error").show().find(".err-txt").text("地址不能为空");
				isDstPlc = false;
			}
			else if(dstplc.length > 30){
					$("#dst_plc_error").show().find(".err-txt").text("地址过长");
					isDstPlc = false;
				}
			else{
				$("#dst_plc_error").hide();
				isDstPlc = true;
			}
		}
		
		/**
		 * 验证快递员电话
		 */
		function ccurphone(){
			
			curphone = $("#cur_phone").val();
			if(curphone == ''){
				$("#cur_phone").show();
				$("#cur_phone_error").show().find(".err-txt").text("电话不能为空");
				isCurPhone = false;
			}else{
				var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
				var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/;
				if(!(patrn1.exec(curphone))){
					$("#cur_phone_error").show().find(".err-txt").text("手机格式不对");
					isCurPhone = false;
				}
				else {
					$("#cur_phone_error").hide();
					isCurPhone = true;
				}
			}
		}
		
		$("#formAdd").submit(function(){
			cordnum();
			corgname();
			corgphone();
			corgplc();
			cdstname();
			cdstphone();
			cdstplc();
			ccurphone();
			alert(isOrdNum);
			if (!isOrdNum || !isOrgName || !isOrgPhone || !isOrgPlc || !isDstName || !isDstPhone || !isDstPlc || !isCurPhone){
				return false;
			}
		});
		

//******************************订单更新********************************************
		$(document).ready(function(){
			//验证订单号
			$("#ord_num_up").focus(function(){
				$("#ord_num_up_error").hide();
			}).blur(function(){
				cordnumup();
			});
			//验证更新地址
			$("#plc_up").focus(function(){
				$("#plc_up_error").hide();
			}).blur(function(){
				cplcup();
			});
			//验证快递员电话
			$("#cur_phone_up").focus(function(){
				$("#cur_phone_up_error").hide();
			}).blur(function(){
				ccurphoneup();
			});
		});
		
		function cordnumup(){
			ordnumup = $("#ord_num_up").val();
			if(ordnumup == ''){
				$("#ord_num_up").show;
				$("#ord_num_up_error").show().find(".err-txt").text("订单号不能为空");
				isOrdNumUp=false;
			}
			else{
				var patrn = /^\d{12}$/;
				if(!(patrn.exec(ordnumup))){
					$("#ord_num_up").show();
					$("#ord_num_up_error").show().find(".err-txt").text("订单号长度为12位");
					isOrdNumUp = false;
					}
				else{
						$("#ord_num_up_error").hide();
						isOrdNumUp = true;
					}
			}
		}
		function cplcup(){
			plcup = $("#plc_up").val();
			if(plcup == ''){
				$("#plc_up").show();
				$("#plc_up_error").show().find(".err-txt").text("地址不能为空");
				isPlcUp = false;
			}
			else if(plcup.length > 30){
					$("#plc_up_error").show().find(".err-txt").text("地址过长");
					isPlcUp = false;
				}
			else{
				$("#plc_up_error").hide();
				isPlcUp = true;
			}
		}
		function ccurphoneup(){
			
			curphoneup = $("#cur_phone_up").val();
			if(curphoneup == ''){
				$("#cur_phone_up").show();
				$("#cur_phone_up_error").show().find(".err-txt").text("电话不能为空");
				isCurPhoneUp = false;
			}else{
				var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
				var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/;
				if(!(patrn1.exec(curphoneup))){
					$("#cur_phone_up_error").show().find(".err-txt").text("手机格式不对");
					isCurPhoneUp = false;
				}
				else {
					$("#cur_phone_up_error").hide();
					isCurPhoneUp = true;
				}
			}
		}
		$("#formUpdate").submit(function(){
			cordnumup();
			cplcup();
			ccurphoneup();
			if (!isOrdNumUp || !isPlcUp || !isCurPhoneUp){
				return false;
			}
		});
		
//*********************订单修改前的查询*******************************
		$(document).ready(function(){
			//验证订单号
			$("#ord_num_search").focus(function(){
				$("#ord_num_search_error").hide();
			}).blur(function(){
				cordnumsearch();
			});
		});
		function cordnumsearch(){
			ordnumsearch = $("#ord_num_search").val();
			if(ordnumsearch == ''){
				$("#ord_num_search").show;
				$("#ord_num_search_error").show().find(".err-txt").text("订单号不能为空");
				isOrdNumSearch=false;
			}
			else{
				var patrn = /^\d{12}$/;
				if(!(patrn.exec(ordnumsearch))){
					$("#ord_num_search").show();
					$("#ord_num_search_error").show().find(".err-txt").text("订单号长度为12位");
					isOrdNumSearch = false;
				}
				else{
						$("#ord_num_search_error").hide();
						isOrdNumSearch = true;
					}
			} 
		}
		
		$("#formSearch").submit(function(){
			cordnumsearch();
			if (!isOrdNumSearch){
				return false;
			}
		});
		
		