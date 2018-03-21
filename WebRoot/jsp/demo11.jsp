<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.right div {
        background: yellow;
    }
</style>
<title>replaceWith和replaceAll</title>
</head>
<body>
	<h2>replaceWith()和replaceAll()</h2>
    <div class="left">
        <button class="bt1">点击,通过replaceWith替换内容</button>
        <button class="bt2">点击,通过rreplaceAll替换内容</button>
    </div>
    <div class="right">
        <div>
            <p>第一段</p>
            <p>第二段</p>
            <p>第三段</p>
        </div>
        <div>
            <p>第四段</p>
            <p>第五段</p>
            <p>第六段</p>
        </div>
    </div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	//只克隆节点
	//不克隆事件
	$(".bt1").on('click', function() {
	    //找到内容为第二段的p元素
	    //通过replaceWith删除$(".right > div:first p:eq(1)")元素并替换成新的元素
	    $(".right > div:first p:eq(1)").replaceWith('<a style="color:red">replaceWith替换第二段的内容</a>');
	});
	
	//找到内容为第六段的p元素
	//通过replaceAll删除并替换这个节点
	$(".bt2").on('click', function() {
		//通过replaceAll把$('<a style="color:red">replaceAll替换第六段的内容</a>')元素替换成('.right > div:last p:last')元素
	    $('<a style="color:red">replaceAll替换第六段的内容</a>').replaceAll('.right > div:last p:last');
	});
	
</script>
</html>