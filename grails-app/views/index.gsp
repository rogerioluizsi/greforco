 <!-- Main jumbotron for a primary marketing message or call to action -->
   <meta name="layout" content="main">   
   <div class="container-fluid">

      <div class="owl-carousel">
        <div> 
          <div class="jumbotron"  style="display:block; background-image: url('images/baner1.jpg');background-position:relative; background-repeat:no-repeat; relative">
            <div style="background-color: rgba(255, 255, 255, 0.6)">
              <h1>Quer saber como podemos te ajudar?</h1>
              <p>Suas aulas de reforço agora com mais flexibilidade e qualidade!</p>
            </div>
            <p><a class="btn btn-primary btn-lg" href="teachers" role="button">Encontre seu professor &raquo;</a></p>
            <p><a class="btn btn-primary btn-lg" href="<%= new_teacher_path %>" role="button">Seja um professor &raquo;</a></p>
          </div> 
      </div>
        <div>

          <div class="jumbotron" style="background-image: url('images/baner2.jpg');background-position:right; width: 100%; height: auto; background-repeat:no-repeat;">
            <div style="background-color: rgba(255, 255, 255, 0.6)">
              <h1>Aulas Particulares</h1>
              <p>Somos um dos maiores portais de aulas particulares do Brasil!</p>
            </div>
           %{--  <p><a class="btn btn-primary btn-lg" href="teachers" role="button">Com um total de <%= @quantidade_of_teachers %> professores cadastrados em diferentes matérias &raquo;</a></p> --}%
            <p><a class="btn btn-primary btn-lg" href="<%= root_url %>pages/sobre" role="button">Veja quem somos &raquo;</a></p>
          </div> 
        </div>
        <div> 
          <div class="jumbotron" style="background-image: url('images/baner3.jpg');background-position:right; width: 100%; height: auto; background-repeat:no-repeat;">
            <div style="background-color: rgba(255, 255, 255, 0.6)">
              <h1>Como Funciona</h1>
              <p>Tenha aulas online com professores particulares de todo o Brasil!</p>
              <p><a class="btn btn-primary btn-lg" href="<%= root_url %>pages/como-funciona" role="button">Entenda como funcionamos &raquo;</a></p>
              <p><a class="btn btn-primary btn-lg" href="<%= root_url %>contacts/new" role="button">Fale conosco &raquo;</a></p>
            </div>
           
          </div>

        </div>
      </div>
      
    </div>

    <div class="container">
      <h2><center>Conheça alguns de nossos Professores</center></h2>
      <div class = "row">
      %{--   <% @teachers.each do |teacher| %> --}%
          <div class="col-sm-6 col-md-3">
            <div class= "thumbnail">
            %{--   <%= link_to (image_tag teacher.user.avatar.url(:thumb), class: 'avatar', style: "width: 115px; height: 80px;"), teacher %> <br> <!-- thumb -->
              <blockquote>
                <p> <%= teacher.user.name %> </p>
                <footer> <%= teacher.formation %> <br> <cite title="Source Title"><%= teacher.description %></cite></footer>
              </blockquote>
            </div>
            
          </div>
        <%end%> --}%
      </div>
      
       
      <div class="row">
        <div class="col-md-4 text-justify">
          <h2>Seja um Professor</h2>
          <p>Se você é um professor, cadastre-se e comece a receber propostas de todo o mundo. A nossa base conta com milhões de alunos de todo o mundo em busca de profissionais como você.</p>
          
          <p>
           %{--  <%= link_to "Comece agora »", new_teacher_path , class: "btn btn-default"%> --}%
          </p>
          
        </div>
        <div class="col-md-4 text-justify">
          <h2>Aluno</h2>
          <p>Em busca de orientações diversificadas de profissionais de todo o mundo, que possam lhe atender de forma exclusiva? Encontre sua melhor opção hoje mesmo </p>
          <p>
           %{--  <%= link_to "Encontre seu professor »", teachers_path, class: "btn btn-default"%> --}%
          </p>
       </div>
        <div class="col-md-4 text-justify">
          <h2>Conheça-nos</h2>
          <p>O portal Reforço, busca ligar pessoas professores e alunos que buscam independẽncia e flexibilidade no aprendizado. As aulas de reforço permite um atendimento exclusivo que faz toda a adiferença na sua carreira.</p>
          <p><a class="btn btn-default" href="<%= root_url %>pages/sobre" role="button">Saiba mais &raquo;</a></p>
        </div>
      </div>
     
      <hr>
    </div> <!-- /container -->