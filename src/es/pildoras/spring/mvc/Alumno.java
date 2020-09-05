package es.pildoras.spring.mvc;

import javax.validation.constraints.*;

import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

public class Alumno {
	//Validaci�n de Espacios
	@InitBinder
	public void miBinder(WebDataBinder binder) {
		StringTrimmerEditor recortaEspaciosBlanco=new StringTrimmerEditor(true);
		binder.registerCustomEditor(String.class, recortaEspaciosBlanco);
	}

	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido() {
		return apellido;
	}
	public void setApellido(String apellido) {
		this.apellido = apellido;
	}

	public String getOptativa() {
		return optativa;
	}
	public void setOptativa(String optativa) {
		this.optativa = optativa;
	}

	public String getCiudadEstudios() {
		return ciudadEstudios;
	}
	public void setCiudadEstudios(String ciudadEstudios) {
		this.ciudadEstudios = ciudadEstudios;
	}

	public String getIdiomasAlumno() {
		return idiomasAlumno;
	}
	public void setIdiomasAlumno(String idiomasAlumno) {
		this.idiomasAlumno = idiomasAlumno;
	}

	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getCodigoPostal() {
		return codigoPostal;
	}

	public void setCodigoPostal(String codigoPostal) {
		this.codigoPostal = codigoPostal;
	}


	@NotNull
	@Size(min=2, message="Campo requerido")
	private String nombre;
	private String apellido;
	@Min(value=10, message="No se permiten edades menores a 10 a�os")
	@Max(value=100, message="No se permiten edades mayores a 100 a�os")
	private int edad;
	private String optativa;
	private String ciudadEstudios;
	private String idiomasAlumno;
	@Email
	private String email;
	@Pattern(regexp="[0-9]{5}", message="Solo 5 valores numericos")
	private String codigoPostal;
}
