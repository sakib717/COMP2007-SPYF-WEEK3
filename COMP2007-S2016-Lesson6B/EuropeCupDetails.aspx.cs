﻿using System;
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
    public partial class EuropeCupDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetGame();
            }
        }

        protected void GetGame()
        {
            // populate teh form with existing data from the database
            int GameID = Convert.ToInt32(Request.QueryString["GameID"]);

            // connect to the EF DB
            using (DefaultConnect db = new DefaultConnect())
            {
                // populate a object instance with the TodoID from the URL Parameter
                Europe updatedGameList = (from GameList in db.Europes
                                        where GameList.GameID == GameID
                                        select GameList).FirstOrDefault();

                // map the properties to the form controls
                if (updatedGameList != null)
                {
                    DescriptionTextBox.Text = updatedGameList.Description;
                    TitleTextBox.Text = updatedGameList.Title;
                    WinningTeamTextBox.Text = updatedGameList.WinningTeam;

                }
            }
        }

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // Redirect back to page
            Response.Redirect("~/EuropeCup.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Use EF to connect to the server
            using (DefaultConnect db = new DefaultConnect())
            {
                // use the  model to create a new  object and
                // save a new record
                Europe newGameList = new Europe();

                int GameID = 0;

                if (Request.QueryString.Count > 0) // our URL has a TodoID in it
                {
                    // get the id from the URL
                    GameID = Convert.ToInt32(Request.QueryString["GameID"]);

                    // get the current  EF DB

                    newGameList = (from Europe in db.Europes
                                   where Europe.GameID == GameID
                                   select Europe).FirstOrDefault();
                }

                // add form data to the new record
                newGameList.Title = TitleTextBox.Text;
                newGameList.TotalHome = Convert.ToInt32(TotalHomeTextBox.Text);
                newGameList.TotalAway = Convert.ToInt32(TotalAwayTextBox.Text);
                newGameList.Description = DescriptionTextBox.Text;
                newGameList.Spectators = Convert.ToInt32(SpectatorsTextBox.Text);
                newGameList.WinningTeam = WinningTeamTextBox.Text;



                // use LINQ to ADO.NET to add / insert new record into the database

                if (GameID == 0)
                {
                    db.Europes.Add(newGameList);
                }


                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated  page
                Response.Redirect("~/EuropeCup.aspx");
            }
        }


    }
}
        