<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="comanda.aspx.cs" Inherits="OCS.Pages.comanda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <br />
    <br />
    <h2>Comanda</h2>
    <br />
    <br />
    <div class="centrado"> 
    <asp:GridView ID="gvPlatosPendiente" runat="server" AutoGenerateColumns="False" Width="609px" ShowHeaderWhenEmpty="True" OnSelectedIndexChanged="gvPlatosPendiente_SelectedIndexChanged" OnRowCreated="gvPlatosPendiente_RowCreated" >
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-Width="45px" >
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="N° mesa" DataField="NUM_MESA" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Cantidad" DataField="CANTIDAD" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField HeaderText="Plato" DataField="TITULO" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:BoundField DataField="OBSERVACIONES" HeaderText="Observaciones" />
            <asp:BoundField HeaderText="Fecha y hora de registro" DataField="FECHA_CREACION" ItemStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" >        
<HeaderStyle HorizontalAlign="Center"></HeaderStyle>

<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:BoundField>
            <asp:CommandField SelectText="Finalizar" ShowSelectButton="True" ItemStyle-HorizontalAlign="Center" ButtonType="Button" >
<ItemStyle HorizontalAlign="Center"></ItemStyle>
            </asp:CommandField>
            
        </Columns>
        
    </asp:GridView>

        </div>

    <meta http-equiv="refresh" content="5">

</asp:Content>
