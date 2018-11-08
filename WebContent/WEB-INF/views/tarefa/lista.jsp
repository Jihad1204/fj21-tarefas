<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link type="text/css" href="resources/css/tarefas.css" rel="stylesheet" />
< type="text/java" src="resources/js/jquery.js"></>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	< type="text/java">
		function finalizaAgora(id){
			$.post("finalizaTarefa", {'id': id}, function(resposta){
				$("#tarefa_"+id).html(resposta);
			});
		}
	</>
	
	<a href="novaTarefa">Criar nova tarefa</a>
	<br/><br/>
	<table>
		<tr>
		<th>Id</th>
		<th>Descrição</th>
		<th>Finalização</th>
		<th>Data da Finalização</th>
		<th>Excluir Tarefa</th>
		<th>Alterar Tarefa</th>
		</tr>
		<c:forEach items="${tarefas}" var="tarefa">
			<tr id="tarefa_${tarefa.id}">
				<td>${tarefa.id}</td>
				<td>${tarefa.descricao}</td>

				<c:if test="${tarefa.finalizado eq false}">
					<td>
						<a href="#" onClick="finalizaAgora(${tarefa.id})">
						Finaliza Agora!
						</a>
					</td>
				</c:if>
				<c:if test="${tarefa.finalizado eq true}">
					<td>Finalizado!!!</td>
				</c:if>
				
				<td>
					<fmt:formatDate
						value="${tarefa.dataFinalizacao.time}"
						pattern="dd/MM/yyyy"/>
				</td>
				<td><a href="removeTarefa?id=${tarefa.id}">Remover Terefa</a></td>
				<td><a href="mostraTarefa?id=${tarefa.id}"> Alterar Tarefa</a></td>
				</tr>
				</c:forEach>	
	</table>
</body>
<a href="logout"> Sair do Sistema</a>
</html>