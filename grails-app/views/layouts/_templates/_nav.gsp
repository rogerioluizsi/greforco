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

      <div ><a><asset:image width="163px" height="60px" src="logo.png" alt="Grails"/></a></div>

      <!-- <a class="navbar-brand" data-method="get" href="/"><img alt="Reforço WEB" src="/assets/images/logo.png" width="160" height="55"></a> -->
    </div>
      <ul class="nav navbar-nav">
          <li><a class="active" data-method="get" href="${createLink(uri: '/')}">Início</a> </li>
          <li><g:link controller="teacher" action="index">Professores</g:link></li>
          <li><g:link controller="matter" action="index">Materias</g:link></li>
          <li><g:link controller="course" action="index">Aulas</g:link></li>
          <li><g:link controller="contact" action="create">Contato</g:link></li>
      </ul>
     
        
      
    </div><!-- /.navbar-collapse -->
  </nav>