<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Inner.Master" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="NewTest.RegistrationForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .btn {
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
    <div class="Conatiner">
        <asp:Button ID="newRegistration" Text="New" runat="server" OnClick="newRegistration_Click" CssClass="btn"/>
        <asp:GridView ID="GridView1" runat="server">

        </asp:GridView>
    </div>
</asp:Content>
