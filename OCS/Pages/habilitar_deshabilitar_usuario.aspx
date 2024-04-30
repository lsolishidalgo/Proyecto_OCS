<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="habilitar_deshabilitar_usuario.aspx.cs" Inherits="OCS.Pages.habilitar_deshabilitar_usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <h2>Habilitar/Deshabilitar usuario</h2>
    <br />
    <br />
     
    <asp:Label ID="lblIdentificacion" runat="server" Text="N° de Identificación:" Font-Size="Large" Width="175px" ></asp:Label>
    <asp:TextBox ID="txtIdentificacion" runat="server" Width="300px" Font-Size="Medium"></asp:TextBox>
    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Width="100px" OnClick="btnBuscar_Click" />
    <br />
    
    <asp:Label ID="lblRelleno1" runat="server"  Font-Size="Large" Width="175px" ></asp:Label>
    <asp:RequiredFieldValidator ID="rfCedula" runat="server" ErrorMessage="Usuario no válido" ControlToValidate="txtIdentificacion" Width="300px" CssClass="alignl" ></asp:RequiredFieldValidator>
       <asp:Label ID="lblRelleno2" runat="server"  Font-Size="Large" Width="80px" ></asp:Label>
    <br />
    <br />
    <asp:Label ID="lblNombre" runat="server" Text="Nombre:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Email:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="lblEstado" runat="server" Text="Estado:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtEstado" runat="server" Width="300px" Font-Size="Medium" Enabled="False"></asp:TextBox>
    <br />
    <br />
    <asp:Button ID="btnCambiarEstado" runat="server" Text="Cambiar estado" OnClick="btnCambiarEstado_Click" Enabled="false" />
    <asp:Button ID="bntRegresar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntRegresar_Click"  />


    <script>
        function mostrarMensajeOK() {
        alert('Proceso finalizado satisfactoriamente');
        }

        function mostrarMensajeError1() {
            alert('Usuario no existe');
        }

        function mostrarMensajeError2() {
            alert('Inténtelo nuevamente');
        }
    </script>

</asp:Content>
