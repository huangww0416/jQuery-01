<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.left {
        width: auto;
        height: 150px;
    }
    
    .left div {
        width: 150px;
        height: 100px;
        padding: 5px;
        margin: 5px;
        float: left;
        background: #bbffaa;
        border: 1px solid #ccc;
    }
    
    a {
        display: block;
    }
</style>
<title>prev</title>
</head>
<body>
	<h2>prev方法()</h2>
    <div class="left first-div">
        <div class="div">
            <ul class="level-1">
                <li class="item-1">1</li>
                <li class="item-2">2</li>
                <li class="item-3">3</li>
            </ul>
        </div>
        <div class="div">
            <ul class="level-2">
                <li class="item-1">1</li>
                <li class="item-2">2</li>
                <li class="item-3">3</li>
            </ul>
        </div>
        <div class="div">
            <ul class="level-3">
                <li class="item-1">1</li>
                <li class="item-2">2</li>
                <li class="item-3">3</li>
            </ul>
        </div>
    </div>
    <button>点击：prev无参数</button>
    <button>点击：prev传递选择器</button>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$("button:first").click(function() {
		//给$('.item-2')同级别上一个元素添加样式
	    $('.item-2').prev().css('border', '1px solid red');
	});
	
	$("button:last").click(function() {
	    //找到所有class=item-2的li
	    //然后筛选出最后一个，加上蓝色的边
	   $('.item-3').prev(':last').css('border', '1px solid blue');
	});
	
</script>
</html>