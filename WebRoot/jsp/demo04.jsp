<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.aaron1{
        border: 1px solid red;
    }
    .aaron1 p {
        color: red;
    }
    .aaron2{
        border: 1px solid blue;
    }
    .aaron2 p {
        color: blue;
    }
</style>
<title>prepend和prependTo</title>
</head>
<body>
	<h2>通过prepend与prependTo添加元素</h2>
    <button id="bt1">点击通过jQuery的prepend添加元素</button>
    <button id="bt2">点击通过jQuery的prependTo添加元素</button>
    <div class="aaron1">
        <p>测试prepend</p>
    </div>
    <div class="aaron2">
        <p>测试prependTo</p>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	$("#bt1").on('click', function() {
	    //找到class="aaron1"的div节点
	    //在$('.aaron1')元素内部的首位置添加一个新的p节点
	    $('.aaron1').prepend('<p>prepend增加的p元素</p>')
	})
	
	$("#bt2").on('click', function() {
	    //找到class="aaron2"的div节点
	    //把一个新的p节点添加到$('.aaron2')元素内部的首位置
	    $('<p>prependTo增加的p元素</p>').prependTo($('.aaron2'))
	})
	
</script>
</html>