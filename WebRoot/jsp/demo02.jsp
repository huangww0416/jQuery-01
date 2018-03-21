<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.content {
	        width: 300px;
	}
	.append{
	    background-color: blue;
	}
	.appendTo{
	    background-color: red;
	}
</style>
<title>append和appendTo</title>
</head>
<body>
	<button id="bt1">点击通过jQuery的append添加元素</button>
    <button id="bt2">点击通过jQuery的appendTo添加元素</button>
    
    <div class="content"></div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	$("#bt1").on("click",function(){
		//在$(".content")里面添加元素
		$(".content").append('<div class="append">通过append方法添加的元素</div>');
	});
	
	$("#bt2").on("click",function(){
		//把元素添加到$(".content")里面
		$('<div class="appendTo">通过appendTo方法添加的元素</div>').appendTo($(".content"));
	});
	
</script>
</html>