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
    public partial class habilitar_deshabilitar_usuario : System.Web.UI.Page
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
            if(Page.IsValid)
            {
                using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
                try
                {
                        var usuario = db.sp_ConsultaPorIdentificacion(txtIdentificacion.Text).ToList();
                        txtNombre.Text = usuario[0].Nombre;
                        txtEmail.Text = usuario[0].Email;
                        txtEstado.Text = usuario[0].Estado;
                        btnCambiarEstado.Enabled = true;
                }
                catch
                {
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                }
            }
        }

        protected void btnCambiarEstado_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
                try
                {
                            db.sp_ModificarEstadoUsuario(txtIdentificacion.Text, txtEstado.Text);
                            ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                            txtNombre.Text = string.Empty;
                            txtEmail.Text = string.Empty;
                            txtEstado.Text = string.Empty;
                            txtIdentificacion.Text = string.Empty;
                    }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError2", "mostrarMensajeError2();", true);
                }
            }
            
        }
    }
}