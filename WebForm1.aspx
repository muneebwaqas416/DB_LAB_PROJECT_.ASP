<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="DbProject3.WebForm1" %>

<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<title></title>
<link href="Helper/css/style.default.css" rel="stylesheet" />
<link href="Helper/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
<form id="form1" runat="server">
<div class=" page-holder d-flex align-items-center">
<div class="container">
<div class="row align-items-center py-5">
<div class="col-5 col-lg-7 mx-auto mb-5 mb-lg-0">

<div class="pr-lg-5">
<img src="illustration.svg" alt="" class="img-fluid" />
</div>
</div>
<div class="col-lg-5 px-lg-4">
<h1 class="text-base text-primary text-uppercase mb-4">Sign up Here</h1>
<h2 class="mb-4">Welcome Back!</h2>

<div class ="form-group mb-4">
<asp:TextBox ID="tb1" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="First Name" runat="server"></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="tb2" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Last Name" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="tb3" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="User Name" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="tb4" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Email" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="tb5" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Password" runat="server" ></asp:TextBox>

</div>
<div class ="form-group mb-4">
<asp:TextBox ID="tb6" TextMode="Password" CssClass="form-control border-0 shadow form-control-lg text-base" placeholder="Confirm Password" runat="server" ></asp:TextBox>

</div>

<asp:Button Text="Sign up" CssClass="btn btn-primary" Height="50px" Width="400px" runat="server" OnClick="Unnamed7_Click" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [dbprojecttable]"></asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="User Name" DataSourceID="SqlDataSource1" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="User Name" HeaderText="User Name" ReadOnly="True" SortExpression="User Name" />
            <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
            <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#0000A9" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#000065" />
    </asp:GridView>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
</div>
</div>

<footer class="footer bg-white shadow align-self-end py-3 px-xl-5 w-100 " style="text-align:end;margin-top:390px">
<div class="container-fluid">
<div class="row">
<div class="col-md-6 text-center text-md-left text-primary">
<p class ="mb-2 mb-md-0">RashiCode &copy;2021</p>
</div>
<div class="col-md-6 text-center text-md-right text-gray-400">
<p class="mb-0">DEsign by <a href="#">Rashicode</a></p>

</div>
</div>
</div>
</footer>
</div>

</div>
</form>
</body>
</html>