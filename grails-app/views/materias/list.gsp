<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="main" />
	</head>
	
	
	<body>
		<div style="background-color: #EEEEEE; width: 80%; margin-left: auto; margin-right: auto">
			<h1> Seguidor de carrera: </h1>
			<div style="width: 35%; padding: 15pt;">
				<g:if test="${flash.message}">
					<div class="alert alert-info">
						${flash.message}
					</div>
				</g:if>		
				<table class="table table-striped table-bordered table-hover table-condensed">
					<thead>
						<g:sortableColumn property="materia" title="Materias" />
					</thead>
					<tbody>
						<g:each in="${materias}" status="i"
							var="materiaInstance">
							<tr class="${(i % 2) == 0 ? 'info' : ''}">
								<td><g:link action="edit" id="${materiaInstance.id}">
										${materiaInstance.nombre}
									</g:link></td>
							</tr>
						</g:each>
					</tbody>
				</table>
				<g:form controller="materias" action="create">
					<input type="text" name="nuevoNombre" id="nuevoNombre" placeholder="Nueva Materia..." style="margin-right: 20px;">
					<input type="submit" value="Agregar Materia" class="btn btn-primary">
				</g:form>
			</div>
		</div>
	</body>
	
</html>