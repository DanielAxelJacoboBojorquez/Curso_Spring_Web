<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario de Registro</title>
</head>
<body>
	<form:form action="procesarFormulario" modelAttribute="elAlumno">
		Nombre: <form:input path="nombre"/>
		<br>
		Apellido: <form:input path="apellido"/>
		<br/>
		Asignaturas Optativas: 
		<br/>
		<form:select path="optativa">
			<form:option value="Diseño" label="Diseño"/>
			<form:option value="Karate" label="Karate"/>
			<form:option value="Comercio" label="Comercio"/>
			<form:option value="Danza" label="Danza"/>
		</form:select>
		<br/>
		<input type="submit" value="Enviar">
	</form:form>
</body>
</html>