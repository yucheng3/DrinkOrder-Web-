<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .auto-style7
    {
        height: 186px;
        width: 148px;
    }
    .auto-style12
    {
        height: 186px;
        width: 234px;
            text-align: right;
        }
        .masterpageauto-style3
        {
            height: 302px;
        }
        .masterpageauto-style2
        {
            width: 100%;
        }
        .auto-style13 {
            height: 186px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="masterpageauto-style2">
    <tr>
        <td class="auto-style7">&nbsp;</td>
        <td class="auto-style12">
            　<asp:Login ID="Login1" runat="server" BackColor="#E3EAEB" BorderColor="#E6E2D8" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" DestinationPageUrl="~/Main.aspx" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" style="font-size: large; text-align: left; font-family: 微軟正黑體;" TextLayout="TextOnTop">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#C5BBAF" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#1C5E55" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
        &nbsp;</td>
        <td class="auto-style13"></td>
    </tr>
</table>
</asp:Content>

