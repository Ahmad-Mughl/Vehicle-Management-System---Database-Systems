<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="myweb.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            margin: 0;
        }

        .dashboard {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #fff6b7 0%, #f6416c 100%);
            min-height: 100vh;
            padding: 60px 20px;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            color: #333;
        }

        .dashboard-container {
            max-width: 1000px;
            width: 100%;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 25px;
        }

        .welcome-card {
            grid-column: 1 / -1;
            background: white;
            border-radius: 20px;
            padding: 35px;
            text-align: center;
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1s ease-in-out;
        }

        .welcome-card h1 {
            font-size: 2.3em;
            color: #f6416c;
            margin-bottom: 10px;
        }

        .welcome-card p {
            font-size: 1.1em;
            color: #555;
        }

        .info-card {
            background: white;
            border-radius: 15px;
            padding: 25px;
            box-shadow: 0 5px 20px rgba(0,0,0,0.1);
            transition: transform 0.3s, box-shadow 0.3s;
            text-align: center;
        }

        .info-card:hover {
            transform: translateY(-6px);
            box-shadow: 0 8px 28px rgba(0,0,0,0.15);
        }

        .info-title {
            font-size: 1.1em;
            margin-bottom: 8px;
            font-weight: 600;
            color: #f6416c;
        }

        .info-value {
            font-size: 1.05em;
            color: #444;
        }

        .btn-logout {
            margin-top: 25px;
            padding: 12px 35px;
            font-size: 1.1em;
            background: #f6416c;
            color: white;
            border: none;
            border-radius: 50px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-logout:hover {
            background: #d92a58;
            transform: translateY(-2px);
        }

        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(15px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="dashboard">
        <div class="dashboard-container">

            <!-- Welcome Section -->
            <div class="welcome-card">
                <h1>Welcome, <asp:Label ID="lblFullName" runat="server" Text="Ahmad" /></h1>
                <p>Have a productive day ahead!</p>
                <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" CssClass="btn-logout" />
            </div>

            <!-- Info Cards -->
            <div class="info-card">
                <div class="info-title">User ID</div>
                <div class="info-value"><asp:Label ID="lblUserID" runat="server" /></div>
            </div>

            <div class="info-card">
                <div class="info-title">Username</div>
                <div class="info-value"><asp:Label ID="lblUsername" runat="server" /></div>
            </div>

            <div class="info-card">
                <div class="info-title">Last Login</div>
                <div class="info-value"><asp:Label ID="lblLastLogin" runat="server" Text="N/A" /></div>
            </div>

            <div class="info-card">
                <div class="info-title">Account Status</div>
                <div class="info-value">Active</div>
            </div>

        </div>
    </div>
</asp:Content>
