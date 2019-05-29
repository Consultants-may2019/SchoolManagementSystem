<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Design.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            role id
            <asp:TextBox ID="role" runat="server" OnTextChanged="role_TextChanged"></asp:TextBox>
            <br />
            <asp:Button ID="Sub" runat="server" OnClick="Sub_Click" Text="Submit" />
            <br />
            </div>
        
        
    </form>
</body>
</html>
