<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.left div,
    .right div {
        width: 100px;
        padding: 5px;
        margin: 5px;
        float: left;
        border: 1px solid #ccc;
        background: #bbffaa;
    }
    
    .right div {
        background: yellow;
    }
    
    p {
        border: 1px solid red;
    }
    
    a {
        border: 1px solid blue;
    }
</style>
<title>wrap</title>
</head>
<body>
	<h2>DOM包裹wrap()方法</h2>
    <div class="left">
        <button class="aaron1">点击,通过wrap方法给p元素增加父容器div</button>
        <button class="aaron2">点击,通过wrap的回调方法给a元素增加父容器div</div>
    </div>
    <div class="right">
        <p>p元素</p>
        <p>p元素</p>
    </div>
    <div class="left">
        <a>a元素</a>
        <a>a元素</a>
    </div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$(".aaron1").on('click', function() {
	    //给每个p元素，增加父容器div
	    $('p').wrap('<div></div>');
	});
	
	$(".aaron2").on('click', function() {
		//给每个a标签元素增加父容器
	    $('a').wrap(function() {
	        return '<div class="' + $(this).text() + '" />';
	    });
	});
	
</script>
</html>