<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	p{
        border: 1px solid red;
    }
</style>
<title>remove和detach区别</title>
</head>
<body>
	<h3>给页面2个p元素节点绑定点击事件,点击后弹出自己本身的节点内容</h3>
    <p>元素p1，同时绑定点击事件</p>
    <p>元素p2，同时绑定点击事件</p>
    <h3>通过点击2个按钮后观察方法处理的区别</h3>
    <button>点击通过remove处理元素p1</button>
    <button>点击通过detach处理元素p2</button>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	//给页面上2个p元素都绑定事件
	$('p').click(function(e) {
	    alert(e.target.innerHTML);
	});
	
	//给第一个button标签绑定事件
	$("button:first").click(function() {
		//remove()删除的元素 返回的对象事件丢失
	    var p = $("p:first").remove();
	    p.css('color','red').text('p1通过remove处理后,点击该元素,事件丢失')
	    $("body").append(p);
	});
	
	$("button:last").click(function() {
		//detach()删除的元素 返回的对象事件还在
		//第一个p标签被删除后  第二个p标签就成为第一个了 所以两个都是删除$("p:first")元素
	    var p = $("p:first").detach();
	    p.css('color','blue').text('p2通过detach处理后,点击该元素事件存在')
	    $("body").append(p);
	});
	
</script>
</html>