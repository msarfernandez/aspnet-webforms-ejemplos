using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;
using acceso_datos;

namespace negocio
{
    public class TipoNegocio
    {
        public List<Tipo> listar()
        {
            Tipo aux;
            AccesoDatos datos = new AccesoDatos();
            List<Tipo> lista = new List<Tipo>();
            try
            {

                datos.setearQuery("Select Id, Descripcion From TIPOS");
                datos.ejecutarLector();

                while (datos.Lector.Read())
                {
                    aux = new Tipo((int)datos.Lector["Id"], (string)datos.Lector["Descripcion"]);
                    lista.Add(aux);
                }
                return lista;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                datos.cerrarConexion();
            }
        }
    }
}
