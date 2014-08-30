package ar.edu.dds.ui.domain

import java.util.Date

class Nota {
	
	@Property Integer valor
	@Property Date fecha
	@Property String descripcion
	
	new(){}
	
		
	new(Integer valor, Date fecha, String descripcion) {
		this.valor = valor
		this.fecha = fecha
		this.descripcion = descripcion
	}
	
	def boolean isAprobado () {
		valor != null && valor > 4
	}
	
	def Boolean estaCompleta() {
		valor != null && fecha != null
	}
		
}