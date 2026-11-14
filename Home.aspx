<%@ Page Title="User Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="myweb.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .login-container {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 80vh;
            background: #f3f6fa;
        }
        .login-card {
            background: white;
            padding: 40px 50px;
            border-radius: 15px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
        }
        .login-card h2 {
            margin-bottom: 30px;
            color: #2c3e50;
        }
        .login-card label {
            display: block;
            text-align: left;
            margin-bottom: 5px;
            font-weight: bold;
            color: #555;
        }
        .login-card input[type="text"],
        .login-card input[type="password"] {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 8px;
            margin-bottom: 15px;
            font-size: 14px;
        }
        .login-card input:focus {
            outline: none;
            border-color: #3498db;
            box-shadow: 0 0 4px #3498db;
        }
        .login-card .btn {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background 0.3s;
        }
        .login-card .btn:hover {
            background-color: #2980b9;
        }
        .login-card #lblMessage {
            display: block;
            margin-top: 15px;
            color: red;
            font-weight: 500;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <div class="login-card">
            <h2>User Login</h2>

            <asp:Label ID="lblUserID" runat="server" Text="User ID:" AssociatedControlID="TxtUserID"></asp:Label>
            <asp:TextBox ID="TxtUserID" runat="server" CssClass="form-control" placeholder="Enter your ID"></asp:TextBox>

            <asp:Label ID="lblUsername" runat="server" Text="Username:" AssociatedControlID="TxtUsername"></asp:Label>
            <asp:TextBox ID="TxtUsername" runat="server" CssClass="form-control" placeholder="Enter your username"></asp:TextBox>

            <asp:Label ID="lblPassword" runat="server" Text="Password:" AssociatedControlID="TxtPassword"></asp:Label>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" CssClass="form-control" placeholder="Enter your password"></asp:TextBox>

            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click" />

            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </div>
</asp:Content>
