using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using OCS.Data;
using OCS.Model;

namespace OCS.Pages
{
    public partial class ingresar_mesa : System.Web.UI.Page
    {
        Persona myPersona = new Persona();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bntCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_mesas.aspx", false);
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
                try
                {
                    myPersona = (Persona)Session["infoPersona"];
                    db.sp_CrearMesa(int.Parse(txtNumMesa.Text), int.Parse(txtCantMax.Text), myPersona.identificacion);
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                    txtNumMesa.Text = string.Empty;
                    txtCantMax.Text = string.Empty;

                }

                catch 
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                }
        }
    }
}