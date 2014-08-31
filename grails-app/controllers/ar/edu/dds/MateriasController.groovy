package ar.edu.dds

import ar.edu.dds.ui.home.MateriasHome;

class MateriasController {

    def list() {
		[materia: MateriasHome.getInstance().materias.get(0)]
	}
}
