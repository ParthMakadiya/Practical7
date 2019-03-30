<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ASPWebApplication1.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    name
    <asp:TextBox ID="Txtname" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
        ControlToValidate="Txtname" ErrorMessage="name is required" ForeColor="Red" 
        ToolTip="Please enter name">*</asp:RequiredFieldValidator>
    <br />
&nbsp;
    <br />
    email<asp:TextBox ID="Txtemail" runat="server" 
        ontextchanged="TextBox1_TextChanged"></asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
        ControlToValidate="Txtemail" ErrorMessage="not valid email address" 
        ForeColor="Red" ToolTip="enter valid email" 
        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
    <br />
    <br />
    phone no<asp:TextBox ID="Txtphone" runat="server"> </asp:TextBox>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
        ControlToValidate="Txtphone" ErrorMessage="not valid phone no" ForeColor="Red" 
        ToolTip="enter 10 digit mobile no" ValidationExpression="[0-9]{10}">*</asp:RegularExpressionValidator>
    <br />
    <br />
    password<asp:TextBox ID="Txtpassword" runat="server"></asp:TextBox>
    <br />
    <br />
    confirm password<asp:TextBox ID="Txtcpasswoed" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" 
        ControlToCompare="Txtpassword" ControlToValidate="Txtcpasswoed" 
        ErrorMessage="confirm password not same as passord" 
        ToolTip="not same as password" Type="Integer"></asp:CompareValidator>
    <br />
    <br />
    sem<asp:TextBox ID="Txtsem" runat="server"></asp:TextBox>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
        ControlToValidate="Txtsem" ErrorMessage="not valid semester" MaximumValue="8" 
        MinimumValue="1"></asp:RangeValidator>
    <br />
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="submit" />
    <br />
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    </form>
</body>
</html>
