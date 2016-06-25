<%@ Page Title="SPYF DashBoard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="MainMenu.aspx.cs" Inherits="COMP2007_S2016_Lesson6B.MainMenu" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <style>
            body {
                background: url("Assets/Images/backgroundMM.jpg") no-repeat fixed center;
                background-size: cover;
            }
        </style>
    <div class="container">

        <div class="row">

            <div class="col-md-offset-3 col-md-6">

                <h1>Main Menu</h1>

                <div class="well">

                    <h3><i class="fa fa-futbol-o fa-lg"></i> European Cup</h3>

                    <div class="list-group">

                        <a class="list-group-item" href="EuropeCup.aspx"><i class="fa fa-th-list"></i> European Games List</a>

                        <a class="list-group-item" href="EuropeCupDetails.aspx"><i class="fa fa-plus-circle"></i> Add Game</a>

                    </div>

                </div>

                <div class="well">

                    <h3><i class="fa fa-futbol-o fa-lg"></i> Asian Cup</h3>

                    <div class="list-group">

                        <a class="list-group-item" href="AsianCup.aspx"><i class="fa fa-th-list"></i> Asian Games List</a>

                        <a class="list-group-item" href="AsianCupDetails.aspx"><i class="fa fa-plus-circle"></i> Add Game</a>

                    </div>

                </div>

                <div class="well">

                    <h3><i class="fa fa-futbol-o fa-lg"></i> North American Cup</h3>

                    <div class="list-group">

                        <a class="list-group-item" href="NorthAmerica.aspx"><i class="fa fa-th-list"></i> N American Games List</a>

                        <a class="list-group-item" href="NorthAmericaDetails.aspx"><i class="fa fa-plus-circle"></i> Add Game</a>

                    </div>

                </div>

                <div class="well">

                    <h3><i class="fa fa-gear fa-lg"></i> User Settings</h3>

                    <div class="list-group">

                        <a class="list-group-item" href="/Admin/Users.aspx"><i class="fa fa-th-list"></i> User Information</a>

                        <a class="list-group-item" href="/Admin/UserDetails.aspx"><i class="fa fa-pencil"></i> Edit User</a>

                    </div>

                </div>

            </div>

        </div>

    </div>
</asp:Content>