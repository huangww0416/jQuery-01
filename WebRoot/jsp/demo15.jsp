<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.left,
    .right {
        width: 250px;
        height: 130px;
    }
    
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
<title>wrapInner</title>
</head>
<body>
	<h2>DOM包裹wrapInner()方法</h2>
    <div class="left">
        <div class="aaron1">点击,通过wrapInner方法给所有div元素增加内部父容器p</div>
        <div class="aaron2">点击,通过wrapInner的回调方法给每个div元素增加内部父容器a</div>
    </div>
    <div class="right">
        <div class="right1"><span>p元素</span></div>
        <div class="right1">p元素</div>
    </div>
    <div class="left">
        <div class="left1">a元素</div>
        <div class="left1">a元素</div>
    </div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$(".aaron1").on('click', function() {
	    //给所有$('.right1'元素中的子元素增加父容器p
	   $('.right1').wrapInner('<p></p>');
	});
	
	$(".aaron2").on('click', function() {
	    //wrapInner接受一个回调函数
	    //每一次遍历this都指向了合集中每一个class=left1的div元素
	    $('.left1').wrapInner(function() {
	        return '<a></a>';
	    });
	});
	
</script>
</html>