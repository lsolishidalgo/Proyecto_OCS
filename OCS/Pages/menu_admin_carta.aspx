<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menu_admin_carta.aspx.cs" Inherits="OCS.Pages.menu_admin_carta" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2>Administración de la carta</h2>
    <br />
    <br />
    <asp:Button ID="btnIngPlato" runat="server" Text="Ingresar plato" class="btn btn-primary btn-lg col-3 mx-auto" width="950px" OnClick="btnIngPlato_Click" />
    <br />
    <br />
    <asp:Button ID="btnModPlato" runat="server" Text="Modificar plato" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="btnModPlato_Click" />
    <br />
    <br />
    <asp:Button ID="bntHabDesPlato" runat="server" Text="Habilitar/Deshabilitar plato" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="bntHabDesPlato_Click" />
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
