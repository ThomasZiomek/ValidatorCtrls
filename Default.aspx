<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ValidatorCtrls.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="lblRequired" runat="server" Text="Required Field" Width="100" />&nbsp;&nbsp;
            <asp:TextBox ID="txtRequired" runat="server"  />
            <asp:RequiredFieldValidator runat="server" ID="reqVal" ControlToValidate="txtRequired" 
                ErrorMessage="Required field!"  ForeColor="Red" />
            <br />
            <asp:Label ID="lblRegex" runat="server" Text="SSN (Regex)" Width="100" />&nbsp;&nbsp;
            <asp:TextBox ID="txtSSN" runat="server" Text="Please enter SSN:" />
            <asp:RegularExpressionValidator ID="valReg" runat="server" ControlToValidate="txtSSN" 
                ErrorMessage="Invalid format" ForeColor="Red" ValidationExpression="\d{3}-\d{2}-\d{4}" />
            <br /><br />
            <asp:Button ID="btnSubmit" runat="server" Text="PostBack" OnClick="btnSubmit_Click" />&nbsp;&nbsp;
            <asp:Label ID="lblComplete" runat="server" />
        </div>
    </form>
</body>
</html>
