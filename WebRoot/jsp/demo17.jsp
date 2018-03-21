<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	.left {
        width: auto;
        height: 200px;
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
    
    span {
        color: blue;
    }
</style>
<title>children</title>
</head>
<body>
	<h2>find方法()</h2>
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
                <li class="item-2 test">2</li>
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
    <button>点击：find传递表达式</button>
    <br/>
    <br/>
    <h3>find表达式</h3>
    <div style="border:1px solid red;">
        <p>
            <span>测试1</span>
            <a>测试2</a>
        </p>
        <p>
            <span>慕课网1</span>
            <a>慕课网2</a>
        </p>
        <div>
            <span>Aaron1</span>
            <a>Aaron2</a>
        </div>
    </div>
    <br/>
    <br/>
    <button>点击：find传递$对象</button>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$("button:first").click(function() {
		//找到class为left中所有的li中的最后一个li
	    $('.left').find('li:last').css('border', '1px solid red')
	})
	 
	$("button:last").click(function() {
	    //找到所有p元素，然后筛选出子元素是span标签的节点
	    //改变其字体颜色
	    var $spans = $('span');
	    $("p").find($spans).css('color', 'red');
	})
	
</script>
</html>