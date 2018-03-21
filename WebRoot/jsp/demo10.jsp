<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.left,
    .right {
        width: 300px;
        height: 120px;
    }
    
    .left div,.right div {
        width: 100px;
        height: 90px;
        padding: 5px;
        margin: 5px;
        float: left;
        border: 1px solid #ccc;
        background: #bbffaa;
    }
</style>
<title>clone</title>
</head>
<body>
	<h2>通过clone克隆元素</h2>
    <div class="left">
        <div class="class1">点击,clone浅拷贝</div>
        <div class="class2">点击,clone深拷贝,可以继续触发创建</div>
    </div>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$(".class1").on('click', function() {
		//clone()克隆元素 不包括事件
	    $(".left").append( $(this).clone().css('color','red') );
	});
	
	
	$(".class2").on('click', function() {
	    //clone(true)克隆元素 包括事件
	    $(".left").append( $(this).clone(true).css('color','blue') );
	});
	
</script>
</html>