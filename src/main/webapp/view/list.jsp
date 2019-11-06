<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>
<form action="list" method="post">

	<table>
		<tr>
			<td><input type="checkbox" value="全选">全选</td>
			<td>影片名</td>
			<td>导演</td>
			<td>票价</td>
			<td>上映时间</td>
			<td>时长</td>
			<td>类型</td>
			<td>年代</td>
			<td>区域</td>
			<td>状态</td>
			<td>操作</td>
		</tr>
		<c:forEach items="${pg.list }" var="f">
			<tr>
				<td>${f.name }</td>
				<td>${f.author }</td>
				<td>${f.price }</td>
				<td>${f.dtime }</td>
				<td>${f.mlong }</td>
				<td>${f.type }</td>
				<td>${f.year }</td>
				<td>${f.country }</td>
				<td>${f.tai }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="250"> 
				<button name="pageNum" value="1">首页</button>			
				<button name="pageNum" value="${pg.prePage?0:pg.prePage }">上一页</button>			
				<button name="pageNum" value="${pg.nextPage?0:pg.nextPage }">下一页</button>			
				<button name="pageNum" value="${pg.pages }">尾页</button>			
			</td>
		</tr>
	</table>
</form>
</body>
</html>