<!doctype html>
<html xmlns:th="www.thymeleaf.org">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Product Details</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ"
	crossorigin="anonymous">
</head>



<body>

	<div class="container">

		<h3 class="pt-3 pb-3" align="center">Product Form</h3>
		<p th:text="${msg}" class="text-success"></p>

		<hr />
		<form th:action="@{/product}" th:object="${product}" method="post">
			<table>
				<tr>

					<!-- sending pid for backend -->

					<input type="hidden" th:field="*{pid}" />

					<td>Name:</td>
					<td><input type="text" th:field="*{name}"></td>
					<td th:if="${#fields.hasErrors('name')}" th:errors="*{name}"
						class="text-danger"></td>
				</tr>

				<tr>
					<td>Price:</td>
					<td><input type="number" th:field="*{price}"></td>
					<td th:if="${#fields.hasErrors('price')}" th:errors="*{price}"
						class="text-danger"></td>
				</tr>

				<tr>
					<td>Quantity:</td>
					<td><input type="number" th:field="*{quantity}"></td>
					<td th:if="${#fields.hasErrors('quantity')}"
						th:errors="*{quantity}" class="text-danger"></td>

				</tr>

				<div class="pt-8 pb-8" >
					<tr>
						<td><a href="/" class="btn btn-secondary">Reset</a></td>
						<td><input type="submit" value="save" class="btn btn-primary"></td>
					</tr>
				</div>

			</table>
		</form>

		<div class=" btn btn-secondary pt-8 pb-8 ">
			<a href="products" class="text-white" style="text-decoration: none">View
				All Products</a>

		</div>





	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js">
		integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
		crossorigin="anonymous"</script>
</body>
</html>