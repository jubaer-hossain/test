<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dropdownlist.aspx.cs" Inherits="test.admin.dropdownlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="list1" runat="server">
                <asp:ListItem Text="Select your favorit" Value="-1"></asp:ListItem>
                <asp:ListItem Text="Mango" Value="1"></asp:ListItem>
                <asp:ListItem Text="Lichi" Value="1"></asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btn1" runat="server" Text="Select[without database]" OnClick="btn1_Click" />

            <asp:DropDownList ID="list2" runat="server">
                
            </asp:DropDownList>
            <asp:Button ID="btn2" runat="server" Text="with database" OnClick="btn2_Click" />
            <asp:Button ID="btn_insert" runat="server" Text="insert to database" OnClick="btn_insert_Click" />
        </div>
    </form>
</body>
</html>
