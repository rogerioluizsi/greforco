<%@ page import="greforco.User" %>
<%@ page import="greforco.Student" %>
<%@ page import="greforco.Teacher" %>

	<head>
        <meta name="layout" content="main"/>
        <g:set var="layout_nosecondarymenu" value="${true}" scope="request"/>
        <g:set var="id_user" value="${sec.loggedInUserInfo(field: 'id')}"/>
        <g:set var="usuario" value="${User.get(id_user)}"/>
        <g:set var="aluno" value="${Student.findByUser(usuario)}"/>
        <g:set var="prof" value="${Teacher.findByUser(usuario)}"/>
        <title>Reforco</title>  

    </head>


<div class="container">
		
		<div class="row">
			
			<div class="row">
				<div class="col-md-10">
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
									<!-- <img class="avatar img-thumbnail " style="margin-left: 10px; width: 90px; height: 90px;" src="/avatars/medium/missing.png" alt="Missing"> -->
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
											<a href="#modalEditUser" class="btn btn-success btn-xs" style="margin-top: 20px;" data-toggle="modal" data-target="#modalEditUser">Editar</a>
										</div>
									</div>
									<!-- <p>Data de Nascimento:  </p> -->

		                            <p>CPF: ${aluno?.cpf} </p>
		                            <p>Endereço: ${aluno?.addrress}  </p>
            					    <p>UF: ${aluno?.state} </p>
            					    <!-- <p>País:  </p>     -->
		                        </div>
								<hr>

		                        <div>
		                        	<sec:access expression="hasRole('ROLE_PROF')">
    		                        	<div class="row">
				                        	<div class="col-md-8">
				                        		<h3>Sobre o professor</h3>	
				                        	</div>
											<div class="col-md-4 content text-right">
												<a href="#modalEditTeacher" class="btn btn-success btn-xs" style="margin-top: 20px;" data-toggle="modal" data-target="#modalEditTeacher">Editar</a>
											</div>
										</div>
											
	        		                        <p>Formação: ${prof?.formation} </p>
	        		                        <p>Universidade: ${prof?.university} </p>
	        		                        <!-- <p>Descrição Pessoal: Apaixonado por dar aula e ensinar.</p> -->
	        		                        <hr>
		                        	</sec:access>
    		                        	
		                        </div>
		                </div>
					</div>
				</div>


				<div class="col-md-2">
				
				<div class="row">
				    <sec:access expression="hasRole('ROLE_PROF')">
						<div class="panel panel-default">
							
				            <div class="panel-heading">
				            	<h3 class="panel-title"><strong>Sou professor em:</strong></h3>
							</div> <!--panel-heading-->
							
							<div class="panel-body">
								
								<div class="row">
									<ul>
										
											<div class="col-md-12">
												<li> <a href="/courses/3">Programação Orientada a Objetos</a>
												<br>
											</li></div>
		
									</ul>
									
									<div class="content text-center">
										<a href="#modalnewCourse" class="btn btn-success" style="margin-top: 20px;" data-toggle="modal" data-target="#modalnewCourse">Novo Curso</a>
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
						                    	<a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed" aria-expanded="false">Ultimas aulas contratadas</a>
						                    </strong>
						                </h3>
						            </div>
						            <div id="collapseOne" class="panel-collapse collapse" aria-expanded="false" style="height: 0px;">
						                <div class="panel-body">
						                    <ul>
																      	<li>
																      		 <a href="/enrollments/3">Programação Orientada a Objetos</a>
																      	</li>	
					                		</ul>	
						                    
						                </div>
						            </div>
						        </div>
						    </div>
						</div>
	
					</sec:access>
						
							
						
						
					</div> <!--row-->
				
			</div>


			</div><!--row-->
			
			
			
		
		</div> <!--row 1-->
		
		<div class="row">
			
			
		</div> <!--row2-->
		
</div>