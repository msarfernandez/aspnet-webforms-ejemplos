using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using dominio;
using acceso_datos;

namespace negocio
{
    public class PokemonNegocio
    {
        public List<Pokemon> listarConSP()
        {
            List<Pokemon> lista = new List<Pokemon>();
            Pokemon aux;
            AccesoDatos datos = new AccesoDatos();
            try
            {
                datos.setearSP("spListar");
                datos.ejecutarLector();
                while (datos.Lector.Read())
                {
                    aux = new Pokemon();
                    aux.Id = datos.Lector.GetInt32(0);
                    aux.Nombre = datos.Lector.GetString(1);
                    aux.Descripcion = datos.Lector.GetString(2);
                    aux.Tipo = new Tipo();
                    aux.Tipo.Id = (int)datos.Lector["idTipo"];
                    aux.Tipo.Descripcion = (string)datos.Lector["Descripcion"];
                    aux.UrlImagen = (string)datos.Lector["UrlImagen"];
                    if (!Convert.IsDBNull(datos.Lector["idEvol"]))
                    {
                        aux.Evolucion = new Pokemon();
                        aux.Evolucion.Id = (int)datos.Lector["idEvol"];
                        aux.Evolucion.Nombre = datos.Lector["nomEvol"].ToString();
                    }

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
                datos = null;
            }

        }
    }
}
