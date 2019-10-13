<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cadastrar.aspx.cs" Inherits="Login.cadastrar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 316px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <h1 runat="server">Cadastrar usuarios</h1>
        </div>
        <br />
        <asp:Label ID="cade" runat="server" Text="E-mail: " />        
        <br />
        <asp:TextBox ID="cademail" runat="server" type="email" />
        <br />
        <asp:Label ID="cads" runat="server" Text="Senha: " />
        <br />
        <asp:TextBox ID="cadsenha" runat="server" type="password" /> 
        <br />
        <asp:Label ID="confs" runat="server" Text="Confirme sua senha: " />
        <br />
        <asp:TextBox ID="confsenha" runat="server" type="password"/>
        <br />
        <br />
        <asp:Label ID="lblmensagem" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="Cad" runat="server" Text="cadastrar" OnClick="Cad_Click" Width="82px" />
        <asp:Button ID="Lista" runat="server" OnClick="Lista_Click" Text="Listar cadastrados" />
        <br />
    </form>
</body>
</html>
