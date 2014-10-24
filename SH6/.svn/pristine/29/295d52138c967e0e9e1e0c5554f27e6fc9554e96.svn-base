<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Pager Test Page</title>
<script>
	$(function(){
		$("#pagination").paging(number, {
			format:'[< ncnnn >]',
			onSelect: function(page){
				
			},
			onFormat:function(type){
				switch(type){
				case 'block':
					return '<a>' + this.value +'</a>';
				case 'next':
					return '<a>&gt;</a>';
				case 'prev':
					return '<a>&lt;</a>';
				case 'first':
					return '<a>first</a>';
				case 'last':
					return '<a>last</a>';
				}
			}
			
		});
	});
</script>
</head>
<body>
	<div id="pagination">
		
	</div>
</body>
</html>