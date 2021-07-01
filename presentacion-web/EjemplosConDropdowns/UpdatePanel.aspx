<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="UpdatePanel.aspx.cs" Inherits="presentacion_web.UpdatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <%-- Requerido para usar Update Panel --%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <hr />
    <h3>Update panel</h3>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="form-group">
                <div class="row">
                    <div class="col">
                        <asp:Label Text="text" runat="server" ID="lblNombre" />
                    </div>
                    <div class="col">
                        <asp:TextBox AutoPostBack="true" runat="server" ID="txtNombre" OnTextChanged="txtNombre_TextChanged" CssClass="form-control" />
                    </div>
                    <div class="col">
                        <asp:Button Text="Aceptar" CssClass="form-control" runat="server" ID="btnAceptar" OnClick="btnAceptar_Click" />
                    </div>
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <hr />
    <div class="row">
        <div class="col">
            <h4>Más ejemplos</h4>
            <p>
                <a href="../EjemplosConDropdowns/DropdownlistEnlazadosUpdatePanel.aspx">Dropdownlist Enlazados con Update Panel</a>
            </p>
            <p>
                <a href="../EjemplosConDropdowns/DropdownlistSeleccionarElemento.aspx">Selección de DropDownList</a>
            </p>
            <p>
                <a href="../EjemplosConImagen/PreCargaUrlImagenUpdatePanel.aspx">Resolver URL Imagen Sin recargar</a>
            </p>

        </div>
    </div>
</asp:Content>
