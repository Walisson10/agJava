<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="model.JavaBeans"%>
<%@ page import="java.util.ArrayList"%>
<%
ArrayList<JavaBeans> lista = (ArrayList<JavaBeans>) request.getAttribute("promocao");
%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<meta charset="utf-8">
<title>Agencia</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
</head>
<body class="bg-success ">
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">PomboCorreio</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarNav">
					<ul class="navbar-nav me-auto mx-auto  mb-2 mb-lg-0">
						<li class="nav-item"><a class="nav-link " aria-current="page"
							href="index.html">Home</a></li>
						<li class="nav-item"><a class="nav-link" href="destinos.html">Destinos</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="main">Promoções</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="contato.html">Contatos</a>
						</li>
					</ul>
				</div>
			</div>
		</nav>
	</header>
	<main>
		<div class="container body-content ">
			<h1 style="padding: 50px" class="text-white" >VOOS COM DESCONTO</h1>
			<div style="padding: 100px">
				<div id="carouselExampleControls" class="carousel slide"
					data-bs-ride="carousel">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="row row-cols-1 row-cols-md-2 g-4">
								<div class="col">
									<div class="card">
										<img src="img/paisagem1.png" class="card-img-top" alt="..." />
										<div class="card-body">
											<h5 class="card-title">Brasil</h5>
											<p class="card-text">
												De <strike>$780</strike> por apenas $320
											</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card">
										<img src="img/paisagem2.jpg" class="card-img-top" alt="..." />
										<div class="card-body">
											<h5 class="card-title">Nova zelandia</h5>
											<p class="card-text">
												De<strike> $780</strike> por aepnas $320
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row row-cols-1 row-cols-md-2 g-4">
								<div class="col">
									<div class="card">
										<img src="img/paisagem3.jpg" class="card-img-top" alt="..." />
										<div class="card-body">
											<h5 class="card-title">Guatemala</h5>
											<p class="card-text">
												De <strike>$780</strike> por apenas $320
											</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card">
										<img src="img/paisagem4.jpg" class="card-img-top" alt="..." />
										<div class="card-body">
											<h5 class="card-title">China</h5>
											<p class="card-text">
												De <strike>$780</strike> por apenas $320
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="carousel-item">
							<div class="row row-cols-1 row-cols-md-2 g-4">
								<div class="col">
									<div class="card">
										<img src="img/paisagem1.png" class="card-img-top" alt="..." />
										<div class="card-body">
											<h5 class="card-title">Finalandia</h5>
											<p class="card-text">
												De <strike>$780</strike> por apenas $320
											</p>
										</div>
									</div>
								</div>
								<div class="col">
									<div class="card">
										<img src="img/paisagem2.jpg" class="card-img-top" alt="..." />
										<div class="card-body">
											<h5 class="card-title">Brasil</h5>
											<p class="card-text">
												De <strike>$780</strike> por apenas $320
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<button class="carousel-control-prev" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Previous</span>
					</button>
					<button class="carousel-control-next" type="button"
						data-bs-target="#carouselExampleControls" data-bs-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="visually-hidden">Next</span>
					</button>
				</div>
			</div>
			<div class="container text-center" style="padding-bottom: 50px;">
				<a href="novo.html" class="btn btn-primary ">Nova Promoção</a>
			</div>
			<div class="row row-cols-1 row-cols-md-2 g-4">
				<%
				for (int i = 0; i < lista.size(); i++) {
				%>
				<div class="col">
					<div class="card text-center">
						<img src="img/paisagem1.png" class="card-img-top" alt="..." />
						<div class="card-body">
							<h5 class="card-title"><%=lista.get(i).getNome()%></h5>
							<p class="card-text">
								Pacotes de <strike>R$<%=lista.get(i).getVlatu()%></strike> por
								apenas R$<%=lista.get(i).getVlanti()%></p>
							<a href="select?id=<%=lista.get(i).getId()%>"
								class="btn btn-info">Editar</a> <a
								href="javascript: confirmar(<%=lista.get(i).getId()%>)"
								class="btn btn-danger">Excluir</a>
							</td>
						</div>
					</div>
				</div>
				<%
				}
				%>
			</div>
		</div>

	</main>
	<footer class="text-white" align="center" style="padding: 100px 0px 20px">
		<p>&copy; PomboCorreio-2022</p>
	</footer>
	<script src="scripts/confirmar.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>