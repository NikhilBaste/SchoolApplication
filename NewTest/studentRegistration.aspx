<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Inner.Master" AutoEventWireup="true" CodeBehind="studentRegistration.aspx.cs" Inherits="NewTest.studentRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/main.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

        <div class="title">Registration</div>
        <div class="content">
            <form action="#">
                <div class="user-details">
                    <div class="input-box">
                        <span class="details">Full Name</span>
                        <asp:TextBox ID="fullnameTextBox" runat="server" CssClass="input-box"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Registration Type</span>
                        <%--<select class="type1">
                            <option value="student">Student</option>
                            <option value="teacher">Teacher</option>
                        </select>--%>
                        <asp:DropDownList ID="registertypeTextbox" runat="server" CssClass="type1">
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Teacher</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="input-box">
                        <span class="details">Address</span>
                        <asp:TextBox ID="addressTextBox" TextMode="SingleLine" runat="server" CssClass="input-box"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Phone Number</span>
                        <asp:TextBox ID="phonenumberTextBox" TextMode="Phone" runat="server"></asp:TextBox>

                    </div>
                    <div class="input-box">
                        <span class="details">Email</span>
                        <asp:TextBox ID="emailTextBox" TextMode="Email" runat="server"></asp:TextBox>
                    </div>

                    <div class="input-box">
                        <span class="details">DOB</span>
                        <asp:TextBox ID="dobTextBox" TextMode="Date" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Batch</span>
                        <asp:TextBox ID="BatchTextBox" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Gender</span>
                        <asp:DropDownList ID="genderDropDownList" runat="server" CssClass="type1">
                            <asp:ListItem Value="male">Male</asp:ListItem>
                            <asp:ListItem Value="female">Female</asp:ListItem>
                            <asp:ListItem Value="other">Other</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <%--<div class="gender-details">
                        <span class="gender-title">Gender</span>
                        <asp:DropDownList ID="genderDropDownList" runat="server" AutoPostBack="True" CssClass="type1">
                            <asp:ListItem>Student</asp:ListItem>
                            <asp:ListItem>Teacher</asp:ListItem>
                        </asp:DropDownList>

                    </div>--%>
                    <div class="input-box">
                        <span class="details">Qulification</span>
                        <asp:TextBox ID="QulificatioTextBox" runat="server"></asp:TextBox>
                        <%--<asp:DropDownList ID="QulificationTextBox" runat="server" AutoPostBack="True" CssClass="type1">
                            <asp:ListItem ID="BcaTextBox">BCA/Diploma in any stream from a recognized University or Institute.</asp:ListItem>
                            <asp:ListItem ID="PGTextBox">PG/Any other post graduate degree from a recognized university or institute.</asp:ListItem>
                            <asp:ListItem ID="Others">Others, please specify:_</asp:ListItem>
                        </asp:DropDownList>--%>
                        <br />
                        <%--<input type="text" id="others" style="display: none;" placeholder="Specify here" />--%>


                        <!-- <input type="text" placeholder="Enter your name" required>
             -->
                    </div>
                    <div class="input-box">
                        <span class="details">Profession</span>
                        <asp:TextBox ID="ProfessionTextBox" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">State</span>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>
                                <asp:DropDownList ID="stateTextBox" runat="server" OnSelectedIndexChanged="state_SelectedIndexChanged" AutoPostBack="True" CssClass="type1">
                                </asp:DropDownList>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </div>
                    <div class="input-box">
                        <span class="details">District</span>
                        <asp:UpdatePanel ID="updatepanel2" runat="server" UpdateMode="Conditional">
                            <ContentTemplate>


                                <asp:DropDownList ID="DistrictTextBox" runat="server" OnSelectedIndexChanged="district_SelectedIndexChanged" AutoPostBack="True" CssClass="type1">
                                </asp:DropDownList>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="stateTextBox" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                    <div class="input-box">
                        <span class="details">City</span>
                        <asp:DropDownList ID="CityTextBox" runat="server" AutoPostBack="True" CssClass="type1">
                        </asp:DropDownList>
                    </div>
                    <div class="input-box">
                        <span class="details">Pincode</span>
                        <asp:TextBox ID="pincodeTextBox" TextMode="Number" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Blood Group</span>
                        <asp:TextBox ID="BloodgroupTextBox" TextMode="SingleLine" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">Username</span>
                        <asp:TextBox ID="UsernameTextBox" TextMode="SingleLine" runat="server"></asp:TextBox>
                    </div>
                    <div class="input-box">
                        <span class="details">School Register No</span>
                        <asp:TextBox ID="SchoolRegisternoTextBox" TextMode="Number" runat="server"></asp:TextBox>
                    </div>


                    <%--<div class="input-box">
                        <span class="details">Password</span>
                        <input type="text" placeholder="Enter your password" required>
                    </div>
                    <div class="input-box">
                        <span class="details">Confirm Password</span>
                        <input type="text" placeholder="Confirm your password" required>
                    </div>--%>
                </div>

                <div class="button">
                    <asp:Button ID="RegisterButton" runat="server" Text="Register" OnClick="RegisterButton_Click" />
                    <%--<input type="submit" value="Register">--%>
                </div>
                <label style="align-items: center;">Already have an account ? <a href="#"></a>login here</label>
            </form>
        </div>
    </div>
    <script>

</script>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <script src="../JS/sim1.js"></script>
</asp:Content>
