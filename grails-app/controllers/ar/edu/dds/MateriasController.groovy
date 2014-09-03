package ar.edu.dds

import ar.edu.dds.ui.domain.Materia
import ar.edu.dds.ui.domain.Ubicacion
import ar.edu.dds.ui.home.MateriasHome


class MateriasController {

	def index() {
		redirect(action: "list", params: params)
	}
	
def list() {
	
		[materias: MateriasHome.instance.materias, materiasCantTotal:MateriasHome.instance.materias.size ]
	}
	
	

	def create() {
		println params
		render(view: "agregar", model: [materiaInstance: mapear(new Materia(),params)])
	}

	def guardar(){

		def materiaInstance = null
		def message = null

		if (params.nombre){

			if( MateriasHome.instance.contieneMateria(params.nombre)){
				message = "La materia ya se encuentra cargada"
			}else{
				materiaInstance = new Materia()
				mapear(materiaInstance, params)
				MateriasHome.getInstance().actualizarMateria(materiaInstance)
				message = "Alta nueva materia exitosa"
			}
		}else{
			message = "Campo obligatorio: nombre"
		}
		flash.message = message
		redirect(action: "list")
	}


	def mapear(materia, params) {

		if(params.nombre) {
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
			def int cuatrimestre = new Integer(params.ubicacion) / 10
			def int nivel = new Integer(params.ubicacion) % 10
			
			def ubiInstance = new Ubicacion(cuatrimestre, nivel)
			materia.ubicacion = ubiInstance		
		} else {
			materia.ubicacion = null
		}
		if(params.notaFinal){
			if(params.notaFinal > 3){
				materia.finalAprobado = true
			}else{
				materia.finalAprobado = false
			}
		}
		materia
	}

	def edit(Long id){
		def materia = MateriasHome.instance.getMateria(id)
		[materiaInstance : materia]
	}

	def save(Long id) {
		

		def materiaInstance = null
		def message = null

		if (params.nombre){

			materiaInstance = MateriasHome.getInstance().getMateria(id)
			mapear(materiaInstance, params)
			MateriasHome.getInstance().actualizarMateria(materiaInstance)
			message = "La materia ha sido actualizada con exito"
		}else{
			message = "Campo obligatorio: nombre"
		}
		flash.message = message
		redirect(action: "list")
	}
	
	
	// esto es un contador de materias estaria bueno ponerlo en los resultados de la busqueda
	def show(long id) {
		def getInstance = materiasHome.getMateria(id)
		if (!getInstance) {
			flash.message = "materia" + id + "no encontrado"
			redirect (action: "list")
			
		}else {
		[materiaInstance : materiaInstance]}
		
		
	}

	
}

