
 <div class="modal fade" id="modalContacts" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h1 class="modal-title" id="modalContactslLabel">Entre em Contato Conosco</h1>
      </div>
      <div class="modal-body">


          <g:form name="new_contact" id="new_contact" url="[action:'save',controller:'contact']" method="post">

            <!-- <form class="new_contact" id="new_contact" action="/contacts" accept-charset="UTF-8" method="post"> -->

              <input name="utf8" type="hidden" value="✓"><input type="hidden" name="authenticity_token" value="cN1XMoSJMYYqgG1V2zgl3j5PsYH/W0TQU62Agl93h+30peWnKijdXZl9cQ55d0/+mDjvZxT1EzhKFljNaMavaQ==">
                  <div class="container">
                	  <div class="row" style="margin-left: -25px;">
                	    <div class="col-md-6">
                			  <div class="panel panel-default">
                				  <div class="panel-heading">
                				    <div class="form-group">
                              <label>Nome</label>
                              <input type="text" class="form-control" required="" placeholder="informe seu Nome" name="name" id="contact_name">
                            </div>
                            <div class="form-group">
                              <label>E-mail</label>
                              <input type="email" class="form-control" required="" placeholder="informe seu E-mail" name="email" id="contact_email">
                            </div>
                            <div class="form-group">
                              <label>Assunto</label>
                              <input type="text" class="form-control" required="" placeholder="informe o assunto" name="subject" id="contact_subject">
                            </div>
                            <div class="form-group">
                              <label>Mensagem</label>
                              <textarea class="form-control" rows="5" required="" placeholder="informe a mensagem" name="message" id="contact_message">  </textarea>
                            </div>
                            <div class="text-center">
                              <button type="submit" class="btn btn-success">Enviar Menssagem</button>
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>

            </g:form>
<!-- </form> -->
      </div>
      <div class="modal-footer">
        <!--<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <!--<button type="button" class="btn btn-primary">Salvar</button>-->
      </div>
    </div>
  </div>
</div> 