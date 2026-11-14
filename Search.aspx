<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="myweb.Search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TextBox1" runat="server" Width="247px" Placeholder="Enter Item Name"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Search" Width="119px" OnClick="Search_Button_Click"/>
    <div id="message" runat="server"></div>
   
    <asp:GridView ID="ItemGrid" runat="server" ></asp:GridView>


</asp:Content>

