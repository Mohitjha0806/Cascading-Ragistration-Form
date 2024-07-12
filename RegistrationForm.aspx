<%@ Page Language="C#" AutoEventWireup="true" CodeFile="RegistrationForm.aspx.cs" Inherits="RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title></title>
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <asp:ValidationSummary runat="server" ValidationGroup="a" />
        <div>
            <div class="container-fluid">
                <div class="container">
                    <h1 class=" text-center fw-semibold display-4">Rent Control Registration Form</h1>

                    <div id="hover" class="row mt-3">
                        <h4 class="mt-5">Owner Name</h4>
                        <div class="col-md-6 mt-2">
                            <asp:Label Text="First Name" ID="lbl_Fname" CssClass="form-label fw-semibold text-primary" runat="server" /><span style="color: red; font-weight: 600;">&nbsp;*</span>
                            <asp:TextBox Type="Text" runat="server" ID="txt_Fname" CssClass="form-control border-1 border-primary" Placeholder="Jhon" />
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txt_Fname" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ErrorMessage="Invailed Name" ForeColor="Red" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$" ControlToValidate="txt_Fname" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-6 mt-2">
                            <asp:Label Text="Last Name" ID="lbl_Lname" CssClass="form-label fw-semibold text-primary" runat="server" /><span style="color: red; font-weight: 600;">&nbsp;*</span>
                            <asp:TextBox Type="Text" runat="server" ID="txt_Lname" ValidationGroup="a" CssClass="form-control border-1 border-primary" Placeholder="Deo" />
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txt_Lname" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ErrorMessage="Invailed Name" ForeColor="Red" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$" ControlToValidate="txt_Lname" runat="server" Display="Dynamic" />
                        </div>

                    </div>
                    <div id="hover" class="row mt-4">
                        <h4>Owner Contect</h4>
                        <div class="col-md-8 mt-2">
                            <asp:Label Text="Email ID" ID="lbl_Email" CssClass="form-label fw-semibold text-primary" runat="server" /><span style="color: red; font-weight: 600;">&nbsp;*</span>
                            <asp:TextBox runat="server" ID="Txt_Email" ValidationGroup="a" CssClass="form-control border-1 border-primary" Placeholder="example@gmail.com" MaxLength="24" />
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Txt_Email" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ErrorMessage="Invailed Name" ForeColor="Red" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$" ControlToValidate="Txt_Email" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-4 mt-2">
                            <asp:Label Type="Tel" Text="Telephone No." ID="lbl_Tel" CssClass="form-label fw-semibold text-primary" runat="server" /><span style="color: red; font-weight: 600;">&nbsp;*</span>
                            <asp:TextBox Type="Tel" runat="server" ID="Txt_Tel" ValidationGroup="a" CssClass="form-control border-1 border-primary" Placeholder="10 Digit" MaxLength="10" />
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="Txt_Tel" runat="server" Display="Dynamic" />
                            <asp:RegularExpressionValidator ErrorMessage="Invailed Name" ForeColor="Red" ValidationExpression="^[6-9]{1}[0-9]{9}$" ControlToValidate="Txt_Tel" runat="server" Display="Dynamic" />
                        </div>
                    </div>

                    <div id="hover" class="row mt-4">
                        <h4>Property Address</h4>
                        <div class="col-md-12 mt-2">
                            <asp:Label Text="Street Address" ID="lbl_Address" CssClass="form-label fw-semibold text-primary" runat="server" /><span style="color: red; font-weight: 600;">&nbsp;*</span>
                            <asp:TextBox runat="server" ID="txt_Address" ValidationGroup="a" CssClass="form-control border-1 border-primary" Placeholder="Street Address" />
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txt_Address" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-4 mt-2">
                            <asp:Label Type="Text" Text="State" ID="lbl_State" CssClass="form-label fw-semibold text-primary" runat="server"  /><span style="color: red; font-weight: 600;">&nbsp;*</span>
                            <asp:DropDownList CssClass="form-control border-1 border-primary" ID="ddl_State" runat="server" OnSelectedIndexChanged="txt_State_SelectedIndexChanged" AutoPostBack="true" >
                                <asp:ListItem CssClass="form-control border-1 border-primary" Text="Select" Value="0" Enabled="true" />
                                <asp:ListItem CssClass="form-control border-1 border-primary" Text="Madhya Pradesh" Value="1" />
                                <asp:ListItem CssClass="form-control border-1 border-primary" Text="Uttar Pradesh" Value="2" />
                                <asp:ListItem CssClass="form-control border-1 border-primary" Text="Gujrat" Value="3" />
                                <asp:ListItem CssClass="form-control border-1 border-primary" Text="Rajsthan" Value="4" />
                                <asp:ListItem CssClass="form-control border-1 border-primary" Text="Bihar" Value="5" />
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="ddl_State" runat="server" Display="Dynamic" />
                            <%--<asp:RegularExpressionValidator ErrorMessage="Invailed Name" ForeColor="Red" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$" ControlToValidate="ddl_State" runat="server" Display="Dynamic" />--%>
                        </div>
                        <div class="col-md-4 mt-2">
                            <asp:Label Type="Text" Text="City" ID="lbl_City" CssClass="form-label fw-semibold text-primary" runat="server" /><span style="color: red; font-weight: 600;">&nbsp;*</span>
                            <asp:DropDownList Placeholder="Select City" CssClass="form-control border-1 border-primary" ID="ddl_City" runat="server" OnSelectedIndexChanged="ddl_City_SelectedIndexChanged" AutoPostBack="true">
                                
                                </asp:DropDownList>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="ddl_City" runat="server" Display="Dynamic" />
                            <%--<asp:RegularExpressionValidator ErrorMessage="Invailed Name" ForeColor="Red" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$" ControlToValidate="ddl_City" runat="server" Display="Dynamic" />--%>
                        </div>
                        <div class="col-md-4 mt-2">
                            <asp:Label Type="Text" Text="Region" ID="lbl_Rigion" CssClass="form-label fw-semibold text-primary" runat="server" /><span style="color: red; font-weight: 600;">&nbsp;*</span>
                            <asp:DropDownList CssClass="form-control border-1 border-primary" ID="ddl_Region" runat="server">
                            </asp:DropDownList>
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="ddl_Region" runat="server" Display="Dynamic" />
                            <%--<asp:RegularExpressionValidator ErrorMessage="Invailed Name" ForeColor="Red" ValidationExpression="^[\w'\-,.][^0-9_!¡?÷?¿/\\+=@#$%ˆ&*(){}|~<>;:[\]]{2,}$" ControlToValidate="ddl_Region" runat="server" Display="Dynamic" />--%>
                        </div>
                    </div>

                    <div id="hover" class="row mt-4">
                        <h4>Starting Date & Time <span style="color: red; font-weight: 600;">*</span></h4>
                        <div class="col-md-6 mt-2">
                            <asp:TextBox runat="server" ID="txt_Date" ValidationGroup="a" Style="color: #0d6efd;" CssClass="form-control  border-1 border-primary" Type="Date" />
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txt_Date" runat="server" Display="Dynamic" />
                        </div>
                        <div class="col-md-6 mt-2">
                            <asp:TextBox runat="server" ID="txt_Time" ValidationGroup="a" Style="color: #0d6efd;" CssClass="form-control  border-1 border-primary" Type="Time" />
                            <asp:RequiredFieldValidator ErrorMessage="Required" ForeColor="Red" ControlToValidate="txt_Time" runat="server" Display="Dynamic" />
                        </div>

                    </div>

                    <div id="hover" class="row mt-4">
                        <h4>Upload Documents <span style="color: red; font-weight: 600;">*</span></h4>
                        <div class="col-md-12 mt-2">
                            <asp:FileUpload runat="server" Style="color: #0d6efd;" CssClass="form-control form-control border-1 border-primary" AllowMultiple="true" />
                        </div>

                    </div>

                    <div id="hover" class="row mt-4">
                        <h4>Check all the services provided by the landlord</h4>
                        <div class="col-md-6 mt-2 ">
                            <asp:CheckBoxList CssClass="form-control border-1 border-primary mt-2 fw-semibold" ID="cbl_Services" runat="server">
                                <asp:ListItem Text="&nbsp; Head" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                                <asp:ListItem Text="&nbsp; Hot Water" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                                <asp:ListItem Text="&nbsp; Electricity" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                                <asp:ListItem Text="&nbsp; Gas" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                                <asp:ListItem Text="&nbsp; Other:" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                            </asp:CheckBoxList>
                        </div>
                        <div class="col-md-6 mt-2 ">
                            <asp:CheckBoxList CssClass="form-control border-1 border-primary mt-2 fw-semibold" ID="CheckBoxList1" runat="server">
                                <asp:ListItem Text="&nbsp; Parking" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                                <asp:ListItem Text="&nbsp; Garden" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                                <asp:ListItem Text="&nbsp; Swiming Pool" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                                <asp:ListItem Text="&nbsp; Children Playing Zone" ForeColor="#0d6efd" CssClass="form-control border-1 border-primary mt-2 fw-semibold" runat="server" />
                            </asp:CheckBoxList>
                        </div>
                    </div>


                    <div id="hover" class="row mt-4">
                        <h4>Any Other Query</h4>
                        <div class="col-md-12 mt-2  form-floating">
                            <asp:TextBox ID="Message_Box" runat="server" mode="multiline" form="Feedback_Form" CssClass="form-control border-1 border-primary mt-1 fw-semibold"
                                MaxLength="1200" lines="10" cols="10" Wrap="true" />
                        </div>
                    </div>
                    <div id="hover" class="row py-3">
                        <div class="col-md-2">
                            <asp:Button Text="Submit" CssClass="btn btn-success" runat="server" OnClick="Unnamed_Click" AutoPostBack="true" />
                            <asp:Button Text="Clear" ID="clearbtn" CssClass="btn btn-outline-danger" runat="server" />
                        </div>
                    </div>
                    <div class="row">

                        <asp:DataGrid runat="server" Visible="false" ID="DataGrid1" CssClass="table">
                        </asp:DataGrid>

                        <%--  <asp:Table Visible="false" ID="tbl" CssClass="table" runat="server">
                            <asp:TableHeaderRow runat="server">
                                <asp:TableHeaderCell>S.No.</asp:TableHeaderCell>
                                <asp:TableHeaderCell>First Name</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Last Name</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Street Address</asp:TableHeaderCell>
                                <asp:TableHeaderCell>State</asp:TableHeaderCell>
                                <asp:TableHeaderCell>City</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Region</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Date</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Time</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Upload Documents</asp:TableHeaderCell>
                                <asp:TableHeaderCell>services</asp:TableHeaderCell>
                                <asp:TableHeaderCell>Comment</asp:TableHeaderCell>
                            </asp:TableHeaderRow>
                            <asp:TableRow ID="tblr" runat="server">
                                <asp:TableHeaderCell ID="tblhc_Sno"></asp:TableHeaderCell>
                                <asp:TableCell ID="tblc"></asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>--%>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
