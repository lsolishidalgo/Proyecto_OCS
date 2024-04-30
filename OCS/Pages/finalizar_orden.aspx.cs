using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OCS.Data;


namespace OCS.Pages
{
    public partial class finalizar_orden : System.Web.UI.Page
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
                    string script = @"
        <script>
            function incluirFechaYImprimir() {
                var fechaActual = new Date();
                var dia = fechaActual.getDate();
                var mes = fechaActual.getMonth() + 1; // Los meses son indexados desde 0
                var año = fechaActual.getFullYear();
                var horas = fechaActual.getHours();
                var minutos = fechaActual.getMinutes();
                var segundos = fechaActual.getSeconds();

                // Formatear la fecha como DD/MM/YYYY
                var fechaFormateada = (dia < 10 ? '0' : '') + dia + '/' + (mes < 10 ? '0' : '') + mes + '/' + año;

                // Formatear la hora como HH:MM:SS
                var horaFormateada = (horas < 10 ? '0' : '') + horas + ':' + (minutos < 10 ? '0' : '') + minutos + ':' + (segundos < 10 ? '0' : '') + segundos;

                // Concatenar fecha y hora
                var fechaYHoraFormateada = fechaFormateada + ' ' + horaFormateada;

                // Asignar la fecha formateada al TextBox
                document.getElementById('" + txtfechahora.ClientID + @"').value = fechaYHoraFormateada;
            }

            incluirFechaYImprimir();
        </script>";

                    ClientScript.RegisterStartupScript(this.GetType(), "incluirFechaScript", script, false);

                    txtMesa.Text = ddMesa.SelectedValue;
                    var idOrden = db.sp_ConsultaIdOrden(int.Parse(ddMesa.SelectedValue)).ToList();


                    var listaPlatos = db.sp_TotalesLineas(idOrden[0].Value);
                    gvPlatos.DataSource = listaPlatos;
                    gvPlatos.DataBind();

                    var resultados = db.sp_TotalFactura(idOrden[0].Value).ToList();
                    var primerResultado = resultados.First();
                    txtTotal.Text = primerResultado.ToString();



                    btnImprimir.Enabled = true;
                    

                    //txtTotal.Text = db.sp_TotalFactura(idOrden[0].Value).ToList().ToString();

                }
                catch
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "mostrarMensajeError1", "mostrarMensajeError1();", true);
                }
            }
            // Llamar al script JavaScript desde el lado del servidor
            

        }

        protected void bntRegresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Pages/menu_principal_mesero.aspx", false);
        }

        protected void btnImprimir_Click(object sender, EventArgs e)
        {
            using(Proyecto_OCS_IngSoftwareEntities db=new Proyecto_OCS_IngSoftwareEntities())
            {
                try
                {
                    var idOrden = db.sp_ConsultaIdOrden(int.Parse(ddMesa.SelectedValue)).ToList();
                    db.sp_FinalizarOrden(idOrden[0].Value);
                }
                catch
                {

                }
            }
            
        }
    }
}