<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresar_plato.aspx.cs" Inherits="OCS.Pages.ingresar_plato" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <h2>Ingresar plato</h2>
    <br />
    <br />
    <div class="cu">
    <asp:Label ID="lblNombre" runat="server" Text="Nombre del plato:" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" Width="300px" Font-Size="Medium" MaxLength="25"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfNombre" runat="server" ErrorMessage="*" ControlToValidate="txtNombre" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblRelleno1" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
    <asp:CustomValidator ID="cvNombre" runat="server" ErrorMessage="Longitud máxima 25 caracteres" ControlToValidate="txtNombre" OnServerValidate="cvnombre_ServerValidate"></asp:CustomValidator>
    <br />
    
    <asp:Label ID="lblDescripcion" runat="server" Text="Descripión del plato:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtDescripcion" runat="server" Width="300px" Font-Size="Medium" MaxLength="100" ></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfDescripcion" runat="server" ErrorMessage="*" ControlToValidate="txtDescripcion" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblRelleno2" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
    <asp:CustomValidator ID="cvDescripcion" runat="server" ErrorMessage="Longitud máxima 100 caracteres" ControlToValidate="txtDescripcion" OnServerValidate="cvdescripcion_ServerValidate" ></asp:CustomValidator>
    <br />
    <asp:Label ID="lblPrecio" runat="server" Text="Precio:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtPrecio" runat="server" Width="300px" Font-Size="Medium"  ></asp:TextBox>
       
    <asp:RequiredFieldValidator ID="rfPrecio" runat="server" ErrorMessage="*" ControlToValidate="txtPrecio" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblRelleno3" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>

    </div>
    
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

    <asp:Button ID="bntCancelar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntCancelar_Click" />

     <script>
        function mostrarMensajeOK() {
        alert('Proceso finalizado satisfactoriamente');
         }

         function mostrarMensajeError() {
             alert('Error, inténtelo nuevamente');
         }

      
     </script>
</asp:Content>
