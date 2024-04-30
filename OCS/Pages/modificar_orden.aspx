<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="modificar_orden.aspx.cs" Inherits="OCS.Pages.modificar_orden" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2>Modificar orden</h2>
    <br />
    <br />

    <asp:Label ID="lblMesa" runat="server" Text="Mesa:" Font-Size="Large" ></asp:Label>
    <asp:DropDownList ID="ddMesa" runat="server" Width="275px" Height="26px" AppendDataBoundItems="true" OnSelectedIndexChanged="ddMesa_SelectedIndexChanged" >
                    <asp:ListItem Value="0">&lt;Seleccione una mesa&gt;</asp:ListItem>
                </asp:DropDownList>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="btnBuscar_Click" />
    <br />
    <br />
    <div class="centrado">
        <asp:GridView ID="gvPlatosOrden" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="gvPlatosOrden_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-Width="50px" />
                <asp:BoundField HeaderText="Plato" DataField="TITULO" ItemStyle-Width="250px" >
<ItemStyle Width="250px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Cantidad" DataField="CANTIDAD" ItemStyle-Width="100px" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Observaciones" DataField="OBSERVACIONES" ItemStyle-Width="300px" >
<ItemStyle Width="300px"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField HeaderText="Estado" DataField="ESTADO" ItemStyle-Width="100px" >
<ItemStyle Width="100px"></ItemStyle>
                </asp:BoundField>
                <asp:CommandField SelectText="Eliminar" ShowSelectButton="True" ItemStyle-HorizontalAlign="Center" ButtonType="Button" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
                </asp:CommandField>
            </Columns>
        </asp:GridView>

    </div>
    <br />
    <br />
    <asp:Button ID="bntRegresar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntRegresar_Click"  />


    <script>
        function mostrarMensajeOK() {
        alert('Registro eliminado satisfactoriamente');
        }

        function mostrarMensajeError1() {
            alert('No se puede eliminar el registro. Plato ya fue atendido');
        }
    </script>

</asp:Content>
