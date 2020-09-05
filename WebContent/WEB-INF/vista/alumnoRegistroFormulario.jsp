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
		<br>
		Apellido: <form:input path="apellido"/>
		<br/>
		Asignaturas Optativas: 
		<br/>
		<form:select path="optativa" multiple="true">
			<form:option value="Diseño" label="Diseño"/>
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
		<form:checkbox path="idiomasAlumno" value="Inglés"/> Inglés<br/>		
		<form:checkbox path="idiomasAlumno" value="Francés"/> Francés<br/>
		<form:checkbox path="idiomasAlumno" value="Alemán"/> Alemán<br/>		
		<form:checkbox path="idiomasAlumno" value="Chino"/> Chino
		<br/>
		<input type="submit" value="Enviar">
	</form:form>
</body>
</html>