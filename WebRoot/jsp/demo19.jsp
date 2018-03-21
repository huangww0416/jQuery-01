<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.left {
        width: auto;
        height: 350px;
    }
    
    .left div {
        width: 350px;
        height: 150px;
        padding: 5px;
        margin: 5px;
        float: left;
        background: #bbffaa;
        border: 1px solid #ccc;
    }
    
    span {
        color: blue;
    }
</style>
<title>parents</title>
</head>
<body>
	<h2>parents方法()</h2>
    <div class="left first-div">

        <div class="div">
            <ul class="level-2">
                <!-- A -->
                <li class="item-a">A</li>
                <!-- B -->
                <li class="item-b">B
                    <ul class="level-3">
                        <li class="item-1">1</li>
                        <li class="item-2">2</li>
                        <li class="item-3">3</li>
                    </ul>
                </li>
                <!-- C -->
                <li class="item-c">C</li>
            </ul>
        </div>

        <div class="div">
            <ul class="level-2">
                <!-- A -->
                <li class="item-a">A</li>
                <!-- B -->
                <li class="item-b">B
                    <ul class="level-3">
                        <li class="item-1">1</li>
                        <li class="item-2">2</li>
                        <li class="item-3">3</li>
                    </ul>
                </li>
                <!-- C -->
                <li class="item-c">C</li>
            </ul>
        </div>

    </div>

    <button>点击：parents无参数</button>
    <button>点击：parents传递选择器</button>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$("button:first").click(function() {
		//找到所有$('.item-b')元素所有的祖辈元素添加样式
	    $('.item-b').parents().css('border', '2px solid red');
	 });
	 
	 $("button:last").click(function() {
	     //找到当前元素的所有祖辈元素,筛选出class="first-div"的元素
	     //并且附上一个边
	     $('.item-b').parents('.first-div').css('border', '2px solid blue');
	 });
	
</script>
</html>