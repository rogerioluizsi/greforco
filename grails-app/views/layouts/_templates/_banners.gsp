<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <!-- <li data-target="#myCarousel" data-slide-to="3"></li> -->
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <!-- <img src="img_chania.jpg" alt="Chania"> -->
      <!-- <asset:image width="163px" height="60px" src="banners/baner1.png" alt="banner"/> -->
      <asset:image width="945" src="banners/baner1.jpg" alt="banner"/>
      <div class="carousel-caption">
        <h1>Quer saber como podemos te ajudar?</h1>
        <p>Suas aulas de reforço agora com mais flexibilidade e qualidade!</p>

        <p>
          <g:link class="btn btn-primary btn-lg" controller="teacher" action="index">Encontre seu professor »</g:link>
        </p>
        <p>
          <g:link class="btn btn-primary btn-lg" controller="teacher" action="create">Seja um professor »</g:link>
        </p>
      </div>
      
    </div>

    <div class="item">
      <asset:image width="945"src="banners/baner2.jpg" alt="banner"/>
      <div class="carousel-caption">
        <h1>Aulas Particulares</h1>
        <p>Somos um dos maiores portais de aulas particulares do Brasil!</p>

        <p>
          <g:link class="btn btn-primary btn-lg" controller="teacher" action="index">Com um total de 6 professores cadastrados em diferentes matérias »</g:link>
          <!-- <a class="btn btn-primary btn-lg" href="teacher" role="button">Com um total de 6 professores cadastrados em diferentes matérias »</a> -->
        </p>
        <p>
          <g:link class="btn btn-primary btn-lg" controller="home" action="sobre">Veja quem somos »</g:link>
          <!-- <a class="btn btn-primary btn-lg" href="home/sobre" role="button">Veja quem somos »</a> -->
        </p>
      </div>
    </div>

    <div class="item">
      <asset:image width="945" src="banners/baner3.jpg" alt="banner"/>
      <div class="carousel-caption">
        <h1>Como Funciona</h1>
        <p>Tenha aulas online com professores particulares de todo o Brasil!</p>

        <p>
          <!-- <a class="btn btn-primary btn-lg" href="http://reforco.herokuapp.com/pages/como-funciona" role="button">Entenda como funcionamos »</a> -->
          <g:link class="btn btn-primary btn-lg" controller="home" action="como">Entenda como funcionamos »</g:link>
        </p>
        <p>
          <a class="btn btn-primary btn-lg" href="#modalContacts" data-toggle="modal" data-target="#modalContacts">
                Fale conosco »
              </a>
          <!-- <a class="btn btn-primary btn-lg" href="http://reforco.herokuapp.com/contacts/new" role="button">Fale conosco »</a> -->
        </p>
      </div>
    </div>

    <!-- <div class="item">
      <img src="img_flower2.jpg" alt="Flower">
    </div> -->
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>