
		//首页查询快递验证
		var isIndexSearch = false;
		$(document).ready(function(){
			$("#index_search").focus(function(){
				$("#index_search_error").hide();
			}).blur(function(){
				cindexsearch();
			});
		});
		function cindexsearch(){
			indexsearch = $("#index_search").val();
			if(indexsearch == ''){
				$("#index_search").show;
				$("#index_search_error").show().find(".err-txt").text("订单号不能为空");
				isIndexSearch=false;
			}
			else{
				var patrn = /^\d{12}$/;
				if(!(patrn.exec(indexsearch))){
					$("#index_search").show();
					$("#index_search_error").show().find(".err-txt").text("订单号长度为12位");
					isIndexSearch = false;
				}
				else{
						$("#index_search_error").hide();
						isIndexSearch = true;
					}
			} 
		}
		$("#index_form").submit(function(){
			cindexsearch();
			if (!isIndexSearch){
				return false;
			}
		});
		
		$("#index_submit").click(function(){
			cindexsearch();
			if (isIndexSearch){
				$("#index_form").submit();
			}
		});