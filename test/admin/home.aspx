<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="test.admin.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>


    <form id="form2" runat="server">

        <div>
            <label>Username</label>
            <asp:TextBox ID="username" runat="server"></asp:TextBox>
            <label>Name</label>
            <asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:Button ID="btn" runat="server" Text="Submit" OnClick="btn_Click" />
        </div>

        <asp:GridView ID="grid1" runat="server" AutoGenerateColumns="False">
            
            <Columns>
                <asp:TemplateField HeaderText="Admin Name">
                    <ItemTemplate>
                        <asp:Label ID="label2" runat="server" Text='<%#Bind("username") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="label3" runat="server" Text='<%#Bind("name") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Name">
                    
                </asp:TemplateField>

            </Columns>

        </asp:GridView>
    </form>
</body>
</html>