<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

	<div class="container-fluid">
		<div >
			<a class="navbar-brand" href="#"><i class="fa-solid fa-train"></i>
				RailConnect</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"><i
						class="fa-solid fa-house"></i> Home</a></li>
				<c:if test="${not empty loginUser}">
					<li class="nav-item"><a class="nav-link active"
						href="../home/add_expense.jsp"><i
							class="fa-solid fa-indian-rupee-sign"></i>Book Ticket</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="../home/view_expense.jsp"><i class="fa-solid fa-list"></i></i>
							Cancel Ticket</a></li>
				</c:if>

			</ul>

		</div>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<c:if test="${not empty loginUser}">
					<li class="nav-item"><a class="nav-link active"
						href="../home/user_profile.jsp"><i
							class="fa-solid fa-user-plus"></i> ${loginUser.fullName}</a></li>
					<li class="nav-item"><a class="nav-link active" href="logOut"><i
							class="fa-solid fa-right-to-bracket"></i> Logout</a></li>
				</c:if>
				<c:if test="${empty loginUser }">
					<li class="nav-item"><a class="nav-link active"
						href="registration.jsp"><i class="fa-solid fa-user-plus"></i>
							Register</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="login.jsp"><i class="fa-solid fa-right-to-bracket"></i>
							Login</a></li>
				</c:if>

			</ul>

		</div>
	</div>
</nav>