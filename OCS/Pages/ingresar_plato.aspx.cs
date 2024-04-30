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
    public partial class ingresar_plato : System.Web.UI.Page
    {
        Persona myPersona = new Persona();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvnombre_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = false;

                if (args.Value != null)
                {
                    string str = args.Value;
                    int length = str.Length;

                    if (length <= 25)
                    {
                        args.IsValid = true;
                    }
                }
            }

            catch (Exception ex)
            {
                args.IsValid = false;
            }
        }

        protected void cvdescripcion_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = false;

                if (args.Value != null)
                {
                    string str = args.Value;
                    int length = str.Length;

                    if (length <= 100)
                    {
                        args.IsValid = true;
                    }
                }
            }

            catch (Exception ex)
            {
                args.IsValid = false;
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
                try
                {
                    //if (Page.IsValid)

                    //{
                        myPersona = (Persona)Session["infoPersona"];
                        db.sp_InsertarPlato(txtNombre.Text, txtDescripcion.Text, decimal.Parse(txtPrecio.Text), myPersona.identificacion, DateTime.Now);
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                        txtNombre.Text = string.Empty;
                        txtDescripcion.Text = string.Empty;
                        txtPrecio.Text = string.Empty;
                    //}

                }

                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError", "mostrarMensajeError();", true);
                }
        }

        protected void bntCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_carta.aspx", false);
        }
    }
}