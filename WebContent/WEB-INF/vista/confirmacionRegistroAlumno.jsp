<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Confirmaci�n de Registro</title>
</head>
<body>
	El alumno con nombre <strong>${elAlumno.nombre}</strong>, apellido <strong>${elAlumno.apellido}</strong>, edad de <strong>${elAlumno.edad}</strong> a�os y email <strong>${elAlumno.email }</strong>, se ha registrado con �xito.
	<br/>
	La asignatura escodiga es: <strong>${elAlumno.optativa}</strong>.
	<br/>
	La ciudad donde iniciar� los estudios el alumno es: <strong>${elAlumno.ciudadEstudios}</strong>.
	<br/>
	Los idiomas escodigos por el alumno son: <strong>${elAlumno.idiomasAlumno}</strong>.
</body>
</html>