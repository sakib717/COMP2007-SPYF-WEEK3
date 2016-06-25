using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

// using statements required for EF DB access
using COMP2007_S2016_Lesson6B.Models;
using System.Web.ModelBinding;

namespace COMP2007_S2016_Lesson6B
{
    public partial class NorthAmericaCup : System.Web.UI.Page
    {
            protected void Page_Load(object sender, EventArgs e)
            {
                // if loading the page for the first time, populate the grid
                if (!IsPostBack)
                {
                    Session["SortColumn"] = "GameID"; // default sort column
                    Session["SortDirection"] = "ASC";
                    // Get the data
                    this.GetGame();
                }
            }

            protected void GetGame()
            {
                // connect to EF
                using (DefaultConnect db = new DefaultConnect())
                {
                    string SortString = Session["SortColumn"].ToString() + " " + Session["SortDirection"].ToString();

                    // query the Students Table using EF and LINQ
                    var Game = (from Games in db.NorthAmericas
                                select Games);

                    // bind the result to the GridView
                    NorthAmericaCupGridView.DataSource = Game.AsQueryable().OrderBy(SortString).ToList();
                    NorthAmericaCupGridView.DataBind();
                }
            }

            protected void NorthAmericaCupGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
            {
                // store which row was clicked
                int selectedRow = e.RowIndex;

                // get the selected GameID using the Grid's DataKey collection
                int GameID = Convert.ToInt32(NorthAmericaCupGridView.DataKeys[selectedRow].Values["GameID"]);

                // use EF to find the selected notes in the DB and remove it
                using (DefaultConnect db = new DefaultConnect())
                {
                    // create object of the GameList class and store the query string inside of it
                    NorthAmerica deletedGame = (from GameListRecord in db.NorthAmericas
                                          where GameListRecord.GameID == GameID
                                          select GameListRecord).FirstOrDefault();

                    // remove the selected student from the db
                    db.NorthAmericas.Remove(deletedGame);

                    // save my changes back to the database
                    db.SaveChanges();

                    // refresh the grid
                    this.GetGame();
                }


            }

            protected void NorthAmericaCupGridView_PageIndexChanging(object sender, GridViewPageEventArgs e)
            {
                // Set the new page number
                NorthAmericaCupGridView.PageIndex = e.NewPageIndex;

                // refresh the grid
                this.GetGame();
            }

            protected void PageSizeDropDownList_SelectedIndexChanged(object sender, EventArgs e)
            {
                // Set the new Page size
                NorthAmericaCupGridView.PageSize = Convert.ToInt32(PageSizeDropDownList.SelectedValue);

                // refresh the grid
                this.GetGame();
            }

            protected void NorthAmericaCupGridView_Sorting(object sender, GridViewSortEventArgs e)
            {
                // get the column to sorty by
                Session["SortColumn"] = e.SortExpression;

                // Refresh the Grid
                this.GetGame();

                // toggle the direction
                Session["SortDirection"] = Session["SortDirection"].ToString() == "ASC" ? "DESC" : "ASC";
            }

            protected void GameGridView_RowDataBound(object sender, GridViewRowEventArgs e)
            {
                if (IsPostBack)
                {
                    if (e.Row.RowType == DataControlRowType.Header) // if header row has been clicked
                    {
                        LinkButton linkbutton = new LinkButton();

                        for (int index = 0; index < NorthAmericaCupGridView.Columns.Count - 1; index++)
                        {
                            if (NorthAmericaCupGridView.Columns[index].SortExpression == Session["SortColumn"].ToString())
                            {
                                if (Session["SortDirection"].ToString() == "ASC")
                                {
                                    linkbutton.Text = " <i class='fa fa-caret-up fa-lg'></i>";
                                }
                                else
                                {
                                    linkbutton.Text = " <i class='fa fa-caret-down fa-lg'></i>";
                                }

                                e.Row.Cells[index].Controls.Add(linkbutton);
                            }
                        }
                    }
                }
            }
        }
    }




       