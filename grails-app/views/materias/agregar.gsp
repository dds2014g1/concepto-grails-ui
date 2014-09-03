<html>

	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
		<meta name="layout" content="main" />
		<title>Ingresar nueva materia</title>
	</head>
	
	<body>
		<div style="background-color: #EEEEEE; width: 90%; margin-left: auto; margin-right: auto">
			
			<div style="width: 90%; padding: 15pt;">
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2>Ingresar nueva materia</h2>
					</div>
				</div>
			</div>
			
			<div style="width: 90%; padding: 15pt;">
				<div class="panel panel-default">
					<div class="panel-heading">
						<form class="form-horizontal" action="guardar" method="post">
							<g:hiddenField name="id" value="${materiaInstance?.id}" />
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
											<input class="form-control" type=text contenteditable="false" list=browsers name="ubicacion" id="ubicacion" placeholder="Ubicaci&oacute;n"/>
												<datalist id=browsers >
   													<option value=11 label="1er cuatrimestre - 1 nivel">
   													<option value=12 label="2do cuatrimestre - 1 nivel">
   													<option value=21 label="1er cuatrimestre - 2 nivel">
   													<option value=22 label="2do cuatrimestre - 2 nivel">
   													<option value=31 label="1er cuatrimestre - 3 nivel">
   													<option value=32 label="2do cuatrimestre - 3 nivel">
   													<option value=41 label="1er cuatrimestre - 4 nivel">
   													<option value=42 label="2do cuatrimestre - 4 nivel">
   													<option value=51 label="1er cuatrimestre - 5 nivel">
   													<option value=52 label="2do cuatrimestre - 5 nivel">   																										
												</datalist>											
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
										<input type="submit" class="btn btn-primary" value="Aceptar" />
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