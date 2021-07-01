using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace presentacion_web
{
    public partial class UpdatePanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtNombre_TextChanged(object sender, EventArgs e)
        {
            //actualizo label cuando el texto ha sido cambiado. Se dispara al salir de la caja de texto.
            //si tiene updatepanel como ahora, Y con autopostback en true, se actualiza al salir de la caja.
            //SINO, se actualiza al realizarse algun postbback, por ejemplo un click en un boton.
            lblNombre.Text = txtNombre.Text;
        }

        protected void btnAceptar_Click(object sender, EventArgs e)
        {
            //evento normal de click, tira postback. Actualiza la caja de texto.
            //en este caso esta dentro de un update panel por eso solo actualiza eso.
            txtNombre.Text = "texto cambiado desde el back";
        }
    }
}