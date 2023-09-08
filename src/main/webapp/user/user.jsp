<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../componant/allcss.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@page isELIgnored ="false" %>
	<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Inconsolata:700');

* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

html, body {
  width: 100%;
  height: 100%;
}

body {
  background: #252525;
}

.container {
  position: absolute;
  margin: auto;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  width: 300px;
  height: 100px;
  .search {
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 80px;
    height: 80px;
    background: #ef5051;
    border-radius: 50%;
    transition: all 1s;
    z-index: 4;
    box-shadow: 0 0 25px 0 rgba(0, 0, 0, 0.4);
    // box-shadow: 0 0 25px 0 crimson;
    &:hover {
      cursor: pointer;
    }
    &::before {
      content: "";
      position: absolute;
      margin: auto;
      top: 22px;
      right: 0;
      bottom: 0;
      left: 22px;
      width: 12px;
      height: 2px;
      background: white;
      transform: rotate(45deg);
      transition: all .5s;
    }
    &::after {
      content: "";
      position: absolute;
      margin: auto;
      top: -5px;
      right: 0;
      bottom: 0;
      left: -5px;
      width: 25px;
      height: 25px;
      border-radius: 50%;
      border: 2px solid white;
      transition: all .5s;
    }
  }
  input {
    font-family: 'Inconsolata', monospace;
    position: absolute;
    margin: auto;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    width: 50px;
    height: 50px;
    outline: none;
    border: none;
    // border-bottom: 1px solid rgba(255, 255, 255, 0.2);
    background: #ef5051;
    color: white;
    text-shadow: 0 0 10px #ef5051;
    padding: 0 80px 0 20px;
    border-radius: 30px;
    box-shadow: 0 0 25px 0 crimson,
                0 20px 25px 0 rgba(0, 0, 0, 0.2);
    // box-shadow: inset 0 0 25px 0 rgba(0, 0, 0, 0.5);
    transition: all 1s;
    opacity: 0;
    z-index: 5;
    font-weight: bolder;
    letter-spacing: 0.1em;
    &:hover {
      cursor: pointer;
    }
    &:focus {
      width: 300px;
      opacity: 1;
      cursor: text;
    }
    &:focus ~ .search {
      right: -250px;
      background: #151515;
      z-index: 6;
      &::before {
        top: 0;
        left: 0;
        width: 25px;
      }
      &::after {
        top: 0;
        left: 0;
        width: 25px;
        height: 2px;
        border: none;
        background: white;
        border-radius: 0%;
        transform: rotate(-45deg);
      }
    }
    &::placeholder {
      color: white;
      opacity: 0.5;
      font-weight: bolder;
    }
  }
}
.h2, h2 {
	font-size: calc(1.325rem + .9vw);
	color: white;
	text-align: center;
  margin-top: 13%;
}
	</style>
</head>
<body>
<%@ include file="../componant/navbar.jsp"%>
<h2>Hi Search Your Train...</h2>
<div class="container">
<form action="../SearchServlet" method="post"><input type="text" placeholder="Search..." action="../SearchServlet" name="query"></form>
  
  <div class="search"> </div>

</div>
<div><c:if test="${not empty msg }">
		<p class="text-center text-danger fs-4">${msg}</p>
		<c:remove var="msg" />
	</c:if></div>
</body>
</html>