<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/entrada" var="linkServlet" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Entrar no sistema</title>
</head>
<body>

	<form action="${linkServlet}" method="post">

		Login: <input type="text" name="login" /> Senha: <input
			type="password" name="senha" /> <input type="submit" value="Logar" />
		<input type="hidden" name="acao" value="Login" />
	</form>

</body>
</html>