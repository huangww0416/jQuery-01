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
<title>before和after</title>
</head>
<body>
	<h2>通过before与after添加元素</h2>
	<button id="bt1">点击通过jQuery的before添加元素</button>
    <button id="bt2">点击通过jQuery的after添加元素</button>
    <div class="aaron">
        <p class="test1">测试before</p>
    </div>
    <div class="aaron">
        <p class="test2">测试after</p>
    </div>
    
    <div class="content"></div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	$("#bt1").on('click', function() {
	    //在$(".test1")元素集合中的每个元素前面插入p元素
	    $(".test1").before('<p style="color:red">before,在匹配元素之前增加</p>', '<p style="color:red">多参数</p>')
	})
	
	$("#bt2").on('click', function() {
	    //在$(".test2")元素集合中的每个元素后面插入p元素
    	$(".test2").after('<p style="color:blue">after,在匹配元素之后增加</p>', '<p style="color:blue">多参数</p>')
	})
	
</script>
</html>