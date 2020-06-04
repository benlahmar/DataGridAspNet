<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="charger" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Button" />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:DataGrid ID="DataGrid1" runat="server" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
             OnCancelCommand="DataGrid1_CancelCommand" OnItemCommand="DataGrid1_ItemCommand"  OnUpdateCommand="DataGrid1_UpdateCommand" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged" OnEditCommand="DataGrid1_EditCommand" Width="588px" AllowSorting="True" ShowFooter="True" AllowPaging="True" PageSize="5">
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:ButtonColumn CommandName="Select" Text="Sélectionner"></asp:ButtonColumn>
                <asp:EditCommandColumn CancelText="Annuler" EditText="Modifier" UpdateText="Mettre à jour"></asp:EditCommandColumn>
                <asp:ButtonColumn CommandName="Delete" Text="Supprimer"></asp:ButtonColumn>
                <asp:TemplateColumn >
                    <FooterTemplate>
                       <asp:TextBox runat="server" ID="titre_txt" /> <asp:Button ID="btnAdd"  runat="server" CommandName="AddNew" Text="Insert" />
                    </FooterTemplate>
                </asp:TemplateColumn>
            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" Mode="NumericPages" />
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            
        </asp:DataGrid>
    </form>
</body>
</html>
