<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Login.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Login</h1>
        <div>
            <table>
                <tr>
                    <td>
                        <asp:label Text="Email: " runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox ID="txtemail" runat="server" type="email"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:label  Text="senha: " runat="server" />
                    </td>
                    <td colspan="2">
                        <asp:TextBox  ID="txtsenha" runat="server" type="password"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button Text="Entrar" ID="btnentrar" runat="server" OnClick="btnentrar_Click" />
                    </td>
                </tr>    
                <tr>
                    <td colspan="2">
                        <asp:label Text="" ID="lblerro" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
