<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="habilitar_deshabilitar_plato.aspx.cs" Inherits="OCS.Pages.habilitar_deshabilitar_plato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2>Habilitar/Deshabilitar plato</h2>
    <br />
    <br />
     
    <asp:Label ID="lblPlato" runat="server" Text="Plato:" Font-Size="Large" ></asp:Label>
    <asp:DropDownList ID="ddPlato" runat="server" Width="275px" Height="26px" AppendDataBoundItems="true">
                    <asp:ListItem Value="0">&lt;Seleccione un plato&gt;</asp:ListItem>
                </asp:DropDownList>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100px" CausesValidation="false" OnClick="btnBuscar_Click" />
    <br />
    <br />
    <br />
    <asp:Label ID="lblNombre" runat="server" Text="Nombre:" Font-Size="Large" Width="100px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblDescripcion" runat="server" Text="Descripción:" Font-Size="Large" Width="100px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtDescripcion" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblPrecio" runat="server" Text="Precio:" Font-Size="Large" Width="100px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtPrecio" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblEstado" runat="server" Text="Estado:" Font-Size="Large" Width="100px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtEstado" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnCambiarEstado" runat="server" Text="Cambiar estado" Enabled="false" OnClick="btnCambiarEstado_Click" />
    <asp:Button ID="bntRegresar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntRegresar_Click"  />


    <script>

         function mostrarMensajeError1() {
             alert('Debe seleccionar un plato');
        }

        function mostrarMensajeOK() {
            alert('Proceso finalizado satisfactoriamente');
        }

    </script>

</asp:Content>



