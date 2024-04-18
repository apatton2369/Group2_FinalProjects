using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Group2_FinalProject
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            int selectedProblemId;
            if (int.TryParse(lstProblems.SelectedValue, out selectedProblemId))
            {

            }
        }


    }
}
