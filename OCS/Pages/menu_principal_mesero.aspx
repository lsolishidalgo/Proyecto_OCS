<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menu_principal_mesero.aspx.cs" Inherits="OCS.Pages.menu_principal_mesero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <h2>Menú principal</h2>
    <br />
    <br />
    <asp:Button ID="btnIngOrden" runat="server" Text="Ingresar orden" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="btnIngOrden_Click" />
    <br />
    <br />
    <asp:Button ID="btnModOrden" runat="server" Text="Modificar orden" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="btnModOrden_Click" />
    <br />
    <br />
    <asp:Button ID="btnAnularOrden" runat="server" Text="Anular orden" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="btnAnularOrden_Click" />
    <br />
    <br />
    <asp:Button ID="btnFinOrden" runat="server" Text="Finalizar orden" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="btnFinOrden_Click" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
