<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Alteração de conta</title>
</head>
<body>
	
	<form action="alteraConta" method="post">
		
		<fieldset>
			<legend>Alteração de conta</legend>
			
			Descrição:<br/>
			<textarea name="descricao" rows="5" cols="100"> ${conta.descricao} </textarea><br/>
			
			Valor:<br/>
			<input name="valor" type="text" value="${conta.valor}"><br/>
			
			Tipo:<br/>
			<select name="tipo">
				<option value="ENTRADA" ${conta.tipo == 'ENTRADA' ? 'selected' : ''}>Entrada</option>
				<option value="SAIDA" ${conta.tipo == 'SAIDA' ? 'selected' : ''}>Saída</option>
			</select><br/>
			
			Pago?<br/>
			<input type="checkbox" name="paga" ${conta.paga ? 'checked' : ''}>
			<br/>
			
			Data Pagamento:<br/>
			<input type="text" name="dataPagamento" value="<fmt:formatDate value="${conta.dataPagamento}" pattern="dd/MM/yyyy"/>">
			
			<br/>
			<br/>
			
			<input type="hidden" name="id" value="${conta.id}">
			<input type="submit" value="Alterar">
			
		</fieldset>
		
	</form>
	
</body>
</html>