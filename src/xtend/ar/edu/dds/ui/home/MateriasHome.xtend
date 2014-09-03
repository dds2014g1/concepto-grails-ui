package ar.edu.dds.ui.home

import ar.edu.dds.ui.domain.Materia
import java.util.List
import ar.edu.dds.ui.domain.Nota
import ar.edu.dds.ui.domain.Ubicacion
import java.util.ArrayList

class MateriasHome {

	List<Materia> materias

	/** singleton **/
	static MateriasHome instance

	private new() {
		materias = new ArrayList<Materia>
	}

	static def getInstance() {
		if (instance == null) {
			instance = new MateriasHome
		}
		instance
	}

	/** fin singleton **/
	def agregarMateria(Materia materia) {
		materia.id = new Long(this.ultimoIdUtilizado.longValue + 1)
		materias.add(materia)
	}

	def int getUltimoIdUtilizado() {
		if (materias.isEmpty) {
			return 1
		}
		return materias.sortBy[-it.id].toList.get(0).id.intValue
	}

	def actualizarMateria(Materia materiaActualizada) {
		if (materiaActualizada.id == null) {
			this.agregarMateria(materiaActualizada)
		} else {
			this.doActualizarMateria(materiaActualizada)
		}
	}

	def doActualizarMateria(Materia materiaActualizada) {
		val unaMateria = this.getMateria(materiaActualizada.id).copy
		unaMateria.actualizarCon(materiaActualizada)
	}

	def eliminarMateria(Materia materia) {
		materias.remove(this.getMateria(materia.id))
	}

	def getMateria(Long id) {
		materias.findFirst[m|m.id.equals(id)]
	}
	
	def buscarMaterias(String parteDelNombre) {
		materias.filter[m | parteDelNombre.empty || m.nombre.toLowerCase.contains(parteDelNombre.toLowerCase)]
	}
	
	def boolean contieneMateria(String nombreMateria){
		materias.map[m|m.nombre].contains(nombreMateria)
	}

	// Altas y bajas
	def void create(String nombre, String anioDeCursada, Boolean finalAprobado, String profesor,
		Ubicacion ubicacion, List<Nota> notas) {

		val materia = new Materia
		materia.nombre = nombre
		materia.anioDeCursada = anioDeCursada
		materia.finalAprobado = finalAprobado
		materia.profesor = profesor
		materia.ubicacion = ubicacion
		materia.notas = notas

		agregarMateria(materia)
	}

	def void create(String nuevoNombre) {
		if (nuevoNombre != "") {
			val materia = new Materia
			materia.nombre = nuevoNombre
			agregarMateria(materia)
		}
	}


}
