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
			  <li><a href="../listar">Home</a></li>
			  <li class="active">Informações de contato</li>
			</ul>
		
			<h2>Informações do contato</h2>
				<label>Nome: ${contato.nome }</label> <br/> 
				<label>Email: ${contato.email }</label> <br/>
				<label>Endereço: ${contato.endereco }</label> <br/>
				<label>Telefone: ${contato.telefone }</label> <br/>
		</div>
	</div>
</div>

	
		
		
</body>
</html>