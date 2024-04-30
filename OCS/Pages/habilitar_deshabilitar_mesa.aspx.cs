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
    public partial class habilitar_deshabilitar_mesa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    if (!Page.IsPostBack)
                    {
                        var listaMesas = (from p in db.sp_ConsultaMesas()
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

        protected void bntRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_admin_mesas.aspx", false);
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    var mesa = db.sp_consultaMesaPorID(int.Parse(ddMesa.SelectedIndex.ToString())).ToList();
                    txtCantMax.Text = mesa[0].CantidadMaximaPersonas.ToString();
                    txtEstado.Text = mesa[0].Estado.ToString();
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
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    db.sp_ModificarEstadoMesa(int.Parse(ddMesa.SelectedIndex.ToString()), txtEstado.Text);
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeOK", "mostrarMensajeOK();", true);
                    ddMesa.SelectedValue = "0";
                    txtCantMax.Text = string.Empty;
                    txtEstado.Text = string.Empty;
                    btnCambiarEstado.Enabled = false;
                }
                catch
                {

                }
            }
        }
    }
}