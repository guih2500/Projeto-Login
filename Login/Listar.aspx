<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Listar.aspx.cs" Inherits="Login.Listar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .newStyle1 {
            position: absolute;
            top: 76px;
            left: 453px;
        }
        .auto-style1 {
            top: 134px;
            left: 300px;
            height: 214px;
            width: 384px;
        }
        .auto-style2 {
            height: 466px;
        }
        .auto-style3 {
            margin-left: 360px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <h1 class="auto-style3">Listar cadastrados</h1>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="newStyle1 auto-style1" ForeColor="Black" GridLines="Horizontal">
                <Columns>
                    <asp:BoundField DataField="user_email" HeaderText="E-mail do usuario" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F7F7F7" />
                <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                <SortedDescendingCellStyle BackColor="#E5E5E5" />
                <SortedDescendingHeaderStyle BackColor="#242121" />
            </asp:GridView>
        </div>
        <asp:Button ID="voltar" runat="server" CssClass="newStyle1" Text="Voltar" OnClick="voltar_Click" />
    </form>
</body>
</html>
