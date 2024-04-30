<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="habilitar_deshabilitar_mesa.aspx.cs" Inherits="OCS.Pages.habilitar_deshabilitar_mesa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <br />
    <br />
    <br />
    <br />
    <h2>Habilitar/Deshabilitar mesa</h2>
    <br />
    <br />
     
    <asp:Label ID="lblMesa" runat="server" Text="Mesa:" Font-Size="Large" ></asp:Label>
    <asp:DropDownList ID="ddMesa" runat="server" Width="275px" Height="26px" AppendDataBoundItems="true">
                    <asp:ListItem Value="0">&lt;Seleccione una mesa&gt;</asp:ListItem>
                </asp:DropDownList>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="btnBuscar_Click" />
    <br />
    <br />
    <br />
  
    <div class="cu2">
    <asp:Label ID="lblCantMax" runat="server" Text="Cantidad de personas:" Font-Size="Large" Width="200px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtCantMax" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblEstado" runat="server" Text="Estado:" Font-Size="Large" Width="200px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtEstado" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    </div>
         <br />
    <br />
    <asp:Button ID="btnCambiarEstado" runat="server" Text="Cambiar estado" enabled="false" OnClick="btnCambiarEstado_Click" />
    <asp:Button ID="bntRegresar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntRegresar_Click"   />

    <script>

         function mostrarMensajeError1() {
             alert('Debe seleccionar una mesa');
        }

        function mostrarMensajeOK() {
            alert('Proceso finalizado satisfactoriamente');
        }

    </script>

</asp:Content>
