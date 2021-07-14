using System;
using System.Collections.Generic;
using dominio;
using negocio;

namespace presentacion_web.Dropdowns
{
    public partial class DropdownlistSeleccionarElemento : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			TipoNegocio negocioTipo = new TipoNegocio();
			try
			{
				if (!IsPostBack)
				{
					List<Tipo> listaTipos = negocioTipo.listar();

					//configuro de tipos para preseleccionar
					ddlTipoPreseleccionado.DataSource = listaTipos;
					ddlTipoPreseleccionado.DataTextField = "Descripcion";
					ddlTipoPreseleccionado.DataValueField = "Id";
					ddlTipoPreseleccionado.DataBind();
				}
			}
			catch (Exception ex)
			{
				throw ex;
			}
		}

        protected void btnSeleccionar_Click(object sender, EventArgs e)
        {
			string id = txtIdTipo.Text;

            //opcion 1
            //ddlTipoPreseleccionado.SelectedIndex = -1;
            //ddlTipoPreseleccionado.Items.FindByValue(id).Selected = true;

            //opcion 2
            ddlTipoPreseleccionado.SelectedIndex = ddlTipoPreseleccionado.Items.IndexOf(
			ddlTipoPreseleccionado.Items.FindByValue(id));
		}
    }
}