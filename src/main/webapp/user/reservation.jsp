<%@page import="com.entity.Train"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../componant/allcss.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
</head>
<body>
	<%@ include file="../componant/navbar.jsp"%>
	<c:if test="${empty loginUser }">
		<c:redirect url="../login.jsp"></c:redirect>
	</c:if>

	<table class="table">

		<thead>
			<tr>
				<th scope="col">Train No.</th>
				<th scope="col">Train Name</th>
				<th scope="col">Start</th>
				<th scope="col">End</th>
				<th scope="col">Book</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<Train> trains = (List) session.getAttribute("trains");
			if (trains.isEmpty()) {
				out.println("train not found");
			} else {

				for (Train train : trains) {
			%>
			<tr>
				<th scope="row"><%=train.getTrainNo()%></th>
				<td><%=train.getTrainName()%></td>
				<td><%=train.getStartTime()%></td>
				<td><%=train.getEndTime()%></td>
				<td><a href="book.jsp?id=<%=train.getId()%>"
					class="btn btn-sm btn-primary me-1">Book</a></td>
			</tr>
			<%
			}
			}
			%>
		</tbody>
	</table>
</body>
</html>