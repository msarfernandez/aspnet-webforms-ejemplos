using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presentacion_web.EjemplosConImagen
{
    public partial class PreCargaUrlImagenUpdatePanel : System.Web.UI.Page
    {
        public string urlImagen { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCargar_Click(object sender, EventArgs e)
        {
            urlImagen = txtUrlImagen.Text;
        }

        protected void txtUrlImagen_TextChanged(object sender, EventArgs e)
        {
            urlImagen = txtUrlImagen.Text;
        }
    }
}