package ar.edu.dds.ui.domain

import java.util.List
import java.util.ArrayList

class Materia implements Cloneable {
	
	@Property Long id
	@Property String nombre
	@Property String anioDeCursada
	@Property String profesor
	@Property Ubicacion ubicacion
	@Property boolean finalAprobado
	
	@Property List<Nota> notas
	
	
	new (){
		notas = new ArrayList
	}
	
	def actualizarCon(Materia materia) {
		this.nombre = materia.nombre
		this.anioDeCursada = materia.anioDeCursada
		this.profesor = materia.profesor
		this.ubicacion = materia.ubicacion
		this.finalAprobado = materia.finalAprobado
		
		this.notas = materia.notas
	}
	
	def Materia copy() {
		super.clone as Materia
	}

}