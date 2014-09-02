<HTML>
<head></head>
<body>
   	<h1>${materiaInstance?.nombre}</h1>
   	
   	<form class="form-horizontal" action="save" method="post">
			<g:hiddenField name="id" value="${materiaInstance?.id}" />
			<div class="row">
	  			<div class="col-md-6">
						<label class="control-label" for="nombre">Nombre</label>
						<div class="controls">
							<input class="form-control" type="text" name="nombre" id="nombre" placeholder="Nombre" value="${materiaInstance?.nombre}" />
					</div>
				</div>
				
				<div class="col-md-6">
						<label class="control-label" for="profesor">Profesor</label>
						<div class="controls">
							<input class="form-control" type="text" name="profesor" id="profesor" placeholder="Profesor" value="${materiaInstance?.profesor}" />
					</div>
				</div>
				
				<div class="col-md-6">
						<label class="control-label" for="ubicacion">Ubicacion</label>
						<div class="controls">
							<input class="form-control" type="text" name="ubicacion" id="ubicacion" placeholder="Ubicacion" value="${materiaInstance?.ubicacion}" />
					</div>
				</div>
				
				<div class="col-md-6">
						<label class="control-label" for="finalAprobado">Final aprobado</label>
						<div class="controls">
							<input class="form-control" type="text" name="finalAprobado" id="finalAprobado" placeholder="Final aprobado" value="${materiaInstance?.finalAprobado}" />
					</div>
				</div>
				
				<div class="col-md-12">
					<div class="buttons">
						<br>
						<g:actionSubmit class="btn btn-primary" action="save" value="Aceptar"/>
						<g:link class="btn btn-primary" action="list">
							Cancelar
						</g:link>
					</div>
				</div>
			</div>
		</form>
</body>
</HTML>
