<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="crear_usuario.aspx.cs" Inherits="OCS.Pages.crear_usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <h2>Crear usuario</h2>
    <br />
    <br />
    <div class="cu">
    <asp:Label ID="lblNombre" runat="server" Text="Nombre completo:" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
    <asp:TextBox ID="txtNombre" runat="server" Width="300px" Font-Size="Medium"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfNombre" runat="server" ErrorMessage="*" ControlToValidate="txtNombre" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblRelleno1" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
    <asp:CustomValidator ID="cvNombre" runat="server" ErrorMessage="Longitud máxima 25 caracteres" ControlToValidate="txtNombre" OnServerValidate="cvnombre_ServerValidate"></asp:CustomValidator>
    <br />
    
    <asp:Label ID="lblIdentificacion" runat="server" Text="N° de Identificación:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtIdentificacion" runat="server" Width="300px" Font-Size="Medium"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfCedula" runat="server" ErrorMessage="*" ControlToValidate="txtIdentificacion" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblRelleno2" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
    <asp:CustomValidator ID="cvIdentificacion" runat="server" ErrorMessage="Longitud máxima 25 caracteres" ControlToValidate="txtIdentificacion" OnServerValidate="cvcedula_ServerValidate"></asp:CustomValidator>
    
    <br />
    <asp:Label ID="lblCelular" runat="server" Text="N° celular:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtCelular" runat="server" Width="300px" Font-Size="Medium"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfCelular" runat="server" ErrorMessage="*" ControlToValidate="txtCelular" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblRelleno3" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
    <asp:CustomValidator ID="cvCelular" runat="server" ErrorMessage="Longitud máxima 8 caracteres" ControlToValidate="txtCelular" OnServerValidate="cvcelular_ServerValidate"></asp:CustomValidator>

    <br />
    <asp:Label ID="lblEmail" runat="server" Text="Correo electrónico:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
    <asp:TextBox ID="txtEmail" runat="server" Width="300px" Font-Size="Medium"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfEmail" runat="server" ErrorMessage="*" ControlToValidate="txtEmail" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblRelleno4" runat="server" Font-Size="Large" Width="175px" CssClass="labels_form"></asp:Label>
    <asp:CustomValidator ID="CustomValidator1" runat="server" ErrorMessage="Longitud máxima 50 caracteres" ControlToValidate="txtEmail" OnServerValidate="cvemail_ServerValidate"></asp:CustomValidator>
    

    <br />
    <asp:Label ID="lblRol" runat="server" Text="Perfil:" Font-Size="Large" Width="175px" CssClass="labels_form" ></asp:Label>
        <asp:DropDownList ID="ddRoles" runat="server" Font-Size="Medium" Width="300px" Height="29px" >
            <asp:ListItem></asp:ListItem>
            <asp:ListItem Value="admin" >Administrador</asp:ListItem>
            <asp:ListItem Value="mesero">Mesero</asp:ListItem>
            <asp:ListItem Value="capitan">Capitán</asp:ListItem>
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rvRol" runat="server" ErrorMessage="*" ControlToValidate="ddRoles" ForeColor="red" Font-Size="X-Large"></asp:RequiredFieldValidator>
    </div>
    <br />
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />

    <asp:Button ID="bntCancelar" runat="server" Text="<< Regresar" CausesValidation="false" OnClick="bntCancelar_Click" />
    
    <br />
    <br />


     <script>
        function mostrarMensajeOK() {
        alert('Proceso finalizado satisfactoriamente');
        }

        function mostrarMensajeError() {
            alert('Usuario ya existe');
         }

         function mostrarMensajeError2() {
             alert('No se envió el correo');
         }
     </script>
</asp:Content>
