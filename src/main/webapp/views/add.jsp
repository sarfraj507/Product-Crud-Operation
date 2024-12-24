<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Product</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- Internal CSS -->
<style>
body {
	background: linear-gradient(to right, #e1eec3, #f05053);
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
}

.form-container {
	width: 50%;
	margin: 80px auto 0; /* Adjusted for navbar spacing */
	padding: 30px;
	background: linear-gradient(to right, #ffffff, #cfd9df);
	border-radius: 15px;
	box-shadow: 0 10px 20px rgba(0, 0, 0, 0.3);
	text-align: center;
}

.form-title {
	margin-bottom: 20px;
	font-size: 2rem;
	text-transform: uppercase;
	letter-spacing: 1.5px;
	color: #333;
}

.form-group label {
	font-weight: bold;
	color: #555;
}

.form-group input, .form-group select {
	width: 100%;
	padding: 10px;
	font-size: 1rem;
	border: none;
	border-radius: 5px;
	background-color: #f7f7f7;
	box-shadow: inset 0 2px 4px rgba(0, 0, 0, 0.1);
}

.btn-submit {
	width: 100%;
	padding: 12px;
	font-size: 1.2rem;
	font-weight: bold;
	text-transform: uppercase;
	border: none;
	border-radius: 25px;
	background: linear-gradient(135deg, #64b3f4, #c2e59c);
	color: white;
	cursor: pointer;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.3);
	transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.btn-submit:hover {
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.4);
	transform: translateY(-3px);
}
</style>
</head>
<body>
	<!-- Include Navbar -->
	<jsp:include page="navbar.jsp" />

	<!-- Add Product Form -->
	<div class="form-container">
		<h1 class="form-title">Add Product</h1>
		<form action="insert-product" method="post">
			<div class="form-group">
				<label for="productName">Product Name:</label> <input type="text"
					id="productName" name="name" placeholder="Enter product name"
					required>
			</div>
			<div class="form-group">
				<label for="price">Price:</label> <input type="number" id="price"
					name="price" placeholder="Enter product price" step="0.01" required>
			</div>
			<div class="form-group">
				<label for="quantity">Quantity:</label> <input type="number"
					id="quantity" name="qty" placeholder="Enter product quantity"
					required>
			</div>
			<div class="form-group">
				<label for="category">Category:</label> <input type="text"
					id="category" name="category" placeholder="Enter product Category"
					required>
			</div>
			<button type="submit" class="btn-submit">Add Product</button>
		</form>
	</div>
</body>
</html>
