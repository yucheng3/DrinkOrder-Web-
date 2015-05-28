<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="_Default" Theme="雨天" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .masterpageauto-style2
        {
            width: 100%;
        }
        .masterpageauto-style3
        {
            height: 302px;
        }
        .masterpageauto-style4
        {
            height: 155px;
        }
    .auto-style3
    {
        width: 858px;
    }
    .auto-style2
    {
        width: 860px;
    }
    .auto-style4
    {
        width: 854px;
    }
    .auto-style5
    {
        height: 302px;
        width: 457px;
    }
    .auto-style6
    {
        height: 155px;
        width: 435px;
    }
    .auto-style7
    {
        height: 302px;
        width: 84px;
    }
    .auto-style8
    {
        height: 155px;
        width: 84px;
    }
    .auto-style9
    {
        font-family: 微軟正黑體;
        font-size: medium;
    }
    .auto-style10
    {
        width: 205px;
        text-align: center;
        height: 32px;
    }
    .auto-style11
    {
        text-align: center;
        height: 32px;
    }
    .auto-style12
    {
        height: 20px;
        width: 435px;
    }
        .auto-style13
        {
            text-align: center;
            height: 32px;
            width: 119px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="masterpageauto-style2">
        <tr>
            <td class="auto-style7"></td>
            <td class="auto-style12">
        <asp:DataList ID="DataList1" runat="server" DataKeyField="fid" DataSourceID="SqlDataSource1" Height="32px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" RepeatColumns="4" Width="93px">
            <ItemTemplate>
                <table class="auto-style1">
                    <tr>
                        <td style="text-align: center">
                            <asp:Image ID="Image1" runat="server" Height="90px" ImageUrl='<%# Eval("fPath") %>' style="text-align: left" Width="102px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="text-align: center">
                            <asp:Label ID="fNameLabel" runat="server" style="font-family: 微軟正黑體; color: #99CCFF" Text='<%# Eval("fName") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3" style="text-align: center"><span class="auto-style2">Price: $</span><asp:Label ID="fPriceLabel" runat="server" CssClass="auto-style2" Text='<%# Eval("fPrice", "{0:N}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style4" style="text-align: center"><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text='<%# Eval("fName") %>' Width="78px" Height="32px" BorderStyle="None" />
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
            </td>
            <td class="masterpageauto-style3">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8"></td>
            <td class="auto-style6">
    
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
    
                <br />
                <table class="masterpageauto-style2">
                    <tr>
                        <td class="auto-style13">
    
        <asp:Label ID="Label1" runat="server" style="font-size: medium; font-family: 微軟正黑體; background-color: #99CCFF;" Width="100px"></asp:Label>
    
                        </td>
                        <td class="auto-style10"><span class="auto-style9">數量</span>&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="70px" SkinID="Required" style="text-align: right"></asp:TextBox>
                        </td>
                        <td class="auto-style11">
                            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                <ContentTemplate>
                                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="送出" style="font-size: medium" Height="24px" Width="49px" BorderStyle="None" />
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td class="auto-style10">
                            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                <ContentTemplate>
                                    <asp:Label ID="Label2" runat="server" style="color: #FF0000; font-family: 微軟正黑體" Text="Label"></asp:Label>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </td>
                        <td class="auto-style11">&nbsp;</td>
                    </tr>
                </table>
    
                <br />
                <br />
                <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Orders %>" SelectCommand="SELECT * FROM [tProduct]"></asp:SqlDataSource>
            </td>
            <td class="masterpageauto-style4">&nbsp;</td>
        </tr>
    </table>
</asp:Content>

