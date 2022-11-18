<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List,gerenciador.modelo.Empresa"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Empresas</title>
</head>
<body>

	<c:import url="logout-parcial.jsp"></c:import>

	<br /> Usuario logado: ${usuarioLogado.login}
	<br />

	<br /> Lista de empresas:
	<br />

	<ul>
		<c:forEach items="${empresas}" var="empresa">
			<li>${empresa.nome}-<fmt:formatDate
					value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" /> <a
				href="/gerenciador/entrada?acao=MostraEmpresa&id=${empresa.id}">edita</a>
				<a href="/gerenciador/entrada?acao=RemoveEmpresa&id=${empresa.id}">remove</a>
			</li>

		</c:forEach>

	</ul>
	<a href="/gerenciador/entrada?acao=NovaEmpresaForm">nova empresa</a>

</body>
</html>