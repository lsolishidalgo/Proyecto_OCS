<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menu_admin_usuarios.aspx.cs" Inherits="OCS.Pages.menu_admin_usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2>Administración de usuarios</h2>
    <br />
    <br />
    <asp:Button ID="btnIngUsuario" runat="server" Text="Crear usuario" class="btn btn-primary btn-lg col-3 mx-auto" width="950px" OnClick="btnIngUsuario_Click" />
    <br />
    <br />
    <asp:Button ID="btnReiniciarPassword" runat="server" Text="Reiniciar contraseña" class="btn btn-primary btn-lg col-4 mx-auto" width="300px" OnClick="btnReiniciarPassword_Click" />
    <br />
    <br />
    <asp:Button ID="bntHabDesUsuario" runat="server" Text="Habilitar/Deshabilitar usuario" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="bntHabDesUsuario_Click" />
    <br />
    <br />
    <asp:Button ID="btnRegresar" runat="server" Text="<< Regresar" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="btnRegresar_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

</asp:Content>
