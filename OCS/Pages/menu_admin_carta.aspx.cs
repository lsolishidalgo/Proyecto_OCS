using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OCS.Pages
{
    public partial class menu_admin_carta : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntHabDesPlato_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/habilitar_deshabilitar_plato.aspx", false);
        }

        protected void btnIngPlato_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ingresar_plato.aspx", false);
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_principal_admin.aspx", false);
        }

        protected void btnModPlato_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/modificar_plato.aspx", false);
        }
    }
}