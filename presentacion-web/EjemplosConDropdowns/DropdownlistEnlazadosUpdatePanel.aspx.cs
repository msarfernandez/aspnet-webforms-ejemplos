using System;
using System.Collections.Generic;
using dominio;
using negocio;

namespace presentacion_web.Dropdowns
{
    public partial class DropdownlistEnlazadosUpdatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio negocio = new PokemonNegocio();
            TipoNegocio negocioTipo = new TipoNegocio();
            try
            {
                if (!IsPostBack)
                {
                    //obtengo datos y los guardo en sesión.
                    List<Pokemon> listaPokemon = negocio.listarConSP();
                    Session["listaPokemon"] = listaPokemon;

                    //configuro desplegable POKEMONS desde db pero solo lo cargo
                    //ddlPokemonsFiltrados.DataSource = listaPokemon;
                    //ddlPokemonsFiltrados.DataBind();

                    List<Tipo> listaTipos = negocioTipo.listar();

                    //configuro desplegable TIPOS desde db con id y desc
                    ddlTipos.DataSource = listaTipos;
                    ddlTipos.DataTextField = "Descripcion";
                    ddlTipos.DataValueField = "Id";
                    ddlTipos.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
            }
        }

        protected void ddlTipos_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                int id = int.Parse(ddlTipos.SelectedItem.Value);
                ddlPokemonsFiltrados.DataSource = ((List<Pokemon>)Session["listaPokemon"]).FindAll(x => x.Tipo.Id == id);
                ddlPokemonsFiltrados.DataBind();
            }
        }
    }
}