using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OCS.Data;

namespace OCS.Pages
{
    public partial class reiniciar_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_usuarios.aspx", false);
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
                    try
                    {
                        var usuario = db.sp_ConsultaPorIdentificacion(txtIdentificacion.Text).ToList();
                        txtNombre.Text = usuario[0].Nombre;
                        txtEmail.Text = usuario[0].Email;
                        btnReiniciarP.Enabled = true;
                    }
                    catch
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                        txtIdentificacion.Text = string.Empty;
                    }
            }
        }

        protected void btnReiniciarP_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using(Proyecto_OCS_IngSoftwareEntities db =new Proyecto_OCS_IngSoftwareEntities())
                try
                {
                        db.sp_GenerarNuevoPassword(txtIdentificacion.Text, 8);
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                        txtIdentificacion.Text = string.Empty;
                        txtNombre.Text = string.Empty;
                        txtEmail.Text = string.Empty;
                    }
                catch
                {
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError2", "mostrarMensajeError2();", true);
                }
            }
        }
    }
}