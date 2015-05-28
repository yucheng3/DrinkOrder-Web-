<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DisplayCart.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .masterpageauto-style2
        {
            width: 100%;
        }
        
    .auto-style7
    {
        height: 302px;
        width: 83px;
    }
    .auto-style12
    {
        height: 20px;
        width: 435px;
        text-align: center;
    }
        .masterpageauto-style3
        {
            height: 302px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="masterpageauto-style2">
    <tr>
        <td class="auto-style7"></td>
        <td class="auto-style12">&nbsp; <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="97px" style="margin-left: 77px" Width="304px">
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />　<br />　<br />
            <br />
            應付金額：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
&nbsp;<br />
            [ <a href="Main.aspx">回上一頁</a> ]</td>
        <td class="masterpageauto-style3">&nbsp;</td>
    </tr>
</table>
</asp:Content>

