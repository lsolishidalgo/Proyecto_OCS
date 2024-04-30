<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="OCS.Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align: center;">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="lblUsuario" runat="server" Text="Usuario" Font-Size="Large"></asp:Label>
            <br />
            <asp:TextBox ID="txtUsuario" runat="server" Width="19em" Font-Size="Medium"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Label ID="lblPassword" runat="server" Text="Contraseña" Font-Size="Large"></asp:Label>
            <br />
            <asp:TextBox ID="txtPassword" runat="server" Width="19em" Font-Size="Medium"></asp:TextBox>
            <br />
            <asp:Label ID="lblMensaje1" runat="server" Text="Datos incorrectos" Visible="false"></asp:Label>
            <br />
            <asp:Label ID="lblMensaje2" runat="server" Text="Usuario deshabilitado" Visible="false"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar sesión" class="btn btn-primary btn-lg col-3 mx-auto" OnClick="btnIniciarSesion_Click" />
            <br />

    </div>

    <div style="height:150px;">

    </div>

</asp:Content>
