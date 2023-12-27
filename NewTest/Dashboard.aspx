<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Inner.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="NewTest.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    </style>
    <script type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="margin-top:70px; font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif">
        DashBoard
    </h1>
    <div class="row mb-3" >
        <div class="col-xl-3 col-sm-6 py-2">
            <div class="card bg-success text-white h-100">
                <div class="card-body bg-success">
                    <div class="rotate">
                        <i class="fa fa-user fa-4x"></i>
                    </div>
                    <h6 class="text-uppercase">Users</h6>
                    <h1 class="display-4">134</h1>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 py-2">
            <div class="card text-white bg-danger h-100">
                <div class="card-body bg-danger">
                    <div class="rotate">
                        <i class="fa fa-list fa-4x"></i>
                    </div>
                    <h6 class="text-uppercase">Posts</h6>
                    <h1 class="display-4">87</h1>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 py-2">
            <div class="card text-white bg-info h-100">
                <div class="card-body bg-info">
                    <div class="rotate">
                        <i class="fa fa-twitter fa-4x"></i>
                    </div>
                    <h6 class="text-uppercase">Views</h6>
                    <h1 class="display-4">125</h1>
                </div>
            </div>
        </div>
        <div class="col-xl-3 col-sm-6 py-2">
            <div class="card text-white bg-warning h-100">
                <div class="card-body">
                    <div class="rotate">
                        <i class="fa fa-share fa-4x"></i>
                    </div>
                    <h6 class="text-uppercase">Student Register</h6>
                    <h1 class="display-4">36</h1>
                </div>
            </div>
        </div>
    </div>
    

</asp:Content>
