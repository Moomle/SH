$(document).ready(function(){
/*$('.wd-enter').bind({
	mouseover:function(){
		$(this).find('ul').show();
		},
	mouseout:function(){
		$(this).find('ul').hide();
		}
	});

*/
$('.input-box input, .textarea-box textarea, ._textarea textarea').each(function(){
	if(this.value!=''){
		$(this).parent().addClass('hid-tip');
		}
		else{
			$(this).parent().removeClass('hid-tip');
			}
	});
	
	
$('.input-box input, .textarea-box textarea,._textarea textarea').bind({
		focus:function(){ 
			$(this).parent().addClass('bor_');
			$(this).parent().addClass('hid-tip');
			if(this.value !=""){
				$(this).prev('i.del').show();
				}
		}, 
		blur:function(){ 
			$(this).parent().removeClass('bor_');
			if(this.value ==""){
			$(this).parent().removeClass('hid-tip');
			$(this).prev('i.del').hide();
			}
		else{
			$(this).parent().addClass('hid-tip');
			}
			
		} 
	}); 

	$('.point').click(function(){
		$(this).prev().focus();
		});	


});		


	
//ÄÚÈÝ×Ö·ûÌáÊ¾
function check_textarea(which,num,numBox){
		 var maxChars = num;
		if(which.value.length > maxChars){
			which.value = which.value.substring(0,maxChars);
			return false; 
		}else{
			var curr = maxChars - which.value.length;
			$('.'+numBox).text(curr);
			return true;
		}
	   }	