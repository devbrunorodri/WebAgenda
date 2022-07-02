<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePrincipal.Master" AutoEventWireup="true" CodeBehind="contatosOLD.aspx.cs" Inherits="WebAgenda.contatos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Inserir novo contato"></asp:Label>
    <br />
    <asp:Label ID="Label3" runat="server" Font-Bold="True" Text="Nome"></asp:Label>
    <br />
    <asp:TextBox ID="txbNome" runat="server" Width="306px"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="Email"></asp:Label>
    <br />
    <asp:TextBox ID="txbEmail" runat="server" Width="306px"></asp:TextBox>
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="Telefone"></asp:Label>
    <br />
    <asp:TextBox ID="txbTelefone" runat="server" Width="216px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" BackColor="#99CCFF" Font-Bold="True" Text="Inserir" Width="89px" OnClick="Button1_Click" />
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Larger" Text="Lista de Contatos"></asp:Label>
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSourceContatos" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
        <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome" />
        <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
        <asp:BoundField DataField="telefone" HeaderText="telefone" SortExpression="telefone" />
    </Columns>
    <EditRowStyle BackColor="#2461BF" />
    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
    <RowStyle BackColor="#EFF3FB" />
    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
    <SortedAscendingCellStyle BackColor="#F5F7FB" />
    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
    <SortedDescendingCellStyle BackColor="#E9EBEF" />
    <SortedDescendingHeaderStyle BackColor="#4870BE" />
</asp:GridView>
    <br />
<asp:SqlDataSource ID="SqlDataSourceContatos" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [contato] WHERE [Id] = @Id" InsertCommand="INSERT INTO [contato] ([nome], [email], [telefone]) VALUES (@nome, @email, @telefone)" SelectCommand="SELECT [Id], [nome], [email], [telefone] FROM [contato]" UpdateCommand="UPDATE [contato] SET [nome] = @nome, [email] = @email, [telefone] = @telefone WHERE [Id] = @Id" OnSelecting="SqlDataSourceContatos_Selecting">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="nome" Type="String" />
        <asp:Parameter Name="email" Type="String" />
        <asp:Parameter Name="telefone" Type="String" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
    <br />
</asp:Content>
