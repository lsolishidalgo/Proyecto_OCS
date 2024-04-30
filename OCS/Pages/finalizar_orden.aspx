<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="finalizar_orden.aspx.cs" Inherits="OCS.Pages.finalizar_orden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2>Finalizar orden</h2>
    <br />
    <br />

    <asp:Label ID="lblMesa" runat="server" Text="Mesa:" Font-Size="Large" ></asp:Label>
    <asp:DropDownList ID="ddMesa" runat="server" Width="275px" Height="26px" AppendDataBoundItems="true" >
                    <asp:ListItem Value="0">&lt;Seleccione una mesa&gt;</asp:ListItem>
                </asp:DropDownList>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="btnBuscar_Click" />
    <br />
    <br />
    <br />
   
    <div class="centrado">
        <table id="miTabla" style="border-style:solid" >
            
            <tr>
                <td style="padding-top:25px">Fecha y hora: </td>
                <td style="padding-top:25px"><asp:TextBox ID="txtfechahora" runat="server" BorderStyle="None" ></asp:TextBox></td>
            </tr>
            <tr>
                <td>N° de mesa: </td>
                <td><asp:TextBox ID="txtMesa" runat="server" BorderStyle="None"></asp:TextBox></td>
            </tr>
            
            <tr>
                <td colspan="2" style="padding:25px">
                    <asp:GridView ID="gvPlatos" runat="server" AutoGenerateColumns="False" BorderStyle="None" >
                        <Columns>
                            <asp:BoundField HeaderText="Cant." ItemStyle-Width="50px" DataField="CANTIDAD" >
<ItemStyle Width="50px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Plato" ItemStyle-Width="250px" DataField="TITULO" >
<ItemStyle Width="250px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Total" ItemStyle-Width="50px" DataField="total_linea"  >
<ItemStyle Width="50px"></ItemStyle>
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>

           
            <tr>
                <td style="padding-left:25px; padding-right:25px; padding-bottom:25px">Total a pagar:</td>
                <td style="padding-left:25px; padding-right:25px; padding-bottom:25px">
                    <asp:TextBox ID="txtTotal" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
    </div>

    <br />
    <asp:Button ID="btnImprimir" runat="server" Text="Imprimir" Width="100px" Enabled="false" OnClientClick="imprimirTabla()" OnClick="btnImprimir_Click" />
    <asp:Button ID="bntRegresar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntRegresar_Click"  />

    <script>
        function imprimirTabla() {
            
            var contenidoTabla = document.getElementById('miTabla').outerHTML;
            var ventanaImpresion = window.open('', '_blank');
            ventanaImpresion.document.write('<html><head><title>Recibo para pago</title></head><body>');
            ventanaImpresion.document.write(contenidoTabla);
            ventanaImpresion.document.write('</body></html>');
            ventanaImpresion.document.close();
            ventanaImpresion.print();
           
        }
    </script>

    <script>
        function mostrarMensajeOK() {
            alert('Orden anulada satisfactoriamente');
        }

        function mostrarMensajeError1() {
            alert('La orden presenta platos por atender');
        }

    </script>

</asp:Content>
