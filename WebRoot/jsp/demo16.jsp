<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.left {
        width: auto;
        height: 120px;
    }
    
    .left div {
        width: 150px;
        height: 70px;
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
<title>children</title>
</head>
<body>
	<h2>children方法()</h2>
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
    <button id="bt1">点击：children无参数</button>
    <button id="bt2">点击：children传递表达式</button>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$("#bt1").click(function() {
		//children() 查找所有第一代子元素
		$('.div').children().css('border', '3px solid red');
	});
	
	$("#bt2").click(function() {
	    //找到所有class=div的元素
	    //找到其对应的子元素ul，然后筛选出最后一个，给边宽加上颜色
	    $('.div').children(':last').css('border', '3px solid blue')
	});
	
</script>
</html>