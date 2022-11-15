<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/alteraEmpresa" var="linkServletAlteraEmpresa" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${linkServletAlteraEmpresa}" method="post">

		Nome: <input type="text" name="nome" value="${empresa.nome}" /> 
		Data Abertura: <input type="text" name="data" value="<fmt:formatDate
					value="${empresa.dataAbertura}" pattern="dd/MM/yyyy" />" />
		<input type="hidden" name="id" value="${empresa.id}" /> <input
			type="submit" />
	</form>

</body>
</html>