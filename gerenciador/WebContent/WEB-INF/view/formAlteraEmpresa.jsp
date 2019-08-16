<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<c:url value="/entrada" var="linkEntradaServlet"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:import url="logout-parcial.jsp"/>


	<form action="${linkEntradaServlet}" method="post">
		<fmt:formatDate value="${empresa.dataAbertura }" var="dataF"
			pattern="dd/MM/yyyy" />

		Nome: <input type="text" name="nome" value="${empresa.nome}" /> 
		Data Abertura: <input type="text" name="data" value="${dataF}" /> 
		<input type="hidden" name="id" value="${empresa.id }"> 
		<input type="hidden" name="acao" value="AlteraEmpresa">
		<input type="submit" />
	</form>


</body>
</html>