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
    public partial class ingresar_orden : System.Web.UI.Page
    {
        Persona myPersona = new Persona();
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    if (!Page.IsPostBack)
                    {
                        var listaMesas = (from m in db.sp_ConsultaMesasHabilitadas()
                                          select new ListItem
                                          {
                                              Value = m.ID.ToString(),
                                              Text = m.NumeroMesa.ToString()
                                          }).ToList();
                        ddMesa.DataSource = listaMesas;
                        ddMesa.DataBind();

                        var listaPlatos = (from p in db.sp_ConsultarPlatosHabilitados()
                                           select new ListItem
                                           {
                                               Value = p.ID.ToString(),
                                               Text = p.TITULO
                                           }).ToList();
                        ddPlato.DataSource = listaPlatos;
                        ddPlato.DataBind();
                    }
                }
                
                catch
                {

                }
            }

            
        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
           using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    
                        var idMesa = db.sp_ConsultaIDMesa(int.Parse(ddMesa.SelectedValue)).ToList();
                        var idPlato = db.sp_ConsultaIDPlato(ddPlato.SelectedValue).ToList();
                        db.sp_InsertaRegistroTemporal(idMesa[0].Value, idPlato[0].Value, txtobservaciones.Text, int.Parse(txtCant.Text), "defaul", "default", "r");

                        ddPlato.SelectedValue = "0";
                        txtobservaciones.Text = string.Empty;
                        txtCant.Text = string.Empty;
                        btnEnviar.Enabled = true;


                        var listaPlatos = db.sp_ConsultaPlatosTemporalesMesa(idMesa[0].Value);
                        gvOrden.DataSource = listaPlatos;
                        gvOrden.DataBind();
                    txtobservaciones.Enabled = false;
                    txtCant.Enabled = false;
                    btnIngresar.Enabled = false;


                    
                }
                catch
                {

                }
            }
        }

        protected void ddMesa_SelectedIndexChanged(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db =new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    var idMesa = db.sp_ConsultaIDMesa(int.Parse(ddMesa.SelectedValue)).ToList();
                    db.sp_EliminarRegTemp(idMesa[0].Value);
                }
                catch
                {

                }
            }
            ddMesa.Enabled = false;
            ddPlato.Enabled = true;
           
            
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    
                    if (ddMesa.SelectedIndex > 0) {
                        var idMesa = db.sp_ConsultaIDMesa(int.Parse(ddMesa.SelectedValue)).ToList();
                        db.sp_EliminarRegTemp(idMesa[0].Value);
                        //ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                        //ddMesa.Enabled = true;
                        //ddMesa.SelectedValue = "0";
                        //ddPlato.SelectedValue = "0";
                        //txtCant.Text = string.Empty;
                        //ddPlato.Enabled = false;
                        //txtCant.Enabled = false;
                        Response.Redirect("~/Pages/menu_principal_mesero.aspx", false);
                    }
                    else
                    {
                        Response.Redirect("~/Pages/menu_principal_mesero.aspx", false);
                    }
                }
                catch
                {

                }
            }
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    foreach (GridViewRow row in gvOrden.Rows)
                    {
                        if (row.RowType == DataControlRowType.DataRow)
                        {
                            string numMesa = row.Cells[0].Text;
                            myPersona = (Persona)Session["infoPersona"];
                            db.sp_InsertarOrden(int.Parse(numMesa), myPersona.identificacion);
                            var idOrden = db.sp_ConsultaIdOrden(int.Parse(numMesa)).ToList();
                            var idPlato = db.sp_ConsultaIDPlato(row.Cells[1].Text).ToList();
                            db.sp_InsertaOrdenPlato(idOrden[0].Value, idPlato[0].Value, row.Cells[3].Text, int.Parse(row.Cells[2].Text));
                            var idMesa = db.sp_ConsultaIDMesa(int.Parse(ddMesa.SelectedValue)).ToList();
                            db.sp_EliminarRegTemp(idMesa[0].Value);
                        }
                    }
                    ddMesa.Enabled = true;
                    ddMesa.SelectedValue = "0";
                    ddPlato.Enabled = false;
                    txtobservaciones.Enabled = false;
                    txtCant.Enabled = false;
                    btnIngresar.Enabled = false;
                    btnEnviar.Enabled = false;
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                    gvOrden.DataSource = null;
                    gvOrden.DataBind();
                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                }
            }
        }

        protected void ddPlato_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtCant.Enabled = true;
            btnIngresar.Enabled = true;
            txtobservaciones.Enabled = true;
        }
    }
}