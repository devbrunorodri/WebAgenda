<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebAgenda.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="SiteLogin.css" rel="stylesheet" type="text/css" />
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="card">
            <div class="card-header">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Underline="False" Text="Login"></asp:Label>
            </div>
            <br />
            <br />
            <div class="card-content">
                <div class="card-content-area">
                    <asp:Label ID="Label2" runat="server" Text="email"></asp:Label>
                    <br />
                    <asp:TextBox ID="txbEmail" Type="email" placeholder="email@email.com.br" runat="server"></asp:TextBox>
                </div>
                <div class="card-content-area">
                    <asp:Label ID="Label3" runat="server" Text="senha"></asp:Label>
                    <br />
                    <asp:TextBox ID="txbSenha" Type="password" placeholder="digite sua senha" runat="server"></asp:TextBox>
                </div>
                <br />
            </div>
            <div class="card-footer">
            <asp:Button ID="bt_login" runat="server" Text="Login" OnClick="bt_login_Click" />
            </div>
        </div>
        <p>
    <asp:Label ID="lMsg" runat="server" Font-Bold="True"></asp:Label>
        </p>
    </form>
</body>
</html>
