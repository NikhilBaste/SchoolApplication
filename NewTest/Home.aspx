<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Outside.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NewTest.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/style.css" rel="stylesheet" />
    

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">


    <section id="home">
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner">
        <div class="carousel-item active">
          <img src="Image/college-campus.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="Image/college-campus1.jpg" class="d-block w-100" alt="...">
        </div>
        <div class="carousel-item">
          <img src="Image/college-campus2.jpg" class="d-block w-100" alt="...">
        </div>
      </div>
      <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>
      <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>
    </div>
  </section>

  <!-- Other section -->
  <section id="other">
    <div class="container-fluid text-center">

      <div class=" other-section">
        <h2>About Us</h2>
        <div class="container  other-p ">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nihil eligendi neque reiciendis tempora aut
            dolorum quidem officiis harum repellat! Possimus expedita eum aliquid amet, laudantium odit sunt, quia
            excepturi vitae, ea aperiam ullam quae voluptates impedit molestiae beatae vel dolorum itaque. Dolorum
            veritatis consequuntur soluta aperiam id eum error fugiat molestias in, esse velit voluptas nisi, autem ex
            expedita provident! Id cupiditate quo sunt asperiores debitis dignissimos magni harum fuga autem. Pariatur
            vel impedit nam cumque rerum libero sapiente magnam cum! Eveniet consequatur, eum ratione ipsa repudiandae
            commodi in, eligendi alias dolorem, nulla tenetur quibusdam iste iure adipisci officiis porro! Lorem ipsum
            dolor sit amet, consectetur adipiscing elit. Nulla at sem eget metus lobortis condimentum. Praesent
            hendrerit sem nisi, a iaculis purus vestibulum in.</p>
        </div>
        <div class=" divider ">
          <img src="Image/College.jpeg" alt="">
        </div>

        <div class="container ourstory">
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Asperiores voluptate laboriosam corporis nulla
            cumque laborum ratione, quas enim sapiente nobis voluptatum eos id cupiditate magnam? Voluptas hic laborum
            dignissimos veritatis adipisci molestiae dolorum sapiente nisi repudiandae rerum placeat impedit quae eius
            tenetur et consequatur ducimus ea harum ipsum totam, beatae repellat incidunt praesentium! Eaque veritatis
            ea necessitatibus sint accusamus, molestias aut accusantium commodi expedita fugit, eveniet modi nihil
            exercitationem quam libero pariatur quos. Voluptate eligendi beatae, inventore numquam error porro
            consequuntur dicta aspernatur hic sint eius animi omnis consequatur earum sequi! Saepe placeat corrupti
            autem inventore eveniet a suscipit iure. Ipsa recusandae illo blanditiis veritatis quis quia, debitis
            accusantium delectus tenetur asperiores ex reiciendis ducimus vel possimus laborum dolorem exercitationem
            perspiciatis, eum, placeat quo eaque! Sint ex perspiciatis sunt porro dolorum in velit ea amet, totam
            deserunt rem nemo laudantium provident obcaecati quasi ipsam eveniet? Inventore nihil nulla delectus magni
            odio atque voluptatibus numquam at blanditiis perspiciatis eos saepe rerum optio modi rem molestiae, beatae,
            dolores quasi illo odit repellat repellendus? Amet velit, itaque soluta voluptate maiores assumenda suscipit
            quae iure quas ratione animi quo a minima! Nesciunt ex quasi delectus, aliquam quam fugit, eum deleniti,
            dolor veniam quod ipsum.</p>
        </div>
        <div class="container discover justify-content-center">
          <a href="#"> Discover More</a>
        </div>
      </div>

    </div>
  </section>


  <!-- About Section -->
  <section id="about" >
    <dev class="founders text-center">
      <h1><a href="#">Founders</a></h1>
      <h5>The Faces Behind the Innovation’s !!</h5>
    </dev>


<div class="container-fluid founders-data">
  <div class="row">

    <div class="col">
      <div class="card" style="width:400px">
        <img class="card-img-top" src="Image/College.jpeg" alt="Card image" style="width:100%">
        <div class="card-body">
          <h4 class="card-title text-center">John Doe</h4>
          <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
          <a href="#" class="btn btn-primary">See Profile</a>
        </div>
      </div>
    </div>

    <div class="col">
      <div class="card" style="width:400px">
        <img class="card-img-top" src="Image/College.jpeg" alt="Card image" style="width:100%">
        <div class="card-body">
          <h4 class="card-title text-center">John Doe</h4>
          <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
          <a href="#" class="btn btn-primary">See Profile</a>
        </div>
      </div>
    </div>

    <div class="col">
      <div class="card" style="width:400px">
        <img class="card-img-top" src="Image/College.jpeg" alt="Card image" style="width:100%">
        <div class="card-body">
          <h4 class="card-title text-center">John Doe</h4>
          <p class="card-text">Some example text some example text. John Doe is an architect and engineer</p>
          <a href="#" class="btn btn-primary">See Profile</a>
        </div>
      </div>
    </div>

  </div>
</div>
  </section>





   <%-- <div id="demo" class="carousel slide" data-ride="carousel">
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
        </ul>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="Image/college-campus.jpg" alt="Los Angeles" width="1100" height="500">
                <div class="carousel-caption">
                    <h3>Hello</h3>
                    <p>this is the chatwebsite</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Image/college-campus1.jpg" alt="Chicago" width="1100" height="500">
                <div class="carousel-caption">
                    <h3>IIT Chandwad</h3>
                    <p>Thank you</p>
                </div>
            </div>
            <div class="carousel-item">
                <img src="Image/college-campus2.jpg" alt="New York" width="1100" height="500">
                <div class="carousel-caption">
                    <h3>FInd to Find</h3>
                    <p>Find to gain</p>
                </div>
            </div>
        </div>--%>
       <%-- <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>--%>
    </div>

    
  <!-- About Section -->
  <%--<section id="about">
    <div class="container-a cont-about">
      <div class="row">
        <div class="col-lg-12">

          <h2>About Us</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at sem eget metus lobortis condimentum. Praesent hendrerit sem nisi, a iaculis purus vestibulum in.</p>
          <p>lorem100

          </p>
        </div>
      </div>
    </div>
  </section>--%>

  <!-- Services Section -->
  <%--<section id="services">
    <div class="container-s container-fluid">
      <div class="row">
        <div class="col-lg-12">
          <h2>Our Services</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at sem eget metus lobortis condimentum. Praesent hendrerit sem nisi, a iaculis purus vestibulum in.</p>
        </div>
      </div>
    </div>
  </section>--%>

  <!-- Contact Us Section -->
<%--  <section id="contact">
    <div class="container-c">
      <div class="row">
        <div class="col-lg-12">
          <h2>Contact Us</h2>
          <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla at sem eget metus lobortis condimentum. Praesent hendrerit sem nisi, a iaculis purus vestibulum in.</p>
        </div>
      </div>
    </div>
  </section> --%>

</asp:Content>
