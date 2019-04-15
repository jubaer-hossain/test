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

            <br />

            <asp:DropDownList ID="list2" runat="server">
                
            </asp:DropDownList>
            <asp:Button ID="btn2" runat="server" Text="with database" OnClick="btn2_Click" />

            <br />

            <asp:Button ID="btn_insert" runat="server" Text="insert to database" OnClick="btn_insert_Click" />


            <br />
            <asp:RadioButton ID="burger" Text="burger" GroupName="food" runat="server" />
            <asp:RadioButton ID="pizza" Text="pizza" GroupName="food" runat="server" />
            

            <asp:Button ID="btn_radio" runat="server" Text="radio select" OnClick="btn_radio_Click"/>
            

        </div>
    </form>
</body>
</html>
