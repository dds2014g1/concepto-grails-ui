package ar.edu.dds

import ar.edu.dds.ui.home.MateriasHome;

class MateriasController {

	def index() {
		redirect(action: "list", params: params)
	}

	def list() {
		[materias: MateriasHome.getInstance().materias]
	}

	def create() {
		println params
		MateriasHome.instance.create(params.nuevoNombre)
		redirect(action: "list", params: params)
	}
}
