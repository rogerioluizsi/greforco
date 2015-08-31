
<div class="col-md-10">
    
    <div class="well" style="width: 97%;">
  
  <div class="row">
  
      <div class="col-md-12">
      
            <h1>Sou aluno em:</h1>
              <!--FOR STUDENTS-->

      </div>
      
      
      <div class="col-md-12">
        
        <g:form name="form-recomendacao" role="form" url="[action:'save',controller:'recommendation']" method="POST">
        
          <table class="table table-hover">
                <thead>
                  <tr>
                    <th>Curso</th>
                    <th>Data da aula</th>
                    <th>Horas</th>
                    <th>Comentário</th>
                    <th>Avaliação</th>
                    <th>Opção</th>
                    <!--<th>Enviar</th>-->
                  </tr>
                </thead>

                <tbody>

                	<g:each in="${contratei}" status="i" var="aula">
		                  <tr>
		                    <td> 
		                        <g:link controller="enrollment" action="show" id="${aula.id}">
									<%= aula.course.name %> (<%= aula.hours %>h) 

									<input type="hidden" name="enrollment.id" value="${aula.id}">
								</g:link>
		                    </td>
		                    <td> <%= aula.dateCreated %> </td>
		                    
		                    <td> <%= aula.hours %> </td>
		                    
		                    <g:if test="${aula.evaluation}">
		                          <td>

		                          	  <%= greforco.Recommendation.findByEnrollment(aula).description %>
		                          </td>
		                          <td>
		                          		<g:if test="${greforco.Recommendation.findByEnrollment(aula).rating == '0'}">
		                                	<span class="glyphicon glyphicon-thumbs-down"></span>
		                                </g:if>
		                                <g:else>
		                                	<span class="glyphicon glyphicon-thumbs-up"></span>
		                            	</g:else>
		                          </td>
		                          
		                          <td>
		                              Curso Avaliado!
		                          </td>
		                    </g:if>
		                    <g:else>

		                    	<td>
                                        <!-- <div class="form-group">
                                          <input type="text" name="description" placeholder="Comentário sobre a aula" class="form-control">
                                        </div> -->
                                        ------------
                                </td>
                                
                                <td>
                                      <!-- <div class="form-group">
                                        <select class="form-control" name="rating" id="sel1">
                                          <option value="1">Gostei</option>
                                          <option value="0">Não Gostei</option>
                                        </select>
                                        <input type="hidden" name="authenticity_token" id="authenticity_token" value="cOLtSiInixgFfUkSNwR3rQNW+i0b7djOTfoAnEXlDryTFFoq4yBXu40uJh210jOcfu4uV0gi1tK/PEPe8GPhgw==">
                                        <input type="hidden" name="course_id" value="${aula.course.id}">
                                        <input type="hidden" name="user_id" value="${aluno.id}">
                                      </div> -->

                                      ------------
                                </td>
                                <td>
                                      <button name="button" type="submit" method="post" action="save" controller="recommendation" class="btn btn-success">Avaliar</button>
                                </td>
		                	</g:else>
		                      
		                  </tr>
                  </g:each>
                  
                </tbody>
            </table>
        
          </g:form>
        
      </div>
      
  
  </div> <!--row-->
  
</div>   <!--well-->
                    </div>