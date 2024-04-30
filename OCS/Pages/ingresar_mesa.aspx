<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresar_mesa.aspx.cs" Inherits="OCS.Pages.ingresar_mesa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2>Ingresar mesa</h2>
    <br />
    <br />
    <div class="cu2">
    <asp:Label ID="lblNumMesa" runat="server" Text="Número de mesa:" Font-Size="Large" Width="200px" CssClass="labels_form"></asp:Label>
    <asp:TextBox ID="txtNumMesa" TextMode="Number" runat="server" Width="300px" Font-Size="Medium" MaxLength="25"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfNumMesa" runat="server" ErrorMessage="*" ControlToValidate="txtNumMesa" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblRelleno1" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
   
    <br />
    <asp:Label ID="lblCantMax" runat="server" Text="Cantidad de personas:" Font-Size="Large" Width="200px" CssClass="labels_form"></asp:Label>
    <asp:TextBox ID="txtCantMax" TextMode="Number" runat="server" Width="300px" Font-Size="Medium" MaxLength="25"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfCantMax" runat="server" ErrorMessage="*" ControlToValidate="txtCantMax" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    
    <br />
    <asp:Label ID="lblRelleno3" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>

    </div>
    
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" style="height: 26px" />

    <asp:Button ID="bntCancelar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntCancelar_Click" />

    <script>
        function mostrarMensajeOK() {
        alert('Proceso finalizado satisfactoriamente');
         }

         function mostrarMensajeError1() {
             alert('Error, inténtelo nuevamente');
         }

      
    </script>

</asp:Content>
