<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Demo1WebForms._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    

    <table class="w-100">
        <tr>
            <td colspan="2" style="font-family: Arial, Helvetica, sans-serif; font-size: x-large; font-weight: bold; color: #333333;">CURD Operation by APS.Net in C# with SQL Using Stored Procedure</td>
        </tr>
        <tr>
            <td style="width: 119px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 119px">
                <asp:Label ID="Label1" runat="server" Font-Size="Medium" Text="Product ID"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
&nbsp;
                <asp:Button ID="Button4" runat="server" BackColor="#CCFF66" Font-Size="Medium" ForeColor="#3333CC" OnClick="Button4_Click" Text="Search" />
            </td>
        </tr>
        <tr>
            <td style="width: 119px">
                <asp:Label ID="Label2" runat="server" Font-Size="Medium" Text="Item Name"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 119px">
                <asp:Label ID="Label3" runat="server" Font-Size="Medium" Text="Specification"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 119px; height: 30px">Unit</td>
            <td style="height: 30px">
                <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="Medium" Width="200px">
                    <asp:ListItem>PCS</asp:ListItem>
                    <asp:ListItem>KG</asp:ListItem>
                    <asp:ListItem>DZ</asp:ListItem>
                    <asp:ListItem>Ltr</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 119px">Status</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Running</asp:ListItem>
                    <asp:ListItem Selected="True">Unused</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td style="width: 119px">Creation Date</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Font-Size="Medium" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 119px; height: 24px"></td>
            <td style="height: 24px"></td>
        </tr>
        <tr>
            <td style="width: 119px; height: 36px"></td>
            <td style="height: 36px">
                <asp:Button ID="Button1" runat="server" BackColor="#CCFF66" Font-Size="Medium" ForeColor="#3333CC" OnClick="Button1_Click" Text="Insert" />
&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#CCFF66" Font-Size="Medium" ForeColor="#3333CC" OnClick="Button2_Click" Text="Update" />
&nbsp;
                <asp:Button ID="Button3" runat="server" BackColor="#CCFF66" Font-Size="Medium" ForeColor="#3333CC" OnClick="Button3_Click" OnClientClick="return confirm('Are sure to delete');" Text="Delete" />
&nbsp;
                <asp:Button ID="Button5" runat="server" BackColor="#CCFF66" Font-Size="Medium" ForeColor="#3333CC" OnClick="Button5_Click" Text="Load" />
            </td>
        </tr>
        <tr>
            <td style="width: 119px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" Width="477px">
                    <HeaderStyle BackColor="#6600CC" ForeColor="White" />
                </asp:GridView>
            </td>
        </tr>
    </table>

    

</asp:Content>
