<%@ Page Language="C#" AutoEventWireup="true" CodeFile="web.aspx.cs" Inherits="web" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
         <table align="center">
            <tr>
                <td id="Name" class="auto-style5">Customer Name</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtName" class="auto-style3">
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td id="Name" class="auto-style5">Amount</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtAmount" class="auto-style3">
                    <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
              <tr>
                <td id="Name" class="auto-style5">Batch</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtBatch" class="auto-style3">
                    <asp:TextBox ID="txtBatch" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
              <tr>
                <td id="Name" class="auto-style5">Mobile Number</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtMobile_no" class="auto-style3">
                    <asp:TextBox ID="txtMobile_no" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
             <tr>
             <td class="auto-style1">
                    <asp:Button ID="btnCreate" runat="server" OnClick="Gen_bill_Click" Text="Submit" />
                </td>
                 </tr>
        </table>

    
    </div>
    </form>
</body>
</html>
