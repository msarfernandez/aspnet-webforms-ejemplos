<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PreCargaUrlImagenUpdatePanel.aspx.cs" Inherits="presentacion_web.EjemplosConImagen.PreCargaUrlImagenUpdatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <%-- Requerido para usar Update Panel --%>
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <hr />
    <h3>Imagen Rapido</h3>
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
            <div class="mb-3 row">
                <div class="col">
                    <asp:TextBox runat="server" ID="txtUrlImagen" CssClass="form-control"
                        AutoPostBack="true" OnTextChanged="txtUrlImagen_TextChanged" />
                </div>
                <div class="col">
                    <asp:Button Text="Cargar" runat="server" ID="btnCargar" CssClass="btn btn-primary"
                        OnClick="btnCargar_Click" />
                </div>
            </div>
            <div class="mb-3 row">
                <div class="col">
                    <img src="<% = urlImagen %>" alt="Alternate Text" width="50%" />
                </div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
