<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Cadastro de conta</title>
</head>
<body>
	
	<form action="adicionaConta" method="post">
		
		<fieldset>
			<legend>Cadastro de conta</legend>
			
			Descrição:<br/>
			<textarea name="descricao" rows="5" cols="100"></textarea><br/>
			
			Valor:<br/>
			<input name="valor" type="text"><br/>
			
			Tipo:<br/>
			<select name="tipo">
				<option value="ENTRADA">Entrada</option>
				<option value="SAIDA">Saída</option>
			</select>
			<br/>
			<br/>
			
			<input type="submit" value="Adicionar">
			
		</fieldset>
		
	</form>
	
</body>
</html>