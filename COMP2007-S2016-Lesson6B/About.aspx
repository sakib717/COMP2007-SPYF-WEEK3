<%@ Page Title="about" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="SPYF_GameTracker.About" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <style>
            body {
                background: url("Assets/Images/background5.jpg") no-repeat fixed center;
                background-size: cover;
            }
        </style>
        <h5>About Us</h5>
        <br>
        <h4>Creators: Sakib Patel & Yuji Fujiyama</h4>

        <br />
        <br />
        <div class="container">

            <h4>The search for a game tracker ends NOW.
            <br>SPYF is the new generation of tracking the 
            <br>latest soccer matches and results,
            <br>allowing you to save your game and veiw the results 
            <br>of your favorite game any time,
            <br>anywhere! tracking soccer games has never been this simple, 
           <br>explore and track your game!</h4>


        </div>
        </div>
</asp:Content>

<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <link href="Content/app.css" rel="stylesheet" type="text/css" />
</asp:Content>
