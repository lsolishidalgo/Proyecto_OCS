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
    public partial class comanda : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            using (Proyecto_OCS_IngSoftwareEntities db= new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    if (!Page.IsPostBack)
                    {
                        var platosPendientes = db.sp_ListadoComanda();
                        gvPlatosPendiente.DataSource = platosPendientes;
                        gvPlatosPendiente.DataBind();

                    }
                }
                catch
                {

                }
            }

        }

 

        protected void gvPlatosPendiente_SelectedIndexChanged(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db = new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    db.sp_ActualizaOrdenPlato(int.Parse(gvPlatosPendiente.SelectedRow.Cells[0].Text));
                    Response.Redirect("~/Pages/comanda.aspx",false);
                }
                catch
                {

                }
            }
        }

        protected void gvPlatosPendiente_RowCreated(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                foreach (TableCell cell in e.Row.Cells)
                {
                    cell.CssClass = "gridview-header-cell";
                }
            }
        }
    }
}