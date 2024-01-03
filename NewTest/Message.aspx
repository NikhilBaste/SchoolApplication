<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Inner.Master" AutoEventWireup="true" CodeBehind="Message.aspx.cs" Inherits="NewTest.Message" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;500;600;700&display=swap');

        /*.DashBoardBtn {
            width: 100%;
            height: 100vh;
            background-color: #fff;
            padding: 25px 30px;
            border-radius: 5px;
            box-shadow: 0 5px 10px rgba(0,0,0,0.15);
            overflow-y: auto;
            background: #F1F0F6;
        }*/

        .dps {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #1775F1;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        .ltext {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            /*border: 1px solid #1775F1;*/
            /*border-bottom-width: 2px;*/
            transition: all 0.3s ease;
            font-size: 25px;
            /*text-decoration:solid;*/
        }

        .msg {
            height: 200px;
            width: 500px;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #1775F1;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        .sendbtn {
            background: linear-gradient(#D0E4FF,#1775F1,#0C5FCD);
            color: #fff;
            font-size:15px;

            padding: 7px 15px;
            border-radius: 10px;
            /*margin-top: 15px;*/
            cursor: pointer;
            /*align-items: end;
            float: right;*/
        }
    </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="conatiner">
        <table class="style3" align="center">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Select Student And Staff" CssClass="ltext"></asp:Label>
                    <p>To Send a message to Staff or Students</p>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Panel ID="Panel1" runat="server" CssClass="style2">

                        <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" CssClass="dps">
                            <asp:ListItem>Staff</asp:ListItem>
                            <asp:ListItem>Student</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        Message    
                        <br />
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td class="style1">
                    <asp:TextBox ID="TextBox1" TextMode="MultiLine" runat="server" CssClass="msg"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
                <asp:Button ID="Button1" runat="server" Text="Send" CssClass="sendbtn" />
                </td>
                </tr>
        </table>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="../JS/sim1.js"></script>

</asp:Content>
