<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ingresar_orden.aspx.cs" Inherits="OCS.Pages.ingresar_orden" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <br />
    <br />
    <br />
    <br />
    <h2>Ingresar orden</h2>
    <br />
    <br />
    <div class="centrado">
        <table>
            <tr>
                <td style="text-align: right; padding: 10px">
                    <asp:Label ID="lblMesa" runat="server" Text="Mesa:" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <%--<asp:TextBox ID="TextBox1" TextMode="Number" runat="server" Width="275px" Font-Size="Medium" MaxLength="25"></asp:TextBox>--%>
                     <asp:DropDownList ID="ddMesa" runat="server" Width="275px" Height="26px" AppendDataBoundItems="true" AutoPostBack="True" OnSelectedIndexChanged="ddMesa_SelectedIndexChanged">
                        <asp:ListItem Value="0">&lt;Seleccione una mesa&gt;</asp:ListItem>
                    </asp:DropDownList>
                    
                </td>
                               
            </tr>

            <tr>
                <td style="text-align: right; padding: 10px">
                    <asp:Label ID="lblPlato" runat="server" Text="Plato:" Font-Size="Large"></asp:Label>
                </td>
                <td>
                    <%--<asp:TextBox ID="TextBox2" TextMode="Number" runat="server" Width="275px" Font-Size="Medium" MaxLength="25"></asp:TextBox>--%>
                    <asp:DropDownList ID="ddPlato" runat="server" Width="275px" Height="26px" AppendDataBoundItems="true" AutoPostBack="True" Enabled="false" OnSelectedIndexChanged="ddPlato_SelectedIndexChanged">
                        <asp:ListItem Value="0">&lt;Seleccione un plato&gt;</asp:ListItem>
                    </asp:DropDownList>
                </td>
                
            </tr>

            <tr>
                <td style="text-align: right; padding: 10px; vertical-align:top">
                    <asp:Label ID="lblObservaciones" runat="server" Text="Observaciones:" Font-Size="Large" ></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtobservaciones" runat="server" TextMode="MultiLine" Width="275px" Height="26px" Enabled="false" ></asp:TextBox>

                
                </td>
            </tr>

            <tr>
                <td style="text-align: right; padding: 10px">
                    <asp:Label ID="lblCant" runat="server" Text="Cantidad:" Font-Size="Large"></asp:Label>
                </td>

                <td>
                    <asp:TextBox ID="txtCant" TextMode="Number" runat="server" Width="275px" Font-Size="Medium" MaxLength="25" Enabled="false"></asp:TextBox>
                    
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfCant" runat="server" ErrorMessage="*" ControlToValidate="txtCant" ForeColor="red" ></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td></td>
                <td>
                    <asp:RangeValidator ID="rvCant" runat="server" ErrorMessage="Debe ser mayor que 0" MinimumValue="1" MaximumValue="99" ControlToValidate="txtCant"></asp:RangeValidator>
                </td>
            </tr>

            <tr>
                <td>

                </td>
                <td style="padding:10px">
                    <asp:Button ID="btnIngresar" runat="server" Text="Ingresar plato" Width="275px" OnClick="btnIngresar_Click" Enabled="false" />
                </td>
            </tr>

            <tr>
                <td>

                </td>
                <td style="padding:10px">
                    
                </td>
            </tr>

        </table>
        </div>
     
    <div class="centrado">

        <table>
            <tr>
                <td>
                    <asp:GridView ID="gvOrden" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField HeaderText="Mesa" DataField="NUM_MESA" ItemStyle-Width="50px">
                                <ItemStyle Width="50px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Plato" DataField="TITULO" ItemStyle-Width="200px">
                                <ItemStyle Width="200px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Cantidad" DataField="CANTIDAD" ItemStyle-Width="50px">
                                <ItemStyle Width="50px"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField HeaderText="Observaciones" ItemStyle-Width="340px" DataField="observaciones" >
<ItemStyle Width="340px"></ItemStyle>
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>

            <tr style="height:15px">
                <td>
                </td>
            </tr>

            <tr>
                <td>
                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar orden" CssClass="btnEnviar" Enabled="false" OnClick="btnEnviar_Click" CausesValidation="false" />
                    <asp:Button ID="btnCancelar" runat="server" Text="<< Regresar" CssClass="btnCancelar" CausesValidation="false" OnClick="btnCancelar_Click" />
                </td>
            </tr>
        </table>
    </div>
        
    

    <script>

        function mostrarMensajeError1() {
            alert('No se pudo registrar la orden');
        }

        function mostrarMensajeOK() {
            alert('Orden ingresada satisfactoriamente');
        }

    </script>
    

</asp:Content>
