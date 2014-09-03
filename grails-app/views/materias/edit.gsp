<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="main" />
		<title>Editar materia</title>
	</head>
	
	<body>
		<div style="background-color: #EEEEEE; width: 90%; margin-left: auto; margin-right: auto">
			
			<div style="width: 90%; padding: 15pt;">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2>Editar materia</h2>
					</div>
				</div>
			</div>
			
			<div style="width: 90%; padding: 15pt;">
				<div class="panel panel-default">
					<div class="panel-heading">
						<form class="form-horizontal" action="save" method="post">
							<g:hiddenField name="identificador" value="${materiaInstance?.id}" />
							<div class="row">
					  			<div class="col-md-6">
									<div>
										<label class="control-label" for="nombre">Nombre</label>
										<div class="controls">
											<input class="form-control" type="text" name="nombre" id="nombre" placeholder="Nombre" value="${materiaInstance?.nombre}" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div>
										<label class="control-label" for="anioDeCursada">A&ntilde;o de cursada</label>
										<div class="controls">
											<input class="form-control" type="text" name="anioDeCursada" id="anioDeCursada" placeholder="A&ntilde;o" value="${materiaInstance?.anioDeCursada}" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div>
										<label class="control-label" for="profesor">Profesor</label>
										<div class="controls">
											<input class="form-control" type="text" name="profesor" id="profesor" placeholder="Profesor" value="${materiaInstance?.profesor}" />
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div>
										<label class="control-label" for="ubicacion">Ubicaci&oacute;n</label>
										<div class="controls">
												<select class="form-control" name="ubicacion" id="ubicacion" placeholder="Seleccione la opcion correcta">
   													<option value=11>"1er cuatrimestre - 1 nivel"</option>
   													<option value=12>"2do cuatrimestre - 1 nivel"</option>
   													<option value=21>"1er cuatrimestre - 2 nivel"</option>
   													<option value=22>"2do cuatrimestre - 2 nivel"</option>
   													<option value=31>"1er cuatrimestre - 3 nivel"</option>
   													<option value=32>"2do cuatrimestre - 3 nivel"</option>
   													<option value=41>"1er cuatrimestre - 4 nivel"</option>
   													<option value=42>"2do cuatrimestre - 4 nivel"</option>
   													<option value=51>"1er cuatrimestre - 5 nivel"</option>
   													<option value=52>"2do cuatrimestre - 5 nivel"</option>   																										
												</select>											
										</div>
									</div>
								</div>
								<div class="col-md-6">
									<div>
										<label class="control-label" for="notaFinal">Nota de final</label>
										<div class="controls">
											<input class="form-control" type="text" name="notaFinal" id="notaFinal" placeholder="Nota de final"/>
										</div>
									</div>
								</div>
								<div class="col-md-12">
									<div class="buttons">
										<br>
										<g:actionSubmit class="btn btn-primary" action="save" controller="materia" value="Aceptar"/>
										<g:link class="btn btn-primary" action="list">
											Cancelar
										</g:link>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>			
		</div>
</html>
										
										
										
		
									