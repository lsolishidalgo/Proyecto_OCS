<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="menu_admin_mesas.aspx.cs" Inherits="OCS.Pages.menu_admin_mesas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
    <br />
    <br />
    <h2>Administración de mesas</h2>
    <br />
    <br />
    <asp:Button ID="btnIngMesa" runat="server" Text="Ingresar mesa" class="btn btn-primary btn-lg col-3 mx-auto" width="950px" OnClick="btnIngMesa_Click" />
    <br />
    <br />
    <asp:Button ID="bntHabDesMesa" runat="server" Text="Habilitar/Deshabilitar mesa" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="bntHabDesMesa_Click" />
    <br />
    <br />
    <asp:Button ID="btnRegresar" runat="server" Text="<< Regresar" class="btn btn-primary btn-lg col-3 mx-auto" width="300px" OnClick="btnRegresar_Click" />
    <br />
    <br />
    <h4>Listado de mesas registradas</h4>
   
    <div class="centrado">
    <asp:GridView ID="gvListaMesas" runat="server" AutoGenerateColumns="False" Width="348px" >
        <Columns>
            <asp:BoundField DataField="NumeroMesa" HeaderText="N° de mesa" />
            <asp:BoundField DataField="CantidadMaximaPersonas" HeaderText="Cant. máx. de personas" />
            <asp:BoundField DataField="Estado" HeaderText="Estado" />
        </Columns>
    </asp:GridView>
    <br />
    </div>
    <br />
    <br />
    <br />
    <br />

</asp:Content>
