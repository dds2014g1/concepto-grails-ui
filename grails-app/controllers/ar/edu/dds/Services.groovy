package ar.edu.dds

import org.springframework.transaction.annotation.Transactional

class Services {


	static transactional = false

	@Transactional(readOnly = true)
	def getMateria(params,  Materia) {
		def queryMateria = Materia.createCriteria().list(params) {
			if (materia.titulo) {
				ilike("titulo", "%" + materia.titulo + "%")
			}
		
			}
	
		params.materiaInstance = queryMateria.materiasCantTotal
		queryMateria
	}

	@Transactional(readOnly = true)
	def getMateria(id) {
		Materia.get(id)
	}
	

		
	}	