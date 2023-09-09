<%@page import="com.entity.User"%>
<%@page import="com.db.Hibernetconfig"%>
<%@page import="com.dao.TrainDao"%>
<%@page import="com.entity.Train"%>
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
</head>
<body>
	<%@ include file="../componant/navbar.jsp"%>
	<div class="container p-5">
		<c:if test="${empty loginUser }">
			<c:redirect url="../login.jsp"></c:redirect>
		</c:if>
		<%
int id;
try {
    id = Integer.parseInt(request.getParameter("id"));
} catch (NumberFormatException e) {
    // Handle the case where 'id' parameter is not a valid integer
    id = -1; // or any other default value or error handling logic
}

TrainDao dao = new TrainDao(Hibernetconfig.getSessionFactory());
Train train = dao.geTrain(id);
User user = (User) request.getAttribute("loginUser");

// Check if 'train' is not null before accessing its properties
String trainNo = (train != null) ? train.getTrainNo() : "";
String trainName = (train != null) ? train.getTrainName() : "";
String startTime = (train != null) ? train.getStartTime() : "";
String endTime = (train != null) ? train.getEndTime() : "";
%>


		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card card-sh">
					<div class="card-header">
						<p class="text-center fs-3">Book Here</p>
						<c:if test="${not empty msg }">
							<p class="text-center text-dark fs-4">${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="../BookServlet" method="post">
							<div class="mb-3">
								<label>Your Name</label> <input type="text" name="fullName"
									class="form-control" value="akshay">
							</div>

							<div class="mb-3">
								<label>Train No</label> <input type="text" name="trainNo"
									class="form-control" value="<%=trainNo %>"><label>Train
									Name</label> <input type="text" name="trainName" class="form-control"
									value="<%=trainName %>">
							</div>
							<div class="mb-3">
								<label>No Of Person</label> <input type="text" name="noPerson"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>Class</label> <select class="form-select"
									aria-label="Default select example" name="class" required>

									<option value="1st">I</option>
									<option value="2nd">II</option>
									<option value="3rd">II</option>
								</select>
							</div>
							<div class="mb-3">
								<label>Date</label> <input type="date" name="date"
									class="form-control">
							</div>
							<div class="mb-3">
								<label>From</label> <input type="text" name="from"
									class="form-control" value="<%=startTime %>">
							</div>
							<div class="mb-3">
								<label>Destination</label> <input type="text" name="end"
									class="form-control" value="<%=endTime %>">
							</div>
							<button class="btn btn-dark col-md-12">PAYMENT</button>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

</body>
</html>