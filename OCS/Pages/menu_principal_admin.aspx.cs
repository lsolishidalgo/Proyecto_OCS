using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace OCS.Pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
 
        }

        protected void btnAdminUsuarios_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_usuarios.aspx", false);
        }

        protected void btnAdminMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_carta.aspx", false);
        }

        protected void btnAdminMesas_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_mesas.aspx", false);
        }
    }
}