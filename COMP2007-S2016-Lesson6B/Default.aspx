<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="COMP2007_S2016_Lesson6B.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <div class="container">

        <style>
            body {
                background: url("Assets/Images/background.jpg") no-repeat fixed center;
                background-size: cover;
            }
        </style>
        <h1>WELCOME TO SPYF!</h1>
        <h2>Track Your Game.</h2>

        <div class="container" style="margin-top: 215px;">
            <div class="row text-center" style="min-width: 100%;">
                <div class="col-md-4 col-max gridbox-3">
                    <h3>SignUp!</h3>
                    <hr>
                    <p>Want to track games, but don't have an account? Then signup and track your game!</p>
                    <a id="SignUpButton" class="btn btn-login btn-md col-sm-11" href="Register.aspx" role="button">Sign Up</a>
                </div>
                <div class="col-md-4 col-centered col-max gridbox-3">
                    <h3>Guest User</h3>
                    <hr>
                    <p>Don't have an account but want to track games?</p>
                    <a id="TrackButton" class="btn btn-login btn-md col-sm-11" href="MainMenu.aspx" role="button">Track Games!</a>
                </div>
                <div class="col-md-4 col-centered col-max gridbox-3">
                    <h3>Login</h3>
                    <hr>
                    <p>Want to view account?</p>
                    <a id="LoginButton" class="btn btn-login btn-md col-sm-11" href="Login.aspx" role="button">Login</a>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" runat="server" ContentPlaceHolderID="head">
    <link href="Content/app.css" rel="stylesheet" type="text/css" />



</asp:Content>
