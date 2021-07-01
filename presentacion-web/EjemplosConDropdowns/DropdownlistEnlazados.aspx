<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DropdownlistEnlazados.aspx.cs" Inherits="presentacion_web.DropdownlistEnlazados" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <div class="row">
        <div class="col">
            <h4>DropDownList Enlazados</h4>
        </div>
    </div>
    <div class="row">
        <div class="col">
            <asp:Label Text="Tipos" runat="server" />
            <asp:DropDownList runat="server" ID="ddlTipos" CssClass="btn btn-outline-dark dropdown-toggle" AutoPostBack="true" 
                OnSelectedIndexChanged="ddlTipos_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <div class="col">
            <asp:Label Text="Pokemons" runat="server" />
            <asp:DropDownList runat="server" ID="ddlPokemonsFiltrados" CssClass="btn btn-outline-dark dropdown-toggle">
            </asp:DropDownList>
        </div>
    </div>
</asp:Content>
