using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using negocio;

namespace presentacion_web
{
    public partial class DropdownsEjemplos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PokemonNegocio pokemonNegocio = new PokemonNegocio();
            try
            {
                if (!IsPostBack)
                {
                    // desplegable desde DB
                    ddlPokemons.DataSource = pokemonNegocio.listarConSP();
                    ddlPokemons.DataBind();
                }
            }
            catch (Exception ex)
            {
                Session.Add("error", ex);
            }
        }
    }
}