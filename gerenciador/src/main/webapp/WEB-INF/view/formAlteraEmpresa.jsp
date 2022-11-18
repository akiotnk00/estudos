<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/entrada" var="linkServletAlteraEmpresa" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Alterar empresa</title>
</head>
<body>
	<c:import url="logout-parcial.jsp"></c:import>
	<form action="${linkServletAlteraEmpresa}" method="post">

		Nome: <input type="text" name="nome" value="${empresa.nome}" /> Data
		Abertura: <input type="text" name="data"
			value="<fmt:formatDate
					value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />" />
		<input type="hidden" name="id" value="${empresa.id}" /> <input
			type="hidden" name="acao" value="AlteraEmpresa" /> <input
			type="submit" />
	</form>

</body>
</html>