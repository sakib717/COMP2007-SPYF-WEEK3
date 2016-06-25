<%@ Page Title="Match Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AsianCupDetails.aspx.cs" Inherits="COMP2007_S2016_Lesson6B.AsianCupDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <h1>Todo Details</h1>
                <h5>All Fields are Required</h5>
                <br />
                 <div class="form-group">
                    <label class="control-label" for="TitleTextBox">Title</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TitleTextBox" placeholder="Title" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="TotalHomeTextBox">TotalHome</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TotalHomeTextBox" placeholder="TotalHome" required="true"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label class="control-label" for="TotalAwayTextBox">TotalAwa</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="TotalAwayTextBox" placeholder="TotalAway" required="true"></asp:TextBox>
                </div>
                 <div class="form-group">
                    <label class="control-label" for="DescriptionTextBox">Description</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="DescriptionTextBox" placeholder="Todo Notes" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="Spectators">Spectators</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="SpectatorsTextBox" placeholder="Spectators" required="true"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label class="control-label" for="WinningTeam">WinningTeam</label>
                    <asp:TextBox runat="server" CssClass="form-control" ID="WinningTeamTextBox" placeholder="WinningTeam" required="true"></asp:TextBox>
                </div>
                <div class="text-right">
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server"
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                    <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                   
                </div>
            </div>
        </div>
    </div>
</asp:Content>

