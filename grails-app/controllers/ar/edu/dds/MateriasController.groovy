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

	def edit(Long id){
		def materia = MateriasHome.instance.getMateria(id)
		[materiaInstance : materia]
	}

	def save() {
		def materiaInstance = null
		def id = params.id ? params.id.toLong() : null
		if (id) {
			materiaInstance = MateriasHome.instance.getMateria(id)
			mapear(materiaInstance, params)
			MateriasHome.instance.actualizarCon(materiaInstance)
			redirect(action: "list")
		}
	}

	def mapear(materia, params){
		if (params.nombre) {
			materia.nombre = params.nombre
		} else {
			materia.nombre = null
		}
		if (params.anioDeCursada) {
			materia.anioDeCursada = params.anioDeCursada
		} else {
			materia.anioDeCursada = null
		}
		if (params.profesor) {
			materia.profesor = params.profesor
		} else {
			materia.profesor = null
		}
		if (params.ubicacion) {
			materia.ubicacion = params.ubicacion
		} else {
			materia.ubicacion = null
		}
		if (params.finalAprobado) {
			materia.finalAprobado = params.finalAprobado
		} else {
			materia.finalAprobado = null
		}
		
	}
}
