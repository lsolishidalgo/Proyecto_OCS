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
    public partial class menu_admin_mesas : System.Web.UI.Page
    {
               
        protected void Page_Load(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    if (!Page.IsPostBack)
                    {
                        var mesas = db.sp_ConsultaMesas();
                        gvListaMesas.DataSource = mesas;
                        gvListaMesas.DataBind();

                        String estadoMesa;

                        foreach (GridViewRow row in gvListaMesas.Rows)
                        {
                            estadoMesa = row.Cells[2].Text;

                            if (estadoMesa == "deshabilitado")
                                row.Cells[2].Text = "Deshabilitada";
                            else
                            if (estadoMesa == "habilitado")
                                row.Cells[2].Text = "Habilitada";
                        }
                    }
                }
                catch
                {

                }
            }
        }

        protected void btnIngMesa_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/ingresar_mesa.aspx", false);
        }

        protected void btnRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_principal_admin.aspx", false);
        }

        protected void bntHabDesMesa_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/habilitar_deshabilitar_mesa.aspx", false);
        }
    }
}