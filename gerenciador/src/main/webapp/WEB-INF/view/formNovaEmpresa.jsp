<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value= "/entrada" var="linkServletNovaEmpresa" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastrar uma nova empresa</title>
</head>
<body>

	<form action="${linkServletNovaEmpresa}" method="post">

		Nome: <input type="text" name="nome" />
		Data Abertura: <input type="text" name="data" /> <input type="submit" />
		<input type="hidden" name="acao" value="NovaEmpresa" />
	</form>

</body>
</html>