<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
div {
	padding: 8px 0px;
	font-size: 12px;
	text-align: center;
	border: solid 1px #888;
}
</style>
<title>点击通过jQuery动态创建元素节点</title>
</head>
<body>
	<button>点击通过jQuery动态创建元素节点</button>
</body>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.8.3/jquery.js"></script>
<script type="text/javascript">

	var $body = $("body");
	
	$("button").on("click",function(){
		var div = "<div class='div1'><div class='div2'>动态创建DIV元素节点</div></div>";
		
		//讲div添加到$body里面
		$body.append(div);
	});
	
</script>
</html>