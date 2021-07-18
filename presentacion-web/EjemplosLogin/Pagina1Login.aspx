<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Pagina1Login.aspx.cs" Inherits="presentacion_web.EjemplosLogin.Pagina1Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <h1>Hola!</h1>
            <p>Pudiste entrar acá porque te logueaste.</p>
            <p>
                <a href="../EjemplosLogin/MenuLogin1Ejemplo.aspx" class="btn btn-primary">Regresar</a>
        </div>
    </div>
</asp:Content>
