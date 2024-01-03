<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Inner.Master" AutoEventWireup="true" CodeBehind="Dashborad.aspx.cs" Inherits="NewTest.Dashborad" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="CSS/style2.css" />

    <style type="text/css">
        .DashBoardBtn {
             background: linear-gradient(#D0E4FF,#1775F1,#0C5FCD);
            color: #fff;
            padding: 7px 15px;
            border-radius: 10px;
            margin-top: 15px;
            cursor: pointer;
            align-items: end;
            float: right;
        }
    </style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <main>
        <h1 class="title">Dashboard</h1>
        <ul class="breadcrumbs">
            <li><a href="#">Home</a></li>
            <li class="divider">/</li>
            <li><a href="#" class="active">Dashboard</a></li>
        </ul>
        <div class="info-data">
            <div class="card">
                <div class="head">
                    <div>
                        <h2>Batches</h2>
                        <p>Total Batches</p>
                    </div>
                    <i class='bx bx-happy-beaming icon'></i>
                </div>
                <label>20</label>
                <%-- <button >Continue</button>--%>
                <asp:Button ID="btnBatches" runat="server" CssClass="DashBoardBtn" Text="Continue" />
            </div>
            <div class="card">
                <div class="head">
                    <div>
                        <h2>Staff</h2>
                        <p>Total Staff</p>
                    </div>
                    <i class='bx bx-male icon down'></i>
                </div>
                <label>
                    345
                </label>
               <asp:Button ID="Button2" runat="server" CssClass="DashBoardBtn" Text="Continue" />
          
            </div>
            <div class="card">
                <div class="head">
                    <div>
                        <h2>Students</h2>
                        <p>Total Students</p>
                    </div>
                    <i class='bx bx-user icon'></i>


                </div>
                <label>5000</label>
                <asp:Button ID="Button3" runat="server" CssClass="DashBoardBtn" Text="Continue" />
          

            </div>
        </div>
        <ul class="breadcrumbs" style="margin-top: 20px;">
            <li><a href="#">Posts</a></li>
            <li class="divider">/</li>
            <li><a href="#" class="active">Images</a></li>
        </ul>
        <div class="bottom-card">

            <div class="card">
                <div class="bottom">
                    <div>
                        <h2>Posts</h2>
                        <p>Common Post</p>
                    </div>
                    <i class='bx bx-post icon'></i>
                </div>
                <label>5000</label>
            </div>
            <div class="card">
                <div class="bottom">
                    <div>
                        <h2>Valid Posts</h2>
                        <p>Total Valid Post</p>
                    </div>
                    <i class='bx bx-post icon'></i>
                </div>
                <label>4600</label>
            </div>
            <div class="card">
                <div class="bottom">
                    <div>
                        <h2>Rejected Posts</h2>
                        <p>Total Rejected Post</p>
                    </div>
                    <i class='bx bx-post icon'></i>
                </div>
                <label>400</label>
            </div>

        </div>
    </main>
    <!-- MAIN-->
    </section> 
    <!-- NAVBAR -->

    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="../JS/sim1.js"></script>

</asp:Content>
