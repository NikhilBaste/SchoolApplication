<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Outside.Master" AutoEventWireup="true" CodeBehind="contact.aspx.cs" Inherits="NewTest.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <link href="CSS/contact.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">


<div class="jumbotron jumbotron-sm justify-content-center" >
    <div class="container">
        <div class="row">
            <div class="col-sm-20 col-lg-20">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-8">
            <div class="well well-sm">
                <form>
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="name" placeholder="Enter name" required="required" />
                        </div>
                        <div class="form-group">
                            <label for="email">
                                Email Address</label>
                            <div class="input-group">
                                <span class="input-group-addon"><span class="glyphicon glyphicon-envelope"></span>
                                </span>
                                <input type="email" class="form-control" id="email" placeholder="Enter email" required="required" /></div>
                        </div>
                        <div class="form-group">
                            <label for="subject">
                                Subject</label>
                            <select id="subject" name="subject" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="service">General Customer Service</option>
                                <option value="suggestions">Suggestions</option>
                                <option value="product">Product Support</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                       
                                
                                Message</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    <div class="col-md-12">
           
                        <asp:Button ID="Button1" runat="server" Text="Send Message" BackColor="#358CCE" />

                    </div>
                </div>
                </form>
            </div>
        </div>
    </div>
</div>

</asp:Content>

