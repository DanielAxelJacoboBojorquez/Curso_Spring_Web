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
		<br/>
		<form:errors path="nombre" style="color:red"/>
		<br/>
		Apellido: <form:input path="apellido"/>
		<br/>
		Edad: <form:input path="edad"/>
		<br/>
		<form:errors path="edad" style="color:red"/>
		<br/>
		Email: <form:input path="email"/>
		<br/>
		<form:errors path="email" style="color:red"/>
		<br/>
    	C. Postal: <form:input path="codigoPostal"/>
		<br/>
		<form:errors path="codigoPostal" style="color:red"/>
		<br/>
		Asignaturas Optativas:
		<br/>
		<form:select path="optativa" multiple="true">
			<form:option value="Dise�o" label="Dise�o"/>
			<form:option value="Karate" label="Karate"/>
			<form:option value="Comercio" label="Comercio"/>
			<form:option value="Danza" label="Danza"/>
		</form:select>
		<br/>
		Ciudades
		<br/>
		<form:radiobutton path="ciudadEstudios" value="Barcelona"/> Barcelona<br/>
		<form:radiobutton path="ciudadEstudios" value="Madrid"/> Madrid<br/>
		<form:radiobutton path="ciudadEstudios" value="Valencia"/> Valencia<br/>
		<form:radiobutton path="ciudadEstudios" value="Bilbao"/> Bilbao
		<br/>
		Idiomas
		<br/>
		<form:checkbox path="idiomasAlumno" value="Ingl�s"/> Ingl�s<br/>
		<form:checkbox path="idiomasAlumno" value="Franc�s"/> Franc�s<br/>
		<form:checkbox path="idiomasAlumno" value="Alem�n"/> Alem�n<br/>
		<form:checkbox path="idiomasAlumno" value="Chino"/> Chino
		<br/>
		<input type="submit" value="Enviar">
	</form:form>
</body>
</html>
