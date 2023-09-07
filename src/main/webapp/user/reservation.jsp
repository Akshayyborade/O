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
</head>
<body>
<% List trains=(List)session.getAttribute("trains");
if (trains.isEmpty()){
	out.println("train not found");
}else{
	Train train = (Train)trains.get(0);
	out.println(train.toString());	
}
%>
</body>
</html>