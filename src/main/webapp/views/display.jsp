<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Product_management</title>
<!-- Bootstrap CSS -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet" />
<style>
body {
	background-color: #f8f9fa; /* Light grey background */
	margin: 20px;
}

.table-custom {
	background: linear-gradient(135deg, #343a40, #454d55);
	/* Gradient dark */
	color: white;
	border-radius: 10px; /* Rounded corners */
	overflow: hidden;
}

.table-custom thead th {
	background-color: #23272b; /* Darker header */
	text-transform: uppercase;
	letter-spacing: 1px;
}

.table-custom tbody tr:hover {
	background-color: #495057; /* Hover effect */
	color: #f8f9fa;
	transition: 0.3s ease-in-out;
}

.table-custom th, .table-custom td {
	text-align: center; /* Center align text */
	padding: 12px;
}
</style>
</head>
<body>

	<%@ include file="navbar.jsp"%>
	${products}
	<div class="container">
		<h2 class="text-center mb-4">Product Management System</h2>
		<table class="table table-dark table-custom">
			<thead class="table-info">
				<tr>
					<th scope="col">pid</th>
					<th scope="col">name</th>
					<th scope="col">price</th>
					<th scope="col">qty</th>
					<th scope="col">category</th>
					<th scope="col">Action</th>



				</tr>

			</thead>


			<tbody>
				<c:forEach var="p" items="${products}">
					<tr>
						<th scope="row">${p.pid}</th>
						<td>${p.name }</td>
						<td>${p.price}</td>
						<td>${p.qty}</td>
						<td>${p.category}</td>
						<td><a href="view-product?pid=${p.pid}"
							class="btn btn-primary btn-sm">Update</a> <a
							href="delete-product?pid=${p.pid}"
							class="btn btn-danger btn-sm ml-2">Delete</a></td>

					</tr>

				</c:forEach>


			</tbody>
		</table>
	</div>
</body>
</html>
