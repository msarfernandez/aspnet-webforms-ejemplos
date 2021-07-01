<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DropdownlistSeleccionarElemento.aspx.cs" Inherits="presentacion_web.Dropdowns.DropdownlistSeleccionarElemento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <hr />
    <h3>Desplegable pre seleccionado</h3>
    <div class="mb-3 row">
        <asp:Label Text="ID" runat="server" class="col-sm-1 col-form-label" />
        <div class="col-sm-5">
            <asp:TextBox runat="server" ID="txtIdTipo" CssClass="form-control" />
        </div>
        <div class="col">
            <asp:Label Text="Tipo Preseleccionado" runat="server" class="form-label" />
            <asp:DropDownList runat="server" ID="ddlTipoPreseleccionado" CssClass="btn btn-outline-dark dropdown-toggle">
            </asp:DropDownList>
        </div>
    </div>
    <div class="mb-3 row">
        <div class="col">
            <asp:Button Text="Aceptar" runat="server" CssClass="btn btn-primary" ID="btnSeleccionar" OnClick="btnSeleccionar_Click" />
        </div>
    </div>
</asp:Content>
