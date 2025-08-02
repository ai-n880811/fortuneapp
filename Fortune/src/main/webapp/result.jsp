<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="Bean.Fortune" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>運勢結果</title>
<link rel="stylesheet" href="./style.css">
</head>
<body>


<!-- ここでfortuneを受け取る -->
 
 <%
Fortune f = (Fortune) request.getAttribute("fortune");
%>


<!-- ここでfortuneの中身を取り出す -->

<p style="color:<%= f.getColor() %>;">
    今日の運勢は <strong><%= f.getResult() %></strong> です！<br>
    <%= f.getMessage() %>
</p>


<br>
<p><h2>	もう一度占う</h2></p>

<!-- 再度占う用のリンク -->
<form action="./FortuneAction" method="post">
		<button type="submit" name="type" value="love">恋愛運</button>
		<button type="submit" name="type" value="work">仕事運</button>
		<button type="submit" name="type" value="money">金運</button>
	</form>

</body>
</html>