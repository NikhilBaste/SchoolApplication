<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Outside.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="NewTest.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    </style>

    <script type="text/javascript">

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">


    <div id="demo" class="carousel slide" data-ride="carousel">
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
        </div>
       <%-- <a class="carousel-control-prev" href="#demo" data-slide="prev">
            <span class="carousel-control-prev-icon"></span>
        </a>
        <a class="carousel-control-next" href="#demo" data-slide="next">
            <span class="carousel-control-next-icon"></span>
        </a>--%>
    </div>

    <div class="row" id="about">
        <div class="col-md-4">
            <div class="jumbotron">
                <p class="text-success">
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate consequatur sed vel asperiores illum ipsa
          voluptatum placeat repellat vero nesciunt quas temporibus, sapiente, reiciendis reprehenderit. Aliquid amet et
          saepe architecto ullam numquam.
                </p>
            </div>
        </div>

        <div class="col-md-4">
            <div class="jumbotron">
                <p>
                    Lorem ipsum dolor sit amet consectetur adipisicing elit. Cupiditate consequatur sed vel asperiores illum ipsa
          voluptatum placeat repellat vero nesciunt quas temporibus, sapiente, reiciendis reprehenderit. Aliquid amet et
          saepe architecto ullam numquam.
                </p>
            </div>
        </div>
    </div>
</asp:Content>
