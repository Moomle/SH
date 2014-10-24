//站内信发送消息内容验证
	var ispostContent = false;
	var isSeqItem = false;
	$(document).ready(function(){
			$("#postContent").focus(function(){
				$("#postContent_error").hide();
			}).blur(function(){
				cpostContent();
			});
			
			$("#seqItem").focus(function(){
				$("#seqItem_error").hide();
			}).blur(function(){
				cseqItem();
			});
//***********站内信******************
			$("#submsg").click(function(){
				cseqItem();
				cpostContent();
//				if (ispostContent){
//					$("#formmsg").submit();
//				}
			});
			
//***************查询*************************	
			$("#submitLogined").click(function(){
				cdh();
				if (isDh){
					$("#formLogined").submit();
				}
			});
		});
		function cpostContent(){
			postContent = $("#postContent").val();
			if(postContent == ''){
				$("#postContent").show;
				$("#postContent_error").show().find(".err-txt").text("内容不能为空");
				ispostContent=false;
			}
			else{
				$("#postContent_error").hide();
				ispostContent = true;
			}
		}
		$("#formmsg").submit(function(){
			cpostContent();
			if (!ispostContent){
				return false;
			}
		});
		
		//验证站内信联系人是否为空
		function cseqItem(){
			seqItem = $("#seqItem").children().length;
			if (seqItem == 0){
				$("#seqItem").show();
				$("#seqItem_error").show().find(".err-txt").text("收信人不能为空");
				isSeqItem = false;
			} else {
				$("#seqItem_error").hide();
				isSeqItem = true;
			}
		}
		
		
		
		//查询快递验证
		var isDh = false;
		$(document).ready(function(){
			//验证订单号
			$("#dh").focus(function(){
				$("#dh_error").hide();
			}).blur(function(){
				cdh();
			});
		});
		function cdh(){
			dh = $("#dh").val();
			if(dh == ''){
				$("#dh").show;
				$("#dh_error").show().find(".err-txt").text("订单号不能为空");
				isDh=false;
			}
			else{
				var patrn = /^\d{12}$/;
				if(!(patrn.exec(dh))){
					$("#dh").show();
					$("#dh_error").show().find(".err-txt").text("订单号长度为12位");
					isDh = false;
				}
				else{
						$("#dh_error").hide();
						isDh = true;
					}
			} 
		}
		$("#formLogined").submit(function(){
			cdh();
			if (!isDh){
				return false;
			}
		});
		
		