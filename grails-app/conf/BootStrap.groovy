import ar.edu.dds.ui.domain.Materia;
import ar.edu.dds.ui.domain.Nota;
import ar.edu.dds.ui.domain.Ubicacion;
import ar.edu.dds.ui.home.MateriasHome;

class BootStrap {

	def init = { servletContext ->
		this.createMateria("Sistemas y Organizaciones",
			     		   "2012",
						   true,
						   "Oscal Díaz",
						   new Ubicacion(1, 1),
						   newArrayList(new Nota(7, new Date(2012, 5, 5), "1er Parcial"),
							   			new Nota(8, new Date(2012, 9, 1), "2do Parcial")
						   ))

		this.createMateria("Paradigmas de Programación",
						   "2013",
						   true,
						   "Nicolás Scarcella",
						   new Ubicacion(2, 1),
						   newArrayList(new Nota(8, new Date(2013, 5, 1), "1er Parcial"),
							   			new Nota(10, new Date(2013, 10, 15), "2do Parcial")
						   ))

		this.createMateria("Arquitectura de computadoras",
						   "2012",
						   false,
						   "Roberto Tenuta",
						   new Ubicacion(2, 1),
						   newArrayList(new Nota(4, new Date(2012, 5, 5), "1er Parcial"),
							   			new Nota(6, new Date(2012, 9, 1), "2do Parcial"),
							   			new Nota(7, new Date(2012, 10, 3), "TP")
				))

		this.createMateria("Técnicas Avanzadas de Programación",
						   "2014",
						   true,
						   "Demian Alonso",
						   new Ubicacion(1, 3),
						   newArrayList(new Nota(8, new Date(2012, 5, 5), "1er Parcial"),
							   			new Nota(7, new Date(2012, 9, 1), "2do Parcial"),
										new Nota(8, new Date(2012, 10, 3), "TP")
						   ))
	}
	
	def createMateria(nombre, anio, finalAprobado, profesor, ubicacion, notas) {
		
		Materia materia = new Materia()
		materia.nombre = nombre
		materia.anioDeCursada = anio
		materia.finalAprobado = finalAprobado
		materia.profesor = profesor
		materia.ubicacion = ubicacion
		materia.notas = notas
		
		MateriasHome.getInstance().agregarMateria(materia)
	}
	
	def newArrayList(Nota... notas) {
		List<Nota> notasList = new ArrayList<Nota>()
		notasList.addAll(notas)	
		
		return notasList
	}
	
	def destroy = {
	}
}
