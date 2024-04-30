using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCS.Data;
using OCS.Model;
using System.Net;
using System.Net.Mail;

namespace OCS.Pages
{
    public partial class crear_usuario : System.Web.UI.Page
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

                    if (length <= 50)
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

        protected void cvcedula_ServerValidate(object source, ServerValidateEventArgs args)
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

        protected void cvcelular_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = false;

                if (args.Value != null)
                {
                    string str = args.Value;
                    int length = str.Length;

                    if (length <= 8)
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

        protected void cvemail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            try
            {
                args.IsValid = false;

                if (args.Value != null)
                {
                    string str = args.Value;
                    int length = str.Length;

                    if (length <= 50)
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

        protected void btnGuardar_Click(object sender, EventArgs e) // permite ejecutar el registro de un nuevo usuario en base de datos
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
                try
                {
                    if (Page.IsValid)
                  
                    {
                        myPersona = (Persona)Session["infoPersona"];
                        db.sp_InsertarUsuario(txtNombre.Text, txtIdentificacion.Text, txtCelular.Text, txtEmail.Text, ddRoles.Text, myPersona.identificacion, DateTime.Now, 8);
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                        txtNombre.Text = string.Empty;
                        txtIdentificacion.Text = string.Empty;
                        txtCelular.Text = string.Empty;
                        txtEmail.Text = string.Empty;
                        ddRoles.Text = string.Empty;
                        
                    }
                }

                catch (Exception ex)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError", "mostrarMensajeError();", true);
                }
        }

        protected void bntCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_usuarios.aspx", false);
           
        }

        

       
    }
}