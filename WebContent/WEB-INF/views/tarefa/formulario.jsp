<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>

<head>
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet"/>
</head>
<body>
<form:errors path="tarefa.descricao"/>
<form action="adicionaTarefa" method="post">
<body>
	<h3>Adicionar tarefas</h3>
	<form action="adicionaTarefa" method="post">
		Descrição:<br />
		<textarea name="descricao" rows="5" cols="100"></textarea>
		<br /> <input type="submit" value="Adicionar">
	</form>
</body>
</html>