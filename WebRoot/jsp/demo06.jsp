<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
	div {
        background: #bbffaa;
        width: 300px;
    }
</style>
<title>empty</title>
</head>
<body>
	<h2>通过empty移除元素</h2>
    <div id="test">
        <p>p元素1</p>
        <p>p元素2</p>
    </div>
    <button>点击通过jQuery的empty移除元素</button>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	$("button").on('click', function() {
	    //通过empty移除了当前div元素下的所有p元素
	    //但是本身id=test的div元素没有被删除
	    $("#test").empty()
	})
	
</script>
</html>