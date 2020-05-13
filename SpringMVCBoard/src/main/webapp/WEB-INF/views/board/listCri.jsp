<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <%@ page session="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="col-mg-12">
	<table class="table table-bordered">
		<tr>
			<th style="width: 10px"> BNO </th>
			<th > Title </th>
			<th > Writer </th>
			<th > Regdate </th>
			<th style="width: 40px"> Viewcnt </th>
			</tr>
			<c:forEach items="${list }" var="boardVO">
			<%-- <span>${boardVO.bno}</span>
			<span>${boardVO.title}</span>
			<span>${boardVO.writer}</span>
			<span>${boardVO.regdate}</span>
			<span>${boardVO.viewcnt}</span> --%>
			
			 <tr>
				<td> ${boardVO.bno }</td>
				<td> <a href=''>${boardVO.title }</a></td>
				<td> ${boardVO.writer }</td>
				<td> <fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${boardVO.regdate }"/></td>
				<td><span class="badge bg-red"> ${boardVO.bno }</span></td>
				</tr> 
				</c:forEach>
	</table>
	</div>
	
</body>
<script>
var result = '${result}';
if(result == 'success') {
	alert("처리 완료");
}

</script>
</html>