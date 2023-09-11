<%@page import="com.entity.Books"%>
<%@page import="com.db.Hibernetconfig"%>
<%@page import="com.dao.BookingDao"%>


<%@page import="java.util.List"%>

<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<c:if test ="${empty loginUser }">
<c:redirect url="../login.jsp"></c:redirect>
</c:if>
	<%@ include file="../componant/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-6 offset-md-2">

				<div class="card">
					<div class="card-header">
						<p class="text-center fs-3">Your Tickets</p>
						
						<c:if test="${not empty msg }">
						<p class ="text-center text-dark fs-4">${msg}</p>
						<c:remove var="msg"/>
						</c:if>
					</div>
					<div class="card-body">
						<table class="table">
							<thead>
								<tr>
									<th scope="col">Title</th>
									<th scope="col">Description</th>
									<th scope="col">Price</th>
									<th scope="col">Date</th>
									<th scope="col">Time</th>
									<th scope="col">Action</th>
								</tr>
							</thead>
							<tbody>
								<%
								HttpSession session1 = request.getSession();
								User user = (User) session1.getAttribute("loginUser");
								BookingDao dao = new BookingDao(Hibernetconfig.getSessionFactory());
								List<Books> tickets=dao.viewTicket(user);
								for(Books ticket:tickets){
								%>
								<tr>
									<th scope="row">
										<%=
										ticket.getFullName()
										%>
									</th>
									<td>
										<%=
										ticket.getTrainPnr()
										%>
									</td>
									<td>
										<%=
										ticket.getTrainName()
										%>
									</td>
									<td>
										<%=
										ticket.getTrainFrom()
										%>
									</td>
									<td>
										<%=
										ticket.getTrainEnd()
										%>
									</td>
									<td><a href ="../CancelTicketServlet?id=<%=ticket.getId() %>" class="btn btn-sm btn-primary me-1">Cancel</a> </td>
								</tr>
								<%
								}
								%>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>