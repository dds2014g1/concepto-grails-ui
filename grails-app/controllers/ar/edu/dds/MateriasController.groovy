package ar.edu.dds

import ar.edu.dds.ui.domain.Materia
import ar.edu.dds.ui.home.MateriasHome;


class MateriasController {

	def index() {
		redirect(action: "list", params: params)
	}

	def list() {
		[materias: MateriasHome.instance.materias, materiasCantTotal: MateriasHome.instance.materias.size ]
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
			materia.ubicacion = new Integer(params.ubicacion)
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
	
	
}
