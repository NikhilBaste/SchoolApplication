<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Outside.Master" AutoEventWireup="true" CodeBehind="service.aspx.cs" Inherits="NewTest.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/service.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">
    <div class="jumbotron jumbotron-sm justify-content-center" >
    <div class="container">
        <div class="row">
            <div class="col-sm-20 col-lg-20">
                <h1 class="h1">
                    Our services </h1>
            </div>
        </div>
    </div>
</div>
<div class='container-fluid mx-auto mt-5 mb-5 col-12' style="text-align: center">
    <div class="hd">Why People Believe in Us</div>
    <p><small class="text-muted">Always render more and better service than <br />is expected of you, no matter what your ask may be.</small></p>
    <div class="row" style="justify-content: center">
        <div class="card col-md-3 col-12">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="https://i.imgur.com/S7FJza5.png" />
                    <div class="shadow"></div>
                    <div class="card-title"> We're Free </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted">We spent thousands of hours creating on algorithm that does this for you in seconds.</small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12 ml-2">
            <div class="card-content">
                <div class="card-body"> <img class="img" src="https://i.imgur.com/xUWJuHB.png" />
                    <div class="card-title"> We're Unbiased </div>
                    <div class="card-subtitle">
                        <p> <small class="text-muted"> We don't accept ads from anyone. We use actual data to match you who the best person for each job </small> </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="card col-md-3 col-12 ml-2">
            <div class="card-content">
                <div class="card-body"> <img class="img rck" src="https://i.imgur.com/rG3CGn3.png" />
                    <div class="card-title"> We Guide you </div>
                    <div class="card-subtitle"> 
                        <p> <small class="text-muted">for your future 
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
</asp:Content>