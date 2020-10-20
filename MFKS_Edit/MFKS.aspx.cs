using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MFKS_Edit
{
    public partial class MFKS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cbFirms_ValueChanged(object sender, EventArgs e)
        {
            gvAthletes.DataBind();
            gvTrainers.DataBind();
            gvLearningGroup.DataBind();
            gvEventComplete.DataBind();
            gvAthletesEventComplete.DataBind();
        }

        protected void dsCommon_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {
            e.Command.Parameters["@FirmID"].Value = cbFirms.SelectedItem?.Value ?? -1;
        }

        //todo:Сделать выбором сразу Молдагулову - ID = 22

    }
}