<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="main" />
</head>
<body>
	<div style="width: 90%; padding: 15pt;">
		<g:render template="titulo" model="['titulo': 'B&uacute;squeda de libros']"/>
		<g:if test="${flash.message}">
			<div class="alert alert-info">
				${flash.message}
			</div>
		</g:if>		
		<div class="panel-group" id="accordion1">
			<div class="panel panel-default">
				<div class="panel-heading">
					<a data-toggle="collapse"
						data-parent="#accordion1" href="#collapseOne">
						Par&aacute;metros de b&uacute;squeda
					</a>
				</div>
			</div>
			<br>
			<div class="panel-group" id="accordion2">
				<div class="panel panel-default">
					<div class="panel-heading">
						<a class="accordion-toggle" data-toggle="collapse"
							data-parent="#accordion2" href="#collapseTwo">Resultados: ${totalMaterias } 
						</a>
					</div>
					<div id="collapseTwo" class="panel-collapse collapse in">
						<div class="panel-body">
							<div id="list-libro" class="content scaffold-list">
								<table class="table table-striped table-bordered table-hover table-condensed">
									<thead>
										<g:sortableColumn property="titulo" title="T&iacute;tulo"/>
									</thead>
									<tbody>
										<g:each in="${materiasList}" status="i"
											var="materia">
											<tr class="${(i % 2) == 0 ? 'info' : ''}">
												<td><g:link action="show" id="${materia.id}">
														${materia.nombre}
													</g:link></td>
											</tr>
										</g:each>
									</tbody>
								</table>
							</div>
						</div>
					</div>							
				</div>
			</div>
		</div>
	</div>
</body>
</html>
