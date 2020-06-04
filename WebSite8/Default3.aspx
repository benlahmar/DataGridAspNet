<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:BulletedList ID="BulletedList1" runat="server" DataSourceID="EntityDataSource1" DataTextField="date2" DataValueField="id"></asp:BulletedList>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server" ConnectionString="name=mabase2Entities" DefaultContainerName="mabase2Entities" EnableDelete="True" EnableFlattening="False" EnableInsert="True" EnableUpdate="True" EntitySetName="billet">
        </asp:EntityDataSource>
    </div>
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">LinkButton</asp:LinkButton>
    </form>
</body>
</html>
