using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCS.Data;

namespace OCS.Pages
{
    public partial class modificar_orden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
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

                    var idMesa = db.sp_ConsultaIDMesa(int.Parse(ddMesa.SelectedValue)).ToList();
                    var listaPlatosOrden = db.sp_ConsultaPlatillosDeOrden(idMesa[0].Value);
                    gvPlatosOrden.DataSource = listaPlatosOrden;
                    gvPlatosOrden.DataBind();


                    String estadoPlato;
                    foreach (GridViewRow row in gvPlatosOrden.Rows)
                    {
                        estadoPlato = row.Cells[4].Text;

                        if (estadoPlato == "p" || estadoPlato == "p ")
                            row.Cells[4].Text = "Pendiente";
                        else
                        if (estadoPlato == "c" || estadoPlato == "c ")
                        row.Cells[4].Text = "Atendido";
                    }                   
                   
                }

                catch
                {

                }

            }
            
        }

        protected void gvPlatosOrden_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
                try
                {
                    
                    if (gvPlatosOrden.SelectedRow.Cells[4].Text == "Pendiente")
                    { 
                        db.sp_EliminarRegOrdenPlato(int.Parse(gvPlatosOrden.SelectedRow.Cells[0].Text));
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                        var idMesa = db.sp_ConsultaIDMesa(int.Parse(ddMesa.SelectedValue)).ToList();
                        var listaPlatosOrden = db.sp_ConsultaPlatillosDeOrden(idMesa[0].Value);
                        gvPlatosOrden.DataSource = listaPlatosOrden;
                        gvPlatosOrden.DataBind();

                        String estadoPlato;
                        foreach (GridViewRow row in gvPlatosOrden.Rows)
                        {
                            estadoPlato = row.Cells[4].Text;

                            if (estadoPlato == "p" || estadoPlato == "p ")
                                row.Cells[4].Text = "Pendiente";
                            else
                            if (estadoPlato == "c" || estadoPlato == "c ")
                                row.Cells[4].Text = "Atendido";
                        }
                    }
                   
                    else
                        if (gvPlatosOrden.SelectedRow.Cells[4].Text == "Atendido")
                        ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                }
                catch
                {
                    
                }
        }

        protected void bntRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_principal_mesero.aspx", false);
        }

        protected void ddMesa_SelectedIndexChanged(object sender, EventArgs e)
        {
            gvPlatosOrden.DataSource = null;
            gvPlatosOrden.DataBind();
        }
    }
}