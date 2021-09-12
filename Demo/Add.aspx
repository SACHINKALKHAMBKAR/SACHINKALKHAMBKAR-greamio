<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Add.aspx.cs" Inherits="Add" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 153px;
        }
        .auto-style2 {
            width: 66px;
        }
        .auto-style3 {
            width: 65px;
        }
        .auto-style4 {
            width: 84px;
        }
        .auto-style5 {
            width: 199px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <CENTER><h3>Enter Student Details</h3></CENTER><br />
    
        <br />
    
        <table align="center">
            <tr>
                <td id="Name" class="auto-style5">Name</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtFname" class="auto-style3">
                    <asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Number</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtNumber" class="auto-style3">
                    <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Email</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtEmail" class="auto-style3">
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Gender</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtGender" class="auto-style3">
                    <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Address</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtAddress" class="auto-style3">
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Fees</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtFees" class="auto-style3">
                    <asp:TextBox ID="txtFees" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">Preferable Time</td>
                <td class="auto-style2">&nbsp;</td>
                <td id="txtPref_time" class="auto-style3">
                    <asp:TextBox ID="txtPref_time" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Button ID="BtnDisp" runat="server" OnClick="Disp_Click" Text="Display" />
                </td>
                <td class="auto-style1">
                    <asp:Button ID="btnCreate" runat="server" OnClick="Button1_Click" Text="Submit" />
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" style="margin-left: 279px">
        </asp:GridView>
    </form>
</body>
</html>
