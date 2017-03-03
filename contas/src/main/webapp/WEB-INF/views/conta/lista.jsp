<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de contas</title>

<script src="resources/js/jquery-3.1.1.js"></script>	
<script type="text/javascript">
	
	function pagarConta(id) {
		$.post("pagaConta?id=" + id, function(dadosRetorno) {
			
			$("#conta_" + id).html("Paga");
			
		});
	}
	
</script>

</head>
<body>

	<table border="1" width="100%">
		<tr>
			<th>Código</th>
			<th>Descrição</th>
			<th>Valor</th>
			<th>Tipo</th>
			<th>Paga?</th>
			<th>Data de pagamento</th>
			<th></th>
			<th></th>
			<th></th>
		</tr>
		<c:forEach items="${listaDeConta}" var="conta">
		<tr>
			<td>${conta.id}</td>
			<td>${conta.descricao}</td>
			<td>${conta.valor}</td>
			<td>${conta.tipo}</td>
			<td>
				<c:if test="${conta.paga eq true}">
					Paga
				</c:if>
				<c:if test="${conta.paga eq false}">
					Não paga
				</c:if>
			</td>
			<td><fmt:formatDate value="${conta.dataPagamento.time}" pattern="dd/MM/yyyy"/> </td>
			<td>
				<a href="removeConta?id=${conta.id}">Remover</a>
			</td>
			<td>
				<a href="mostraConta?id=${conta.id}">Alterar</a>
			</td>
			<td id="conta_${conta.id}">
				<c:if test="${conta.paga eq false}">
					<a href="#" onclick="pagarConta(${conta.id})">Pagar agora</a>
				</c:if>		
				<c:if test="${conta.paga eq true }">
    				Paga
  				</c:if>	
			</td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<a href="form">Adicionar nova conta</a>
</body>
</html>