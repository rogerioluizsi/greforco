<%@ page import="greforco.User" %>
<%@ page import="greforco.Student" %>
<%@ page import="greforco.Teacher" %>
<%@ page import="greforco.Course" %>
<%@ page import="greforco.Enrollment" %>
<%@ page import="greforco.Recommendation" %>

	<head>
        <meta name="layout" content="main"/>
        <g:set var="layout_nosecondarymenu" value="${true}" scope="request"/>
        <g:set var="id_user" value="${sec.loggedInUserInfo(field: 'id')}"/>
        <g:set var="usuario" value="${User.get(id_user)}"/>
        <g:set var="aluno" value="${Student.findByUser(usuario)}"/>
        <g:set var="prof" value="${Teacher.findByUser(usuario)}"/>
        <g:set var="cursos" value="${Course.findAllByTeacher(prof)}"/>
        <g:set var="contratadas" value="${Enrollment.findAllByCourseInList(cursos)}"/>
        <g:set var="contratei" value="${Enrollment.findAllByStudent(aluno)}"/>
        <g:set var="recomendacoes" value="${Recommendation.findAllByEnrollmentInList(contratei)}"/>
        <title>Reforco</title>  

    </head>


<div class="container">
		
		<div class="row">
			
			<div class="row">
				<div class="col-md-9">
					<h1> ${aluno?.name} </h1>
					<hr>
				</div>
			</div>
			
			<div class="row">
				<div class="col-md-3">
			
					<div class="panel panel-default">
			            <div class="panel-heading">
			            	<!--<h3 class="panel-title">Foto</h3>-->
						</div>
						<div class="panel-body">
							<div class="container ">
								<a href="#">
									<asset:image class="avatar img-thumbnail " src="avatar-default.png" alt="default" style="margin-left: 55px; width: 90px; height: 90px;"/>
								</a>
							</div>
							<hr>
						</div>
					</div>
					
					<div class="panel panel-default">
			            <div class="panel-heading">
			            	<h3 class="panel-title"><strong>Contatos</strong></h3>
						</div>
						<div class="panel-body">
							<div class="container">
								<!-- <p>e-mail: ${user?.username} </p> -->
								<!-- <p>e-mail: ${User.findByUsername(sec.username())} </p> -->
								<p>e-mail: ${usuario.username} </p>
								
								<p>Telefone: ${aluno?.fone}  </p>
								<p>Whatsapp: ${aluno?.whatsapp} </p>
								<p>Skype: ${aluno?.skype} </p>
							</div>
						</div>
					</div>
				
				</div> 


				<div class="col-md-4">
					<div class="panel panel-default" style="min-height: 356px;">
		                    <div class="panel-heading">
		                        <h3 class="panel-title"><strong>Detalhes</strong></h3>
		                    </div>
		                    <div class="panel-body">
		                        <div>
		                        	<div class="row">
			                        	<div class="col-md-8">
			                        		<h3>Sobre o usuário</h3>	
			                        	</div>
			                            <div class="col-md-4 content text-right">
											<!-- <a href="#modalEditUser" class="btn btn-success btn-xs" style="margin-top: 20px;" data-toggle="modal" data-target="#modalEditUser">Editar</a> -->
											<g:link controller="user" action="edit" id="${usuario.id}" class="btn btn-success btn-xs" style="margin-top: 20px;">Editar</g:link>
										</div>
									</div>
									<!-- <p>Data de Nascimento:  </p> -->

		                            <p>CPF: ${aluno?.cpf} </p>
		                            <p>Endereço: ${aluno?.address}  </p>
            					    <p>UF: ${aluno?.state} </p>
            					    <!-- <p>País:  </p>     -->
		                        </div>
								<hr>

		                        <div>
		                        	 <g:if test="${(prof)}">
    		                        	<div class="row">
				                        	<div class="col-md-8">
				                        		<h3>Sobre o professor</h3>	
				                        	</div>
											<div class="col-md-4 content text-right">
												<!-- <a href="#modalEditTeacher" class="btn btn-success btn-xs" style="margin-top: 20px;" data-toggle="modal" data-target="#modalEditTeacher">Editar</a> -->
												<g:link controller="teacher" action="edit" id="${prof.id}" class="btn btn-success btn-xs" style="margin-top: 20px;">Editar</g:link>
											</div>
										</div>
											
	        		                        <p>Formação: ${prof?.formation} </p>
	        		                        <p>Universidade: ${prof?.university} </p>
	        		                        <!-- <p>Descrição Pessoal: Apaixonado por dar aula e ensinar.</p> -->
	        		                        <hr>
		                        	</g:if>
    		                        	
		                        </div>
		                </div>
					</div>
				</div>


				<div class="col-md-2">
				
				<div class="row">

				    
				    <g:if test="${(prof)}">

						<div class="panel panel-default">
							
				            <div class="panel-heading">
				            	<h3 class="panel-title"><strong>Sou professor em:</strong></h3>
							</div> <!--panel-heading-->
							
							<div class="panel-body">
								
								<div class="row">
									<ul class="margin15">
										<div class="col-md-12">
										<g:each in="${cursos}" status="i" var="curso">
												<li> 
													<g:link controller="course" action="show" id="${curso.id}">
														${fieldValue(bean: curso, field: "name")}
													</g:link>
													<!-- <br> -->
												</li>
										</g:each>
										</div>
									</ul>
									
									<div class="content text-center">
										<!-- <a href="#modalnewCourse" class="btn btn-success" style="margin-top: 20px;" data-toggle="modal" data-target="#modalnewCourse">Novo Curso</a> -->
										<g:link controller="course" action="create" class="btn btn-success btn-xs" style="margin-top: 20px;">Novo Curso</g:link>
									</div>
								</div>
							</div>
						</div> <!--panel-->



						<div class="bs-example">
						    <div class="panel-group" id="accordion">
						        <div class="panel panel-default">
						            <div class="panel-heading">
						                <h3 class="panel-title">
						                	<strong>
						                    	<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed" aria-expanded="false">Minhas aulas contratadas</a>
						                    </strong>
						                </h3>
						            </div>
						            <div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
						                <div class="panel-body">
						                    <ul class="margin15">
												<g:each in="${contratadas}" status="i" var="aula">
												      	<li>
												      		 <g:link controller="enrollment" action="show" id="${aula.id}">

												      		 <%= aula.course.name %> (<%= aula.hours %>h) 

																<!-- ${fieldValue(bean: aula, field: "course.name")} (${fieldValue(bean: aula, field: "hours")} horas) -->
															</g:link>
												      	</li>	
												</g:each>	
					                		</ul>	
						                    
						                </div>
						            </div>
						        </div>

						        <div class="panel panel-default">
						            <div class="panel-heading">
						                <h3 class="panel-title">
						                	<strong>
						                    	<a data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" class="collapsed" aria-expanded="false">Aulas que contratei</a>
						                    </strong>
						                </h3>
						            </div>
						            <div id="collapseTwo" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
						                <div class="panel-body">
						                    <ul class="margin15">
										      	<g:each in="${contratei}" status="i" var="aula">
												      	<li>
												      		 <g:link controller="enrollment" action="show" id="${aula.id}">
																<%= aula.course.name %> (<%= aula.hours %>h) 
															</g:link>
												      	</li>	
												</g:each>
					                		</ul>	
						                    
						                </div>
						            </div>
						        </div>
						    </div>
						</div>

						
					</g:if>
					<g:else>

						<div class="bs-example">
						    <div class="panel-group" id="accordion">

						        <div class="panel panel-default">
						            <div class="panel-heading">
						                <h3 class="panel-title">
						                	<strong>
						                    	<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed" aria-expanded="false">Aulas que contratei</a>
						                    </strong>
						                </h3>
						            </div>
						            <div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
						                <div class="panel-body">
						                    <ul class="margin15">
						                    	<g:each in="${contratei}" status="i" var="aula">
												      	<li>
												      		 <g:link controller="enrollment" action="show" id="${aula.id}">
																<%= aula.course.name %> (<%= aula.hours %>h) 
															</g:link>
												      	</li>	
												</g:each>
					                		</ul>	
						                    
						                </div>
						            </div>
						        </div>
						    </div>
						</div>

					</g:else>
						
							
						
						
					</div> <!--row-->
				
			</div>


			</div><!--row-->
			
			
			
		
		</div> <!--row 1-->
		
		<div class="row">

			<g:render template="/home/_render/sou_aluno"/>
			
		</div> <!--row2-->
		
</div>