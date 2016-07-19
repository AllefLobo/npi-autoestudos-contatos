<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
			  <li><a href="listar">Home</a></li>
			  <li class="active">Adição de contato</li>
			</ul>
		
			<h2>Novo Contato</h2><br>
			
			<div class="">
			<form:form id="adicionarContatoForm" class="form-horizontal" commandName="contato" servletRelativeAction="/adicionar" method="POST">
				<fieldset>
				
				<div class="form-group col-lg-8">
				<label class="col-lg-2 control-label">Nome: </label>
					<div class="col-lg-6">
						<form:input class="form-control" type="text" path="nome"/>
					</div>
				</div>
				
				<div class="form-group col-lg-8"">
				<label class="col-lg-2 control-label">Email: </label>
					<div class="col-lg-6">
						<form:input class="form-control" type="text" path="email"/>
					</div>
				</div>
				
				<div class="form-group col-lg-8"">
				<label class="col-lg-2 control-label">Endereço: </label>
					<div class="col-lg-6">
						<form:input class="form-control" type="text" path="endereco"/>
					</div>
				</div>
				
				<div class="form-group col-lg-8"">
				<label class="col-lg-2 control-label">Telefone: </label>
					<div class="col-lg-6">
						<form:input class="form-control" type="text" path="telefone"/><br>
					</div>
					
				</div>
				
				<div class="form-group">
					<div class="col-lg-10 col-lg-offset-2">
						<form:button class="btn btn-primary" type="submit" >Cadastrar</form:button>
					</div>
				</div>
				
				</fieldset>
			</form:form>
			</div>
			
		
		</div>
	</div>
</div>



</body>
</html>