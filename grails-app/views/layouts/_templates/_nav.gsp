<nav id="nav-menu" class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>

      <div>
        <a>
          <asset:image width="163px" height="60px" src="logo.png" alt="reforco.com"/>
        </a>
      </div>

    </div>
      <ul class="nav navbar-nav">
          <li><a class="active" data-method="get" href="${createLink(uri: '/')}">Início</a> </li>
          <li><g:link controller="teacher" action="index">Professores</g:link></li>
          <li><g:link controller="matter" action="index">Materias</g:link></li>
          <li><g:link controller="course" action="index">Aulas</g:link></li>
          <li>
              <a href="#modalContacts" data-toggle="modal" data-target="#modalContacts">
                Contato
              </a>
          </li>
      </ul>

      <g:form class="navbar-form navbar-right" role="search" url="[action:'auth',controller:'login']" method="get">
      <!-- <form class="navbar-form navbar-right" role="search"> -->

        <div class="dropdown open">
              <button class="btn btn-primary dropdown-toggle" style="margin-right: 10px;" type="button" data-toggle="dropdown" aria-expanded="true">
                 <span class="glyphicon glyphicon-user"></span>

                 <g:if test="${(sec.username())}">
                   <%= sec.username()%>
                   <span class="caret"></span>
                 </g:if>
                 <g:else>
                   <%="Entrar"%>
                </g:else>
                
              </button>
              <g:if test="${(sec.username())}">
                   <ul class="dropdown-menu">
                      <li>
                        <g:link controller="home" action="meuperfil">
                          <i class="glyphicon glyphicon-pencil"></i>
                          Meu Perfil
                        </g:link>
                      </li>
                      <!-- <li><a class="active" href="/admin/">Área Administrativa</a> </li> -->
                      <li>
                        <!-- <a class="active" rel="nofollow" data-method="delete" href="/users/sign_out">Sair</a> -->
                        <a href="${createLink(uri: '/j_spring_security_logout')}">
                            <i class="glyphicon glyphicon-off"></i>
                            Sair
                        </a>
                      </li>
                    </ul>
               </g:if>
              
            </div>

         <!-- <ul class="nav navbar-nav">
            <li>
              <button id="btnentrar" type="submit" class="btn btn-primary" style="margin-right: 10px;">
                <span class="glyphicon glyphicon-user"></span> 

                <g:if test="${(sec.username())}">
                   <%= sec.username()%>
                </g:if>
                <g:else>
                   <%="Entrar"%>
                </g:else>
              </button>
            </li>
        </ul> -->
        
        <!-- <div class="form-group">
          <input type="text" class="form-control" placeholder="Pesquisar">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button> -->
      <!-- </form> -->
      </g:form>
     
        
      
    </div><!-- /.navbar-collapse -->
  </nav>