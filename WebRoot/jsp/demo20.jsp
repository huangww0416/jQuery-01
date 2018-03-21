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
<title>closest</title>
</head>
<body>
	<h2>closest方法()</h2>
    <div class="left first-div">
    <div class="div">
        <ul class="level-2">
            <li class="item-a">A</li>
            <li class="item-b">B
                <ul class="level-3">
                    <li class="item-1">1</li>
                    <li class="item-2">2</li>
                    <li class="item-3">3</li>
                </ul>
            </li>
            <li class="item-c">C</li>
        </ul>
    </div>
    </div>
    <br/>
    <button>点击：closest传递选择器 </button>
    <button>点击：closest传递一个元素对象</button>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$("button:first").click(function() {
		//从$('li.item-1')开始往上查找class为level-2的元素添加样式
	    $('li.item-1').closest('.level-2').css('border', '1px solid red');
	});
	
	$("button:last").click(function() {
		$('li.item-1').closest('.item-b').css('border', '1px solid blue');
	});
	
</script>
</html>