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
	<h2>each方法</h2>
    <div class="left first-div">
        <div class="div">
            <ul>
                <li>list item 1</li>
                <li>list item 2</li>
                <li>list item 3</li>
            </ul>
        </div>
        <div class="div">
            <ul>
                <li>list item 4</li>
                <li>list item 5</li>
                <li>list item 6</li>
            </ul>
        </div>
    </div>

    <br/>
    <button>点击：each方法遍历元素</button>
    <button>点击：each方法回调判断</button>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">
	
	
	$("button:first").click(function() {
	    //遍历所有的li
	    //修改每个li内的字体颜色
	    $("li").each(function(index, element) {
	    	//index下标从0开始
	        $(this).css('color','red');
	    });
	});
	
	$("button:last").click(function() {
	    //遍历所有的li
	    //修改偶数li内的字体颜色
	    $("li").each(function(index, element) {
	    	//index下标从0开始
	        if (index % 2) {
	            $(this).css('color','blue')
	        }
	    });
	});
	
</script>
</html>