<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      %{-- <%= link_to image_tag("logo.png", size: "160x55", alt: "Reforço WEB"), root_path, :method => :get,class: "navbar-brand" %> --}%
    </div
    
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
         %{--  <li><%= link_to "Início", root_path,:method => :get, class: "active" %> </li>
          <li><%= link_to "Professores", teachers_path, class: "active" %> </li>
          <li><%= link_to "Materias", "/matters/", class: "active"%></li>
          <li><%= link_to "Aulas", "/cursos/", class: "active"%></li> --}%
          
          <li>
          
              <a href="#modalContacts" data-toggle="modal" data-target="#modalContacts">
                Contato
              </a>
          
          </li>
          
          %{-- 
          <% if user_signed_in? %>
            <!--<li><%= link_to "Professor", new_teacher_path, class: "active" %></li>-->
            <!--<li><%= link_to "Aluno", new_student_path, class: "active" %></li>-->
            <li><%= link_to "Meu Perfil", "#{root_url}meuperfil" ,class: "active" %></li>
            
            <li><%= link_to 'Sair', destroy_user_session_path, :method => :delete, class: "active" %> </li>
          <% end %> --}%

      </ul>
      
      <form class="navbar-form navbar-right" role="search">
        
         <ul class="nav navbar-nav">
         %{--  <% if user_signed_in? %>
          
            <div class="dropdown">
              <button class="btn btn-primary dropdown-toggle" style="margin-right: 10px;" type="button" data-toggle="dropdown">
                 <span class="glyphicon glyphicon-user"></span> <%= current_user.name %>
                <span class="caret"></span>
              </button>
              <ul class="dropdown-menu">
                <li><%= link_to "Meu Perfil", "#{root_url}meuperfil", class: "active" %></li>
                <% if current_user.admin? %>
                    <li><%= link_to 'Área Administrativa', rails_admin.dashboard_path, class: "active" %> </li>
                <% end %>
                <li><%= link_to 'Sair', destroy_user_session_path, :method => :delete, class: "active" %> </li>
              </ul>
            </div>
            
            <span>&nbsp;</span><span>&nbsp;</span>
          
          <% else %>
            <li>
              
              <!--<a href="<%= new_user_registration_path %>" class="btn btn-primary btn-sm" style="margin-right: 10px;">-->
              <!--  <span class="glyphicon glyphicon-user"></span> Entrar -->
              <!--</a>-->
              
              <button id="btnentrar" type="button"  class="btn btn-primary " style="margin-right: 10px;">
                <span class="glyphicon glyphicon-user"></span> Entrar 
              </button>
              
              
              
                <!--<%= link_to "Entrar", new_user_registration_path, class: "active"%>-->
                <span></span>
            </li>
          <% end %>
           --}%
        </ul>
        
        
        
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Pesquisar">
        </div>
        <button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
      </form>
     
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>