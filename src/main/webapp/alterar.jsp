<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>alterar</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body class="bg-success text-white">
	<main>
		<div class="container body-content">
			<form name="fmViagem" action="update" style="padding: 100px">
				<div class="row gx-5">

					<div class="mb-4">

						<label for="n" class="mb-2 ">Nome: País,Cidade</label> <input
							class="form-control py-2 w-100 p-3" type="text" id="n"
							name="nome" value="<%out.print(request.getAttribute("nome"));%>">
					</div>
					<div class="mb-4">
						<label for="vn" class="mb-2 ">Valor viagem</label> <input
							class="form-control py-2 w-100 p-3" type="number" id="vn"
							name="valAt"
							value="<%out.print(request.getAttribute("valAnt"));%>">
					</div>
					<div class="mb-4">
						<label for="vp" class="mb-2 ">Valor com desconto</label>
						<input class="form-control py-2 w-100 p-3" id="vp" type="number"
							name="valAnt"
							value="<%out.print(request.getAttribute("valAt"));%>">
					</div>
					<div class=" text-md-center">
						<input class="btn btn-primary" type="button" value="Salvar"
							onclick="validar()"> <a class="btn btn-danger"
							href="main">Cancelar</a>
					</div>
				</div>
			</form>
		</div>
	</main>
	<footer align="center" style="padding: 100px 0px 20px">
		<p>&copy; PomboCorreio-2022</p>
	</footer>
	<script src="scripts/validador.js"></script>
</body>
</html>