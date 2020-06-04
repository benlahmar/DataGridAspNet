<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Charger" />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add Film</asp:LinkButton>
        &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">add row</asp:LinkButton>
        <br />
        <asp:Panel ID="Panel1" runat="server" Visible="False">
            <br />
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Titre"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_titre" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Realisateur"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txt_realisateur" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Genre"></asp:Label>
                    </td>
                    <td>
                        <asp:DropDownList ID="txt_genre" runat="server" OnSelectedIndexChanged="txt_genre_SelectedIndexChanged">
                            <asp:ListItem>Action</asp:ListItem>
                            <asp:ListItem>Drama</asp:ListItem>
                            <asp:ListItem>Comedy</asp:ListItem>
                            <asp:ListItem>Fantasy</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Image"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="FileUpload1" runat="server" OnLoad="FileUpload1_Load" />
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">Annuler</asp:LinkButton>
                    </td>
                    <td>
                        <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">Add</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </asp:Panel>
        <br />
        <br />
    
    </div>
        <asp:DataGrid ID="DataGrid1" runat="server" OnEditCommand="DataGrid1_EditCommand" OnCancelCommand="DataGrid1_CancelCommand"
            OnDeleteCommand="DataGrid1_DeleteCommand" OnUpdateCommand="DataGrid1_UpdateCommand"
            AllowSorting="True" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" PageSize="5" ShowFooter="True" Width="655px" AllowPaging="True" >
            <AlternatingItemStyle BackColor="#F7F7F7" />
            <Columns>
                <asp:ButtonColumn CommandName="Select" Text="Sélectionner"></asp:ButtonColumn>
                <asp:EditCommandColumn CancelText="Annuler" EditText="Modifier" UpdateText="Mettre à jour"></asp:EditCommandColumn>
                <asp:ButtonColumn CommandName="Delete" Text="Supprimer"></asp:ButtonColumn>

                <asp:TemplateColumn>
                    <FooterTemplate >
                        <asp:TextBox ID="t_titre" runat="server" />   
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <asp:DropDownList ID="DropDownList1" runat="server">
                        </asp:DropDownList>
                        <asp:FileUpload ID="FileUpload2" runat="server" />
                        <asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton>
                    </FooterTemplate>
                    <ItemTemplate>
                        <asp:FileUpload ID="FileUpload3" runat="server" />
                        <asp:Image ID="Image2"  runat="server" />
                    </ItemTemplate>
                </asp:TemplateColumn>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:Image ImageUrl="~/imgs/adonet.jpe"  Width="60px" runat="server"/>
                    </ItemTemplate>
                </asp:TemplateColumn>
            </Columns>
            
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" Mode="NumericPages" />
            <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" Font-Italic="True" Font-Overline="False" Font-Size="X-Large" Font-Strikeout="False" Font-Underline="False" ForeColor="#F7F7F7" />
        </asp:DataGrid>
    </form>
</body>
</html>
