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
<title>remove</title>
</head>
<body>
	<h2>通过jQuery remove方法移除元素</h2>
    <div class="test1">
        <p>p元素1</p>
        <p>p元素2</p>
    </div>
    <div class="test2">
        <p>p元素3</p>
        <p>p元素4</p>
    </div>
    <button>通过点击jQuery的remove移除元素</button>
    <button>通过点击jQuery的remove移除指定元素</button>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	$("button:first").on('click', function() {
	    //删除整个 class=test1的div节点
	    $(".test1").remove();
	});
	
	$("button:last").on('click', function() {
	    //找到所有p元素中，包含了3的元素
	    //这个也是一个过滤器的处理
	    $("p").remove(":contains('3')");
	});
	
</script>
</html>