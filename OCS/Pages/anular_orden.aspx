<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="anular_orden.aspx.cs" Inherits="OCS.Pages.anular_orden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <br />
    <br />
    <br />
    <br />
    <h2>Anular orden</h2>
    <br />
    <br />

    <asp:Label ID="lblMesa" runat="server" Text="Mesa:" Font-Size="Large" ></asp:Label>
    <asp:DropDownList ID="ddMesa" runat="server" Width="275px" Height="26px" AppendDataBoundItems="true" >
                    <asp:ListItem Value="0">&lt;Seleccione una mesa&gt;</asp:ListItem>
                </asp:DropDownList>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="btnBuscar_Click"/>
    <br />
    <br />
    <div class="centrado">
        <asp:GridView ID="gvPlatosOrden" runat="server" AutoGenerateColumns="False" >
            <Columns>
                <asp:BoundField DataField="TITULO" HeaderText="Plato" ItemStyle-Width="300px" />
                <asp:BoundField DataField="CANTIDAD" HeaderText="Cantidad" ItemStyle-Width="75px" />
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />
    <asp:Button ID="btnAnularOrden" runat="server" Text="Anular orden" CausesValidation="false" Visible="false" OnClick="btnAnularOrden_Click" />
    <asp:Button ID="bntRegresar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntRegresar_Click"  />

    <script>
        function mostrarMensajeOK() {
        alert('Orden anulada satisfactoriamente');
        }

        function mostrarMensajeError1() {
            alert('Orden no puede ser anulada, tiene platos en proceso');
        }

        function mostrarMensajeError2() {
            alert('Se debe seleccionar una mesa');
        }
    </script>
</asp:Content>
