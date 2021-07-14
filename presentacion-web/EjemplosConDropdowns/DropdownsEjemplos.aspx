<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DropdownsEjemplos.aspx.cs" Inherits="presentacion_web.DropdownsEjemplos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <hr />
    <div class="row">
        <div class="col">
            <h4>DropDownList Estático</h4>
            <asp:DropDownList CssClass="btn btn-outline-dark dropdown-toggle" ID="ddlColores" runat="server">
                <asp:ListItem Text="Rojo" />
                <asp:ListItem Text="Amarillo" />
                <asp:ListItem Text="Azul" />
            </asp:DropDownList>
        </div>
        <div class="col">
            <h4>DropDownList Desde DB</h4>
            <asp:DropDownList runat="server" ID="ddlPokemons" CssClass="btn btn-outline-dark dropdown-toggle">
            </asp:DropDownList>
        </div>
    </div>
    <hr />
    <div class="row">
        <div class="col">
            <h4>Más ejemplos</h4>
            <p>
                <a href="../EjemplosConDropdowns/DropdownlistEnlazados.aspx">Dropdownlist Enlazados</a>
            </p>
            <p>
                <a href="../EjemplosConDropdowns/UpdatePanel.aspx">Update Panel</a>
            </p>
            <p>
                <a href="../EjemplosConDropdowns/DropdownlistEnlazadosUpdatePanel.aspx">Dropdownlist Enlazados con Update Panel</a>
            </p>
            <p>
                <a href="../EjemplosConDropdowns/DropdownlistSeleccionarElemento.aspx">Selección de elementos</a>
            </p>

        </div>
    </div>

</asp:Content>
