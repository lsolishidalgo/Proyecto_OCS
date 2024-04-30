using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace OCS.Pages
{
    public partial class menu_principal_mesero : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnIngOrden_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ingresar_orden.aspx", false);
        }

        protected void btnModOrden_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/modificar_orden.aspx", false);
        }

        protected void btnAnularOrden_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/anular_orden.aspx", false);
        }

        protected void btnFinOrden_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/finalizar_orden.aspx", false);
        }
    }
}