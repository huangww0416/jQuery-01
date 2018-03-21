<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	p {
        color: red;
    }
</style>
<title>detach</title>
</head>
<body>
	<p>P元素1，默认给绑定一个点击事件</p>
    <p>P元素2，默认给绑定一个点击事件</p>
    <button id="bt1">点击删除 p 元素</button>
    <button id="bt2">点击移动 p 元素</button>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	$('p').click(function(e) {
		//.this和event.target都是指当前dom对象
	    alert(e.target.innerHTML);
	});
	
	var p;
	
	$("#bt1").click(function() {
		//如果p标签不存在 则结束方法
	    if (!$("p").length) {
	    	return; //去重
	    }
	    //通过detach方法删除元素
	    //detach()方法返回值为 被删除的元素
	    p = $("p").detach()
	});
	
	$("#bt2").click(function() {
	    //把p元素在添加到页面中
	    //事件还是存在
	    $("body").append(p);
	});
	
</script>
</html>