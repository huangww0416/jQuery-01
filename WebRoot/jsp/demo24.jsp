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
        height: 120px;
        padding: 5px;
        margin: 5px;
        float: left;
        background: #bbffaa;
        border: 1px solid #ccc;
    }
</style>
<title>add</title>
</head>
<body>
	<h2>add方法()</h2>
    <div class="left first-div">
        <div class="div">
            <ul>
                <li>list item 1</li>
                <li>list item 2</li>
                <li>list item 3</li>
            </ul>
            <p>新的p元素</p>
        </div>
    </div>
    <div class="right"></div>
    <br/>
    <button>点击：add传递元素标签</button>
    <button>点击：add传递html结构</button>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$("button:first").click(function() {
	    //给$('li')和p标签元素添加样式
	    $('li').add('p').css('background', 'red');
	});
	
	$("button:last").click(function() {
	    //把html结构'<p>新的p元素</p>'
	    //加入到li的合集中，为了能够在页面上显示
	    //需要再重新appendTo到指定的节点处
	    //值得注意：整个结构位置都改变了
	    $('li').add('<p>新的p元素</p>').appendTo($('.right'));
	});
	
</script>
</html>