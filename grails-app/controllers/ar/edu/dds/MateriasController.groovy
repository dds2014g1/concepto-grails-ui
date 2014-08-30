package ar.edu.dds

import ar.edu.dds.ui.home.MateriasHome;

class MateriasController {

	MateriasHome homeMaterias = MateriasHome.instance

	static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

	def index() {
		redirect(action: "list", params: params)
	}
	
	def list(Integer max) {
		def materias = homeMaterias.materias
		[materiasList: materias, totalMaterias: materias.size() ]
	}

}
