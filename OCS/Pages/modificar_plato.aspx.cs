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
    public partial class modificar_plato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) //método para cargar la lista de plato
        {
            using(Proyecto_OCS_IngSoftwareEntities db= new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    if (!Page.IsPostBack)
                    {
                        var listaPlatos = (from p in db.sp_ConsultarPlatos()
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

        protected void bntRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_carta.aspx", false);
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
           using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    var plato = db.sp_ConsultarPlatoPorID(int.Parse(ddPlato.SelectedIndex.ToString())).ToList();
                    txtDescripcion.Text = plato[0].DESCRIPCION;
                    txtPrecio.Text = plato[0].PRECIO.ToString();
                    txtEstado.Text = plato[0].ESTADO;
                    btnGuardar.Enabled = true;

                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {

                try
                {
                    db.sp_ModificarPlato(int.Parse(ddPlato.SelectedIndex.ToString()), txtDescripcion.Text, Decimal.Parse(txtPrecio.Text));
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                    ddPlato.SelectedValue = "0";
                    txtDescripcion.Text = string.Empty;
                    txtPrecio.Text = string.Empty;
                    txtEstado.Text = string.Empty;
                    btnGuardar.Enabled = false;
                 
                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError2", "mostrarMensajeError2();", true);
                }
            }
        }
    }
}