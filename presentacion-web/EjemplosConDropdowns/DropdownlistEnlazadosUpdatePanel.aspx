<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DropdownlistEnlazadosUpdatePanel.aspx.cs" Inherits="presentacion_web.Dropdowns.DropdownlistEnlazadosUpdatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
    <%-- Requerido para usar Update Panel --%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <hr />
    <h3>Desplegable desde DB Enlazado + Update Panel</h3>
        <asp:UpdatePanel runat="server">
            <ContentTemplate>
                <div class="row">
                    <div class="col">
                        <asp:Label Text="Tipos" runat="server" />
                        <asp:DropDownList runat="server" ID="ddlTipos" CssClass="btn btn-outline-dark dropdown-toggle" 
                            AutoPostBack="true" OnSelectedIndexChanged="ddlTipos_SelectedIndexChanged">
                        </asp:DropDownList>
                    </div>
                    <div class="col">
                        <asp:Label Text="Pokemons" runat="server" />
                        <asp:DropDownList runat="server" ID="ddlPokemonsFiltrados" CssClass="btn btn-outline-dark dropdown-toggle">
                        </asp:DropDownList>
                    </div>
                </div>
            </ContentTemplate>
        </asp:UpdatePanel>
        <hr />
</asp:Content>
