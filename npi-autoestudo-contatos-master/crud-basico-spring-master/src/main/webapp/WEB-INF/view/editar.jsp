<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<link rel="stylesheet" type="text/css" href="<c:url value="/resources/bootstrap.min.css"/>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listar Contatos</title>
</head>
<body>

<div class="container">
	<div class="bs-docs-section">
		<div class="row">
			<ul class="breadcrumb">
			  <li><a href="../listar">Home</a></li>
			  <li class="active">Edição de contato</li>
			</ul>
		
			<h2>Editar Contato</h2><br>
			
			<form:form id="editar" commandName="contato" servletRelativeAction="/editarContato" method="POST">
				<label>Nome: </label>
				<form:input type="text" path="nome" value = "${contato.nome}" /><br>
				<label>Email: </label>
				<form:input type="text" path="email" value = "${contato.email}"/><br>
				<label>Endereço: </label>
				<form:input type="text" path="email" value = "${contato.endereco}"/><br>
				<label>Telefone: </label>
				<form:input type="text" path="telefone" value = "${contato.telefone}"/><br>
				
				<input type="submit" value="editar"/>
			</form:form>
		</div>
	</div>
</div>

	
</body>
</html>