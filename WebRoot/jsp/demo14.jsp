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
        height: 120px;
    }
    
    .left div,
    .right div {
        width: 100px;
        /*height: 120px;*/
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
<title>wrapAll</title>
</head>
<body>
	<h2>DOM包裹wrapAll()方法</h2>
    <div class="left">
        <div class="aaron1">点击,通过wrapAll方法给所有P元素增加父容器div</div>
        <div class="aaron2">点击,通过wrapAll的回调方法给每个a元素增加父容器div</div>
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
	    //给所有p元素，增加一个父容器div	如果p标签在不同位置  会自动移动集中一起 在增加一个父容器
	    $('p').wrapAll('<div></div>');
	});
	
	$(".aaron2").on('click', function() {
	    //wrapAll接受一个回调函数
	    //每一次遍历this都指向了合集中每一个a元素
	    //给每个a标签增加一个父容器div
	    $('a').wrapAll(function() {
	        return '<div></div>'
	    });
	})
	
</script>
</html>