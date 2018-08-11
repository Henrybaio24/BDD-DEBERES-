using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CapaDatos
{
    public class Conexion
    {
        private SqlConnection Con = new SqlConnection("server=PAULM-PC; database=Practica ; integrated security = true");

        public SqlConnection AbrirConexion()
        {
            if (Con.State == ConnectionState.Closed)
                Con.Open();
            return Con;
        }

        public SqlConnection CerrarConexion()
        {
            if (Con.State == ConnectionState.Open)
                Con.Close();
            return Con;
        }
    }
}
