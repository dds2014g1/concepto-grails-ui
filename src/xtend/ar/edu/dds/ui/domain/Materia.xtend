package ar.edu.dds.ui.domain

import java.util.List
import java.util.ArrayList

class Materia {
	
	@Property String nombre
	@Property String anioDeCursada
	@Property String profesor
	@Property Ubicacion ubicacion
	@Property boolean finalAprobado
	
	@Property List<Nota> notas
	
	
	new (){
		notas = new ArrayList
	}
	
	def setUbicacion(Ubicacion ubicacion) {
		println("Seteando ubicacion: " + ubicacion.toString)
		this._ubicacion = ubicacion
	}
	
	
}