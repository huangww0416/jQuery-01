<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.test1 {
        background: #bbffaa;
    }
    
    .test2 {
        background: yellow;
    }
</style>
<title>insertBefore和insertAfter</title>
</head>
<body>
	<h2>通过insertBefore与insertAfter添加元素</h2>
    <button id="bt1">点击通过jQuery的insertBefore添加元素</button>
    <button id="bt2">点击通过jQuery的insertAfter添加元素</button>
    <div class="aaron">
        <p class="test1">测试insertBefore,不支持多参数</p>
    </div>
    <div class="aaron">
        <p class="test2">测试insertAfter,不支持多参数</p>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	$("#bt1").on('click', function() {
		//把新元素插入$(".test1")元素前面
	    //不支持多参数
	    $('<p style="color:red">测试insertBefore方法增加</p>').insertBefore($(".test1"));
	});
	
	$("#bt2").on('click', function() {
	    //把新元素插入$(".test2")元素后面
	    //不支持多参数
	    $('<p style="color:red">测试insertAfter方法增加</p>').insertAfter($(".test2"));
	});
	
</script>
</html>