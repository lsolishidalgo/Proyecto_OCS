using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCS.Data;
using OCS.Model;

namespace OCS.Pages
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        Persona myPersona = new Persona();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIniciarSesion_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
                {
                    var persona = db.sp_ConsultaPorIdentificacion((txtUsuario.Text)).ToList();
                    try 
                    {
                        myPersona.identificacion = persona[0].Identificacion.ToString();
                        myPersona.nombrePersona = persona[0].Nombre.ToString();
                        myPersona.rol = persona[0].Rol.ToString();
                        myPersona.estado = persona[0].Estado.ToString();
                        
                        if (txtPassword.Text == persona[0].Password.ToString())
                        {
                            Session["infoPersona"] = myPersona;
                            
                            if (myPersona.estado == "deshabilitado")
                            {
                                lblMensaje1.Visible = false;
                                lblMensaje2.Visible = true;
                            }
                            
                            else
                            
                            if (myPersona.rol == "capitan")
                            {
                                Response.Redirect("~/Pages/comanda.aspx", false);
                            }
                            
                            else
                            if (myPersona.rol == "admin")
                            {
                                Response.Redirect("~/Pages/menu_principal_admin.aspx", false);
                            }
                           else
                           {
                                Response.Redirect("~/Pages/menu_principal_mesero.aspx", false);
                           }
                        }
                        
                        else
                        {
                            lblMensaje1.Visible = true;
                            lblMensaje2.Visible = false;
                        }
                    }
                    catch
                    {
                        lblMensaje1.Visible = true;
                        lblMensaje2.Visible = false;
                    }
                }
            }
        }
    }
}