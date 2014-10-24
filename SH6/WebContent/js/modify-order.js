var isOrdNum = true;
var isOrgName = false;
var isOrgPhone = false;
var isOrgPlc = false;
var isDstName = false;
var isDstPhone = false;
var isDstPlc = false;
var isCurPhone = false;

$(document).ready(function(){
	
	//验证订单号
	$("#ord_num_modify").attr("disabled","disabled");
	/*$("#ord_num_modify").focus(function(){
		$("#ord_num_modify_error").hide();
	}).blur(function(){
		cordnum();
	});*/

	/**
	 * 验证寄件人信息
	 */
	//验证寄件人
	$("#org_name_modify").focus(function(){
		$("#org_name_modify_error").hide();
	}).blur(function(){
		corgname();
	});
	//验证寄件人手机号
	$("#org_phone_modify").focus(function(){
		$("#org_phone_modify_error").hide();
	}).blur(function(){
		corgphone();
	});
	//验证寄件人地址
	$("#org_plc_modify").focus(function(){
		$("#org_plc_modify_error").hide();
	}).blur(function(){
		corgplc();
	});
	
	/**
	 * 验证收件人信息
	 */
	//验证收件人
	$("#dst_name_modify").focus(function(){
		$("#dst_name_modify_error").hide();
	}).blur(function(){
		cdstname();
	});
	//验证收件人手机号
	$("#dst_phone_modify").focus(function(){
		$("#dst_phone_modify_error").hide();
	}).blur(function(){
		cdstphone();
	});
	//验证收件人地址
	$("#dst_plc_modify").focus(function(){
		$("#dst_plc_modify_error").hide();
	}).blur(function(){
		cdstplc();
	});
	/**
	 * 验证快递员电话
	 */
	$("#cur_phone_modify").focus(function(){
		$("#cur_phone_modify_error").hide();
	}).blur(function(){
		ccurphone();
	});
	
	
	
	
	$("#submitModify").click(function(){
		//cordnum();
		corgname();
		corgphone();
		corgplc();
		cdstname();
		cdstphone();
		cdstplc();
		ccurphone();
		if (isOrdNum && isOrgName && isOrgPhone && isOrgPlc && isDstName && isDstPhone && isDstPlc && isCurPhone){
			$("#form").submit();
		}
	});
});

	function cordnum(){
	
	ordnum = $("#ord_num_modify").val();
	if (ordnum == '') {
		$("#ord_num_modify").show();
		$("#ord_num_modify_error").show().find(".err-txt").text("订单号不能为空");
		isOrdNum = false;
	} 
	else{
		var patrn = /^\d{12}$/;
		if(!(patrn.exec(ordnum))){
			$("#ord_num_modify").show();
			$("#ord_num_modify_error").show().find(".err-txt").text("订单号长度为12位");
			isOrdNum = false;
		}
		else{
				$("#ord_num_modify_error").hide();
				isOrdNum = true;
			}
		} 
	}

	/**
	 * 验证寄件人信息
	 */
	function corgname() {

	orgname = $("#org_name_modify").val();
	if (orgname == '') {
		$("#org_name_modify").show();
		$("#org_name_modify_error").show().find(".err-txt").text("寄件人不能为空");
		isOrgName = false;
	} 
	else {
			$("#org_name_modify_error").hide();
			isOrgName = true;
		}
	}

	function corgphone(){
		
		orgphone = $("#org_phone_modify").val();
		if(orgphone == ''){
			$("#org_phone_modify").show();
			$("#org_phone_modify_error").show().find(".err-txt").text("电话不能为空");
			isOrgPhone = false;
		}else{
			var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
			var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/;
			if(!(patrn1.exec(orgphone))){
				$("#org_phone_modify_error").show().find(".err-txt").text("手机格式不对");
				isOrgPhone = false;
			}
			else {
				$("#org_phone_modify_error").hide();
				isOrgPhone = true;
			}
		}
	}
	
	function corgplc(){
		orgplc = $("#org_plc_modify").val();
		if(orgplc == ''){
			$("#org_plc_modify").show();
			$("#org_plc_modify_error").show().find(".err-txt").text("地址不能为空");
			isOrgPlc = false;
		}
		else if(orgplc.length > 30){
				$("#org_plc_modify_error").show().find(".err-txt").text("地址过长");
				isOrgPlc = false;
			}
		else{
			$("#org_plc_modify_error").hide();
			isOrgPlc = true;
		}
	}
	
	/**
	 * 验证收件人信息
	 */
	function cdstname() {

		dstname = $("#dst_name_modify").val();
		if (dstname == '') {
			$("#dst_name_modify").show();
			$("#dst_name_modify_error").show().find(".err-txt").text("寄件人不能为空");
			isDstName = false;
		} 
		else {
				$("#dst_name_modify_error").hide();
				isDstName = true;
			}
		}

		function cdstphone(){
			
			dstphone = $("#dst_phone_modify").val();
			if(dstphone == ''){
				$("#dst_phone_modify").show();
				$("#dst_phone_modify_error").show().find(".err-txt").text("电话不能为空");
				isDstPhone = false;
			}else{
				var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
				var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/;
				if(!(patrn1.exec(dstphone))){
					$("#dst_phone_modify_error").show().find(".err-txt").text("手机格式不对");
					isDstPhone = false;
				}
				else {
					$("#dst_phone_modify_error").hide();
					isDstPhone = true;
				}
			}
		}
		
		function cdstplc(){
			dstplc = $("#dst_plc_modify").val();
			if(dstplc == ''){
				$("#dst_plc_modify").show();
				$("#dst_plc_modify_error").show().find(".err-txt").text("地址不能为空");
				isDstPlc = false;
			}
			else if(dstplc.length > 30){
					$("#dst_plc_modify_error").show().find(".err-txt").text("地址过长");
					isDstPlc = false;
				}
			else{
				$("#dst_plc_modify_error").hide();
				isDstPlc = true;
			}
		}
		
		/**
		 * 验证快递员电话
		 */
		function ccurphone(){
			
			curphone = $("#cur_phone_modify").val();
			if(curphone == ''){
				$("#cur_phone_modify").show();
				$("#cur_phone_modify_error").show().find(".err-txt").text("电话不能为空");
				isCurPhone = false;
			}else{
				var patrn = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/;
				var patrn1 = /^1[3|4|5|8][0-9]\d{8}$/;
				if(!(patrn1.exec(curphone))){
					$("#cur_phone_modify_error").show().find(".err-txt").text("手机格式不对");
					isCurPhone = false;
				}
				else {
					$("#cur_phone_modify_error").hide();
					isCurPhone = true;
				}
			}
		}
		
		$("#form").submit(function(){
			//cordnum();
			corgname();
			corgphone();
			corgplc();
			cdstname();
			cdstphone();
			cdstplc();
			ccurphone();
			if (!isOrdNum || !isOrgName || !isOrgPhone || !isOrgPlc || !isDstName || !isDstPhone || !isDstPlc || !isCurPhone){
				return false;
			}
		});
	