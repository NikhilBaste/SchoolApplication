<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Outside.Master" AutoEventWireup="true" CodeBehind="School_Registration.aspx.cs" Inherits="NewTest.School_Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



   <script type="text/javascript">
        


    </script>

    <link href="CSS/model.css" rel="stylesheet" />

    <style>
        body {
           
            background-color: #f4f4f4;
        }


        /* Set form container padding */
        .container {
            display: flex;
            flex-direction: column;
            align-items: center;
            
            padding-top: 30px;
        }

        .maincon {
            margin-top: 100px;
            height: 700px; 
            overflow-y: auto;
        }

        /* Style form header */
        h2 {
            margin-top: 10px;
            margin-bottom: 20px;
            color: #333;
        }

        /* Style form inputs and labels */
        .form-group label {
            font-weight: bold;
            color: #555;
        }

        .form-control {
            border-radius: 5px;
        }

        /*.row {
            
        }

        .row-form {
            width: fit-content;
        }
*/
        

        /* Style button */
        .btn-primary {
            margin-top: 20px;
            margin-bottom:50px;
            background-color: #007bff;
            border-color: #007bff;
        }

            /* Change button hover color */
            .btn-primary:hover {
                background-color: #0056b3;
                border-color: #0056b3;
            }

        /* Adjust responsiveness */
        @media (max-width: 768px) {
            .container {
                padding-top: 0;
            }

            .col-md-6 {
                margin-top: 20px;
            }
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="BodyContent" runat="server">

    <div class="container  maincon border-primary">

        <asp:UpdatePanel ID="updPanel1" runat="server" UpdateMode="Conditional">
            <ContentTemplate>
                <h2 class="text-center">Registration Form</h2>
                <div class="row row-form bg-dark">
                    <div class="col-md-6 border-danger ">

                        <form>
                            <!-- School Name -->
                            <div class="mb-3">
                                <label for="schoolName" class="form-label">School Name</label>
                                <asp:TextBox class="form-control" ID="schoolName" runat="server"></asp:TextBox>
                            </div>

                            <!-- Address -->
                            <div class="mb-3">
                                <label for="address" class="form-label">Address</label>
                                <asp:TextBox class="form-control" ID="address" runat="server"></asp:TextBox>
                            </div>

                            <!-- State -->
                            <div class="mb-3">
                                <label for="state" class="form-label">State:</label>
                                <asp:DropDownList ID="state" name="program" runat="server" OnSelectedIndexChanged="state_SelectedIndexChanged"  AutoPostBack="true" EnableViewState="true"></asp:DropDownList>

                            </div>

                            <!-- District -->
                            <div class="mb-3">

                                <label for="district" class="form-label">District:</label>

                                <asp:DropDownList ID="district" name="program" runat="server" OnSelectedIndexChanged="district_SelectedIndexChanged" AutoPostBack="true" EnableViewState="true" ></asp:DropDownList>

                            </div>


                            <!-- City -->
                            <div class="mb-3">
                                <label for="city" class="form-label">City:</label>

                                <asp:DropDownList ID="city" name="program" runat="server" EnableViewState="true" ></asp:DropDownList>

                            </div>


                            <!-- Pincode -->
                            <div class="mb-3">
                                <label for="pincode" class="form-label">Pincode</label>
                                <asp:TextBox class="form-control" ID="pincode" runat="server"></asp:TextBox>

                            </div>
                            <!-- Land Line -->
                            <div class="mb-3">
                                <label for="landLine" class="form-label">Land Line</label>
                                <asp:TextBox class="form-control" ID="landLine" runat="server"></asp:TextBox>
                            </div>

                            <!-- Mobile Number1 -->
                            <div class="mb-3">
                                <label for="mobileNo" class="form-label">Mobile Number</label>
                                <asp:TextBox class="form-control" ID="mobileNo1" runat="server"></asp:TextBox>

                            </div>

                            <!-- Mobile Number2 -->
                            <div class="mb-3">
                                <label for="mobileNo" class="form-label">Mobile Number</label>
                                <asp:TextBox class="form-control" ID="mobileNo2" runat="server"></asp:TextBox>

                            </div>


                            <!-- Add more fields related to address, contact, etc. -->
                    </div>
                    <div class="col-md-6 border-success">



                        <!-- Email -->
                        <div class="mb-3">
                            <label for="email" class="form-label">Email</label>
                            <asp:TextBox CssClass="form-control" ID="email" runat="server"></asp:TextBox>


                        </div>
                        <!-- Web Address -->
                        <div class="mb-3">
                            <label for="webAddress" class="form-label">Web Address</label>
                            <asp:TextBox class="form-control" ID="webAddress" runat="server"></asp:TextBox>


                        </div>
                        <!-- Establishment Year -->
                        <div class="mb-3">
                            <label for="estabDate" class="form-label">Establishment Year</label>

                            <asp:TextBox class="form-control" ID="estabDate" runat="server"></asp:TextBox>

                        </div>

                        <!-- Undertaken -->
                        <div class="mb-3">
                            <label for="undertaken" class="form-label">Undertaken</label>
                            <asp:TextBox class="form-control" ID="undertaken" runat="server"></asp:TextBox>


                        </div>
                        <!-- School PRN -->
                        <div class="mb-3">
                            <label for="schoolPRN" class="form-label">School PRN</label>
                            <asp:TextBox class="form-control" ID="schoolPRN" runat="server"></asp:TextBox>

                        </div>
                        <!-- GST Number -->
                        <div class="mb-3">
                            <label for="gstNo" class="form-label">GST Number</label>
                            <asp:TextBox class="form-control" ID="gstNo" runat="server"></asp:TextBox>


                        </div>
                        <%-- School_Registration_No --%>
                        <div class="mb-3">
                            <label for="School_Registration_No" class="form-label">School Registration No</label>
                            <asp:TextBox class="form-control" ID="School_Registration_No" runat="server"></asp:TextBox>


                        </div>

                        <!-- School Registration Date -->
                        <div class="mb-3">
                            <label for="schoolRegDate" class="form-label">School Registration Date</label>
                            <asp:TextBox class="form-control" ID="school_reg_date" runat="server" TextMode="Date"></asp:TextBox>


                        </div>


                        <!-- UGC ID -->
                        <div class="mb-3">
                            <label for="ugcId" class="form-label">UGC ID</label>
                            <asp:TextBox class="form-control" ID="ugcId" runat="server"></asp:TextBox>
                        </div>


                        <!-- Rank -->
                        <div class="mb-3">
                            <label for="rank" class="form-label">Rank</label>
                            <asp:TextBox class="form-control" ID="rank" runat="server"></asp:TextBox>
                        </div>





                        </form>
                    </div>
                </div>
                <div class="row mt-3">
                    <div class="col-md-12 text-center border-dark">

                        <asp:Button ID="regbtn" CssClass="btn btn-primary" runat="server" Text="Register" OnClick="regbtn_Click " CausesValidation="false" />

                    </div>
                </div>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="state" />
            </Triggers>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="district" />
            </Triggers>
        </asp:UpdatePanel>
    </div>

</asp:Content>


