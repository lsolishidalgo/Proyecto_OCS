using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCS.Model;

namespace OCS
{
    public partial class SiteMaster : MasterPage
    {
        Persona myPersona = new Persona();
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["infoPersona"] != null)
                {
                    myPersona = (Persona)Session["infoPersona"];
                    lblUsuario.Text = myPersona.nombrePersona;
                    btnCerrar.Visible = true;
                }
            }
            catch (Exception ex)
            {
                Response.Redirect("/Pages/login.aspx", false);
            }
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("~/Pages/login.aspx", false);
        }
    }
}