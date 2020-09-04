package es.pildoras.spring.mvc;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/principal")
public class HolaAlumnosControlador {
	@RequestMapping("/muestraFormulario")
	public String muestraFormulario(){//Proporciona el formulario
		return "HolaAlumnosFormulario";
	}
	
	@RequestMapping("/procesarFormulario")
	public String procesarFormulario() {
		return "HolaAlumnosSpring";
	}
	
	@RequestMapping("/procesarFormulario2")
	//public String otroProcesoFormulario(HttpServletRequest request, Model modelo) {
	public String otroProcesoFormulario(@RequestParam("nombreAlumno") String nombre, Model modelo) {
		//String nombre=request.getParameter("nombreAlumno");
		nombre +=" es el mejor alumno";
		String mensajeFinal="Quien es el mejor alumno? "+nombre;
		// Agregando info al modelo
		modelo.addAttribute("mensajeClaro", mensajeFinal);
		return "HolaAlumnosSpring";
	}
}
