using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCS.Data;

namespace OCS.Pages
{
    public partial class anular_orden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    if (!Page.IsPostBack)
                    {
                        var listaMesas = (from p in db.sp_ConsultaMesasConOrdenes()
                                          select new ListItem
                                          {
                                              Value = p.ID.ToString(),
                                              Text = p.NumeroMesa.ToString()
                                          }).ToList();
                        ddMesa.DataSource = listaMesas;
                        ddMesa.DataBind();
                    }
                }
                catch
                {

                }
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    if (ddMesa.SelectedIndex > 0)
                    {
                        var idMesa = db.sp_ConsultaIDMesa(int.Parse(ddMesa.SelectedValue)).ToList();
                        var listaPlatosOrden = db.sp_ValidaEstadoPlatosOrden(idMesa[0].Value);
                        gvPlatosOrden.DataSource = listaPlatosOrden;
                        gvPlatosOrden.DataBind();
                        btnAnularOrden.Visible = true;
                        ddMesa.Enabled = false;
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError2", "mostrarMensajeError2();", true);
                    }
                }
                catch
                {
                    
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                    
                }
            }
            
        }

        protected void bntRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_principal_mesero.aspx", false);
        }

        protected void btnAnularOrden_Click(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    var idOrden = db.sp_ConsultaIdOrden(int.Parse(ddMesa.SelectedValue)).ToList();
                    db.sp_AnularRegOrdenPlato(idOrden[0].Value);
                    db.sp_AnularOrden(idOrden[0].Value);
                    
                    ddMesa.Enabled = true;
                    ddMesa.SelectedValue = "0";
                    btnAnularOrden.Visible = false;
                    gvPlatosOrden.DataSource = null;
                    gvPlatosOrden.DataBind();
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);

                }

                catch
                {

                }
            }
        }
    }
}