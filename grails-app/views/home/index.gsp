

<html>
	<head>
		<meta name="layout" content="main"/>
		<g:set var="layout_nosecondarymenu"	value="${true}" scope="request"/>
		<title>Reforco</title>	

		<style>
		  .carousel-inner > .item > img,
		  .carousel-inner > .item > a > img {
		      /*width: 70%;*/
		      /*margin: auto;*/
		      height: 300px;
		  }
	  	</style>

	</head>


	<g:render template="/layouts/_templates/banners"/>


	<div class="row">
        <div class="col-md-4 text-justify">
          <h2>Seja um Professor</h2>
          <p>Se você é um professor, cadastre-se e comece a receber propostas de todo o mundo. A nossa base conta com milhões de alunos de todo o mundo em busca de profissionais como você.</p>
          
          <p>
          	<g:link class="btn btn-default" controller="teacher" action="create">Comece agora »</g:link>
          </p>
          
        </div>
        <div class="col-md-4 text-justify">
          <h2>Aluno</h2>
          <p>Em busca de orientações diversificadas de profissionais de todo o mundo, que possam lhe atender de forma exclusiva? Encontre sua melhor opção hoje mesmo </p>
          <p>
            <g:link class="btn btn-default" controller="teacher" action="index">Encontre seu professor »</g:link>
          </p>
       </div>
        <div class="col-md-4 text-justify">
          <h2>Conheça-nos</h2>
          <p>O portal Reforço, busca ligar pessoas professores e alunos que buscam independẽncia e flexibilidade no aprendizado. As aulas de reforço permite um atendimento exclusivo que faz toda a adiferença na sua carreira.</p>
          <p>
          	<g:link class="btn btn-default" controller="home" action="sobre">Saiba mais »</g:link>
          </p>
        </div>
      </div>


	<!-- ${sec.username()}, seja bem vindo! <br><br><br>
	%{-- <sec:ifAnyGranted roles= "ROLE_PROF">

	<g:link controller='course' action="create", id="${teacherInstance.id}">    
		<input type="button"  class="btn btn-default" value="Professor, cadastre um curso" class="button"/> 
	</g:link>
	</sec:ifAnyGranted> --}%
	Aqui deverao vir as informaçoes e dados que nao dependem da sessao do usuario(proessores, cursos disponiveis) e apenas links para os perfis. Pois todos poderao acessar essa pagina. Toda via, pode haver conteudo dinamico, para os logados e n~ao logados - apenas n pode utilizar dados da sessao. <br><br>

	Quem ainda nao e professor, aparecera um botao pra ele se tornar

	<sec:ifAnyGranted roles= "ROLE_USER">

	%{-- /*info para quem estiver logado */ --}%
	<sec:ifNotGranted  roles="ROLE_PROF">

	<g:link controller='teacher' action="create">    
		<input type="button"  class="btn btn-default" value="Torne-se um professor" class="button"/> 
	</g:link>
	</sec:ifNotGranted >

	</sec:ifAnyGranted>



		%{-- Infom para quem n~ao estivert logado --}%
	<sec:ifNotLoggedIn>
	<g:link controller='login' action="index">    
		<input type="button"  class="btn btn-default" value="vai logar vagabundo" class="button"/> 
	</g:link>
	</sec:ifNotLoggedIn>

	<sec:ifLoggedIn>
	<li class="logout"><a href="${createLink(uri: '/j_spring_security_logout')}">
					<i class="glyphicon glyphicon-off"></i>
					Sair
	</a></li>

	<g:link controller='home' action="perfil">    
		<input type="button"  class="btn btn-default" value="Acesse seu perfil" class="button"/> 
	</g:link>


	</sec:ifLoggedIn>

	<g:link controller='teacher' action="index">    
		<input type="button"  class="btn btn-default" value="Veja todos os nossos professores" class="button"/> 
	</g:link>

	<g:link controller='course' action="index">    
		<input type="button"  class="btn btn-default" value="Veja todos os nossos cursos" class="button"/> 
	</g:link> -->

	<script type="text/javascript">
		// Activate Carousel
		$("#myCarousel").carousel();

		// Enable Carousel Indicators
		$(".item").click(function(){
		    $("#myCarousel").carousel(1);
		});

		// Enable Carousel Controls
		$(".left").click(function(){
		    $("#myCarousel").carousel("prev");
		});
	</script>

</html>

