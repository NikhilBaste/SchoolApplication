<%@ Page Title="" Language="C#" MasterPageFile="~/COMMON/Inner.Master" AutoEventWireup="true" CodeBehind="StateMaster.aspx.cs" Inherits="NewTest.StateMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        function ShowStateModel() {
            $('#newStateModal').modal('show');
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row justify-content-end">
            <div class="col-auto">
                <asp:Button ID="New" runat="server" Text="New" CssClass="btn btn-primary" OnClick="New_Click" />
            </div>
            <div class="col-auto">
                <asp:Button ID="Edit" runat="server" Text="Edit" CssClass="btn btn-warning" OnClick="Edit_Click" />
            </div>
            <div class="col-auto">
                <asp:Button ID="Delete" runat="server" Text="Delete" CssClass="btn btn-danger" OnClick="Delete_Click" />
            </div>
            <div class="col-auto">
                <asp:Button ID="Export" runat="server" Text="Export" CssClass="btn btn-success" />
            </div>
            <div class="col-auto">
                <asp:Button ID="Close" runat="server" Text="Close" CssClass="btn btn-secondary" />
            </div>
        </div>
    </div>
    <%--New Modal start--%>
    <div class="modal fade" id="newStateModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">
                        <asp:Label ID="ModalHeader" runat="server"></asp:Label>
                    </h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <table>

                        <tr>
                            <td></td>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text="State ID"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtStateID" runat="server" CssClass="form-control" placeholder="State ID"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="State Name"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtStateName" runat="server" CssClass="form-control" placeholder="State Name"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="State Code"></asp:Label></td>
                            <td>
                                <asp:TextBox ID="txtStateCode" runat="server" CssClass="form-control" placeholder="State Code"></asp:TextBox></td>
                            <td></td>
                        </tr>

                    </table>
                    <asp:Button ID="btnSave" runat="server" Text="Save" CssClass="btn btn-success" Style="float:right" OnClick="btnSave_Click" />
                </div>
              <!--<div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                </div>-->
            </div>
        </div>
    </div>

    <%--New Modal End--%>
    <br />
    <div class="container table-container">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>State_ID</th>
                    <th>State_Name</th>
                    <th>State_Code</th>
                </tr>
            </thead>
            <tbody id="tableBody">
                <!-- Rows will be dynamically populated -->
            </tbody>
        </table>
    </div>
    <script>
        // Function to generate 'n' rows
        function generateRows(n) {
            var tableBody = document.getElementById('tableBody');
            for (var i = 0; i < n; i++) {
                var row = tableBody.insertRow();
                for (var j = 0; j < 3; j++) {
                    var cell = row.insertCell();
                    cell.appendChild(document.createTextNode(''));
                }
            }
        }
        function updateRowCount() {
            var rowCount = document.getElementById('tableBody').rows.length;
            document.getElementById('rowCount').textContent = rowCount;
        }

        generateRows(10);
</script>
</asp:Content>
