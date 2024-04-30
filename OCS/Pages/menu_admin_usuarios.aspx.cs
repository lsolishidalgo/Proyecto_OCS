using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace OCS.Pages
{
    public partial class menu_admin_usuarios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_principal_admin.aspx", false);
                
        }

        protected void btnIngUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/crear_usuario.aspx", false);
        }

        protected void btnReiniciarPassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/reiniciar_password.aspx", false);
        }

        protected void bntHabDesUsuario_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/habilitar_deshabilitar_usuario.aspx", false);
        }
    }
}