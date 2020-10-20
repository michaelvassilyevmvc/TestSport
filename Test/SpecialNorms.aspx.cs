using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Test
{
    public partial class SpecialNorms : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Page_PreRenderComplete(object sender, EventArgs e)
        {
            if (cbPeriods.Items.Count > 0)
            {
                cbPeriods.SelectedIndex = cbPeriods.Items.Count - 1;
                gvAthletesKindsOfSport.DataBind();
            }
        }


        protected void dsSpecialNormsForKindOfSport_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {
            e.Command.Parameters["@KindOfSportID"].Value = Session["SpecialNormsKindOfSportID"];
            e.Command.Parameters["@State"].Value = 1;
        }

        protected void gvSpecialNormForKindOfSport_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["SpecialNormsKindOfSportID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

       

        protected void cbAthletes_DataBound(object sender, EventArgs e)
        {
            ASPxComboBox cmbbox = sender as ASPxComboBox;
            if (cmbbox.Items.Count > 0)
            {
                cmbbox.SelectedIndex = 0;
            }
        }

        protected void dsAthletesKindsOfSport_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            if(cbAthletes.SelectedIndex != -1)
            {
                e.Command.Parameters["@AthleteID"].Value = cbAthletes.SelectedItem.Value;
            }

            if(cbPeriods.SelectedIndex != -1)
            {
                e.Command.Parameters["@DateID"].Value = cbPeriods.SelectedItem.Value;
            }
        }

        //protected void cbAthletes_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    gvAthletesKindsOfSport.DataBind();
        //}

        protected void gvAthleteNorms_BeforePerformDataSelect(object sender, EventArgs e)
        {
            if (cbAthletes.SelectedIndex != -1)
            {
                Session["NormAthleteID"] = cbAthletes.SelectedItem.Value;
            }
            Session["NormSpecialNormsKindOfSportID"] = (sender as ASPxGridView).GetMasterRowFieldValues("KindOfSportID");
            Session["NormSpecialNormsDate"] = (sender as ASPxGridView).GetMasterRowFieldValues("Date");
        }

        protected void dsAthletesKindsOfSport_Inserting(object sender, SqlDataSourceCommandEventArgs e)
        {
            if (cbAthletes.SelectedIndex != -1)
            {
                e.Command.Parameters["@AthleteID"].Value = cbAthletes.SelectedItem.Value;
            }
            
        }

        protected void cbSpecialNormsPanel_Callback(object sender, CallbackEventArgsBase e)
        {
            switch (e.Parameter)
            {
                case "cbAthletes_SelectedIndexChanged": gvAthletesKindsOfSport.DataBind(); break;
                case "cbPeriods_SelectedIndexChanged":  gvAthletesKindsOfSport.DataBind(); break;
            }
        }

    }
}