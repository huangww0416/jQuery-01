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
<title>javascript动态创建元素节点</title>
</head>
<body>
	<div></div>
</body>
<script type="text/javascript">
	//匹配第一个找到的元素
	var body = document.querySelector("body");
	
	//为元素绑定事件
	body.addEventListener("click",function(){
		
		//创建2个div元素
		var div1 = document.createElement('div');
		var div2 = document.createElement('div');
		
		//给div1设置class属性
		div1.setAttribute("class","div1");
		
		//给div2设置class属性
		div2.className = 'div2';
		div2.innerHTML = '动态创建DIV元素节点';
		
		//把div2添加到div1里面
		div1.appendChild(div2);
		
		//把div2添加到body里面
		body.appendChild(div1);
	});
</script>
</html>