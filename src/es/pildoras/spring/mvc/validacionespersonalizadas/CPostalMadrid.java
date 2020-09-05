package es.pildoras.spring.mvc.validacionespersonalizadas;

import java.lang.annotation.*;
import javax.validation.*;

@Constraint(validatedBy = CPostalMadridValidacion.class)// Futura clase que contendra la lógica de la validación
@Target( { ElementType.METHOD, ElementType.FIELD })// Destino de nuestra validación a métodos o campos
@Retention(RetentionPolicy.RUNTIME)
public @interface CPostalMadrid {
	// 1.- Definir el c.postal por defecto
	public String value() default "28";
	
	// 2.- Definir el mensaje de error
	public String message() default "El C.Postal debe comenzar por 28";
	
	// 3.- Definir los grupos
	Class<?>[] groups() default {};
	
	// 4.- Definir los payloads
	Class<? extends Payload>[] payload() default {};
	
}
