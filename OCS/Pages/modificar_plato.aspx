<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="modificar_plato.aspx.cs" Inherits="OCS.Pages.modificar_plato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2>Modificar plato</h2>
    <br />
    <br />
     
    <asp:Label ID="lblPlato" runat="server" Text="Plato:" Font-Size="Large" ></asp:Label>
    <asp:DropDownList ID="ddPlato" runat="server" Width="275px" Height="26px" AppendDataBoundItems="true">
                    <asp:ListItem Value="0">&lt;Seleccione un plato&gt;</asp:ListItem>
                </asp:DropDownList>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="btnBuscar_Click" CausesValidation="false" />
    
    <br />
    <br />
    <br />
    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:" Font-Size="Large" Width="100px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtDescripcion" runat="server" Width="300px" Font-Size="Medium"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfDescripcion" runat="server" ErrorMessage="*" ControlToValidate="txtDescripcion" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblPrecio" runat="server" Text="Precio:" Font-Size="Large" Width="100px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtPrecio" runat="server" Width="300px" Font-Size="Medium" Enabled="true"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rvPrecio" runat="server" ErrorMessage="*" ControlToValidate="txtPrecio" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Label ID="lblEstado" runat="server" Text="Estado:" Font-Size="Large" Width="100px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtEstado" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rvEstado" runat="server" ErrorMessage="*" ControlToValidate="txtEstado" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <br />
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" Enabled="False" OnClick="btnGuardar_Click"  />
    <asp:Button ID="bntRegresar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntRegresar_Click" />


    <script>

         function mostrarMensajeError1() {
             alert('Debe seleccionar un plato');
        }

        function mostrarMensajeOK() {
            alert('Proceso finalizado satisfactoriamente');
        }

        function mostrarMensajeError2() {
            alert('Existen campos pendientes de completar');
        }

    </script>
</asp:Content>
