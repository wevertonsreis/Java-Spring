<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Cadastro de conta</title>
	
	<script src="resources/js/jquery-3.1.1.js"></script>	

</head>
<body>
	
	<form action="adicionaConta" method="post">
	
		<fieldset>
			<legend>Cadastro de conta</legend>
			
			Descrição:<br/>
			<textarea name="descricao" rows="5" cols="100" class="form-control"></textarea>
			<form:errors path="conta.descricao" />
			<br/>
			
			Valor:<br/>
			<input name="valor" type="text" class="form-control">
			
			<br/>
			
			Tipo:<br/>
			<select name="tipo" class="form-control">
				<option value="ENTRADA">Entrada</option>
				<option value="SAIDA">Saída</option>
			</select>
			<br/>
			<br/>
			
			<input type="submit" value="Adicionar" class="btn btn-default" >
			
		</fieldset>
		
	</form>

	</body>
</html>