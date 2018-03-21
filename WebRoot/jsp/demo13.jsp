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
        height: 120px;
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
<title>unwrap</title>
</head>
<body>
	<h2>DOM包裹unwrap()方法</h2>
    <div class="left">
        <div class="aaron1">点击,通过unwrap方法给p元素删除父容器div</div>
        <div class="aaron2">点击,通过unwrap的回调方法给a元素删除父容器div</div>
    </div>
    <div class="right">
        <div>
            <p>p元素</p>
        </div>
        <div>
            <p>p元素</p>
        </div>
    </div>
    <div class="left">
        <div>
            <a>a元素</a>
        </div>
        <div>
            <a>a元素</a>
        </div>
    </div>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$(".aaron1").on('click', function() {
	    //找到所有p元素，删除父容器div 加不加参数都不影响
	    $('p').unwrap('加不加参数都不影响');
	});
	
	$(".aaron2").on('click', function() {
	    //找到所有p元素，删除父容器div
	    $('a').unwrap(function() {
	        return '加不加参数都不影响';
	    });
	});
	
</script>
</html>