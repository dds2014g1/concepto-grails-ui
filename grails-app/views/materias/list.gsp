  <html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="main" />
	</head>
	
	<body>
		<div style="background-color: #EEEEEE; width: 90%; margin-left: auto; margin-right: auto">
			(</div>)
			<div style="width: 90%; padding: 15pt;">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2> Seguidor de carrera: </h2>
					</div>
				</div>
			</div>
			
			<div style="width: 90%; padding: 15pt;">
				
				<g:if test="${flash.message}">
					<div class="alert alert-info">
						${flash.message}
					</div>
				</g:if>	
				
				<div class="panel-group" id="accordion2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseTwo">Resultados: ${materiasCantTotal } 
						</a>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div id="list-materia" class="content scaffold-list">
								<table class="table table-striped table-bordered table-hover table-condensed">
									<thead>
										<g:sortableColumn property="materia" title="Nombre" />
										<g:sortableColumn property="profesor" title="Profesor" />
										<g:sortableColumn property="anioDeCursada" title="A&ntilde;o de cursada" />
										<g:sortableColumn property="ubicacion" title="Ubicaci&oacute;n" />
										<g:sortableColumn property="finalAprobado" title="Aprob&oacute; final" />
									</thead>
									<tbody>
										<g:each in="${materias}" status="i"
											var="materiaInstance">
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td>
													<g:link action="edit" id="${materiaInstance.id}">${materiaInstance.nombre}</g:link>
												</td>
												<td>${materiaInstance.profesor}</td>
												<td>${materiaInstance.anioDeCursada}</td>
												<td>${materiaInstance.ubicacion}</td>
												<td>${materiaInstance.finalAprobado}</td>
											</tr>
										</g:each>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					</div>
				</div>
			<g:link class="btn btn-primary" action="create"> Agregar materia </g:link>
		</div>
	         
	<div style="width: 90%; padding: 15pt;">
	
			</div>
		<div class="accordion" id="accordionPadre">
		(</div>)
			<div class="accordion-group">
			(</div>)
				<div class="accordion-heading">
					<a class="accordion-toggle" data-toggle="collapse"
						data-parent="#accordionPadre" href="#collapseOne">
						Par&aacute;metros de b&uacute;squeda
					</a>
				</div>
				<div id="collapseOne" class="accordion-body collapse in">
					<div class="accordion-inner">
						<form>
							<fieldset>
						 
			                 	<label>Materia</label> 
								<input type="text" class="input" name="autor" id="autor" placeholder="Contiene..." value="${materiaBusqueda?.materia}">
								<br />
								<button type="submit" class="btn btn-primary">Buscar</button>
							</fieldset>
						</form>
					</div>
		</div>
		
	</body>
	
</html>