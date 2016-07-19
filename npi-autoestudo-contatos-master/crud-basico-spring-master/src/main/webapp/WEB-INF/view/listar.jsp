<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap.min.css"/>">
<title>Listar Contatos</title>
</head>
<body>
<div class="container">
	<div class="bs-docs-section">
		<div class="row">
				<ul class="breadcrumb">
				 <li class="active">Home/</li>
				</ul>
				
				<h2>Contatos</h2>
			
			<div class="row">
				<div class="col-md-2 col-md-offset-4">
					<img src="<c:url value="/resources/images.jpeg"/>" alt="wolf's image"/> 
					author
				</div>
			</div>
		
			<table class="table table-striped table-hover ">
			
				<c:forEach items="${contatos}" var="contato">
				<tr class="success">
					<td>
					<label>Nome: ${contato.nome }</label> | 
					<label>Email: ${contato.email }</label> | 
					<label>Endereço: ${contato.endereco }</label> | 
					<label>Telefone: ${contato.telefone }</label>
					</td>
					<td>
					<a href="/contatos/remover/${contato.id }">remover</a>
					<a href="/contatos/detalharDados/${contato.id }">detalhar</a>
					<a href="/contatos/editarForm/${contato.id}">editar</a><br>
					</td>
				</tr>
				</c:forEach>
			</table>
			<br>
			<a href="/contatos/adicionar">Adicionar</a>
			<form action ="buscar"  method="post">
				<input type="text" name="nome"  />
				<input type="submit" value="buscar" />
			</form>
		
		</div>
	</div>

 </div>


	
	
</body>
</html>