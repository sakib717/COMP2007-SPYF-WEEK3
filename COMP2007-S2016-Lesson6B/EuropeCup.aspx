<%@ Page Title="Europe" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EuropeCup.aspx.cs" Inherits="COMP2007_S2016_Lesson6B.EuropeCup" %>
 <asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1>Europe Game</h1>
                <a href="/EuropeCupDetails.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i>Add Match!</a>
                <div>
                    <label for="PageSizeDropDownList">Records per Page: </label>
                    <asp:DropDownList ID="PageSizeDropDownList" runat="server"
                        AutoPostBack="true" CssClass="btn btn-default bt-sm dropdown-toggle"
                        OnSelectedIndexChanged="PageSizeDropDownList_SelectedIndexChanged">
                        <asp:ListItem Text="3" Value="3" />
                        <asp:ListItem Text="5" Value="5" />
                        <asp:ListItem Text="10" Value="10" />
                        <asp:ListItem Text="All" Value="10000" />
                    </asp:DropDownList>
                </div>
                <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="EuropeCupGridView" AutoGenerateColumns="false" DataKeyNames="GameID"
                    OnRowDeleting="EuropeCupGridView_RowDeleting" AllowPaging="true" PageSize="3"
                    OnPageIndexChanging="EuropeCupGridView_PageIndexChanging" AllowSorting="true"
                    OnSorting="EuropeCupGridView_Sorting" PagerStyle-CssClass="pagination-ys">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" Visible="true" SortExpression="Title" />
                        <asp:BoundField DataField="DateOfGame" HeaderText="Date" Visible="true" SortExpression="DateOfGame" />
                        <asp:BoundField DataField="Description" HeaderText="Description" Visible="true" SortExpression="Description" />
                        <asp:BoundField DataField="TotalHome" HeaderText="Total Home" Visible="true" SortExpression="TotalHome" />
                        <asp:BoundField DataField="TotalAway" HeaderText="Total Away" Visible="true" SortExpression="TotalAway" />
                        <asp:BoundField DataField="Spectators" HeaderText="# of Spectators" Visible="true" SortExpression="Spectators" />
                        <asp:BoundField DataField="WinningTeam" HeaderText="Winning Team" Visible="true" SortExpression="WinningTeam" />
                        <asp:HyperLinkField HeaderText="Edit" Text="<i class='fa fa-pencil-square-o fa-lg'></i> Edit" 
                            NavigateUrl="~/EuropeCupDetails.aspx.cs" ControlStyle-CssClass="btn btn-primary btn-sm" runat="server"
                            DataNavigateUrlFields="GameID" DataNavigateUrlFormatString="EuropeCupDetails.aspx?GameID={0}" />

                        <asp:CommandField  HeaderText="Delete" DeleteText="<i class='fa fa-trash-o fa-lg'></i> Delete"
                            ShowDeleteButton="true" ButtonType="Link" ControlStyle-CssClass="btn btn-danger btn-sm" />
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
