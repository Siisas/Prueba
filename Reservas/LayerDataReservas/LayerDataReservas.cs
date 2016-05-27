using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace LayerData
{
    //prueba
    public class LayerDataReservas
    {

        public string strconn = @"Data Source=DESKTOP-2U5V8SM;Initial Catalog=BDReserva;Integrated Security=True";
        public LayerDataReservas() { }

        public int InsertarReserva(Int64 Id, string NombreSolicitante, string ElementoAPrestar, DateTime FechaPrestao, string Observaciones, DateTime fechadevolucion)
        {
            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                cnx.Open();
                SqlCommand Ordensql = new SqlCommand("SpInsertarReserva", cnx);
                Ordensql.CommandType = CommandType.StoredProcedure;

                try
                {
                    Ordensql.Parameters.AddWithValue("@Id", Id);
                    Ordensql.Parameters.AddWithValue("@NombreSolicitante", NombreSolicitante);
                    Ordensql.Parameters.AddWithValue("@ElementoAPrestar", ElementoAPrestar);
                    Ordensql.Parameters.AddWithValue("@FechaPrestao", FechaPrestao);
                    Ordensql.Parameters.AddWithValue("@Observaciones", Observaciones);
                    Ordensql.Parameters.AddWithValue("@fechadevolucion", fechadevolucion);
                    return Ordensql.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    cnx.Close();
                    cnx.Dispose();
                    Ordensql.Dispose();
                }
            }
        }
        public DataTable MostarReserva()
        {
            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                cnx.Open();
                SqlDataAdapter dAd = new SqlDataAdapter("SpMostarReserva", cnx);
                dAd.SelectCommand.CommandType = CommandType.StoredProcedure;
                DataSet ds = new DataSet();

                try
                {
                    dAd.Fill(ds, "Table");
                    return ds.Tables["Table"];
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    cnx.Close();
                    cnx.Dispose();
                    dAd.Dispose();
                    ds.Dispose();
                }
            }
        }

        public int EditarReserva(Int64 Id, string NombreSolicitante, string ElementoAPrestar, DateTime FechaPrestao, string Observaciones, DateTime fechadevolucion)
        {
            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                cnx.Open();
                SqlCommand Ordensql = new SqlCommand("SpEditarReserva", cnx);
                Ordensql.CommandType = CommandType.StoredProcedure;
                try
                {
                    Ordensql.Parameters.AddWithValue("@Id", Id);
                    Ordensql.Parameters.AddWithValue("@NombreSolicitante", NombreSolicitante);
                    Ordensql.Parameters.AddWithValue("@ElementoAPrestar", ElementoAPrestar);
                    Ordensql.Parameters.AddWithValue("@FechaPrestao", FechaPrestao);
                    Ordensql.Parameters.AddWithValue("@Observaciones", Observaciones);
                    Ordensql.Parameters.AddWithValue("@fechadevolucion", fechadevolucion);
                    return Ordensql.ExecuteNonQuery();

                }
                catch (Exception)
                {
                    throw;

                }
                finally
                {
                    cnx.Close();
                    cnx.Dispose();
                    Ordensql.Dispose();
                }
            }
        }
        public int EliminarReserva(Int64 Id)
        {
            using (SqlConnection cnx = new SqlConnection(strconn))
            {
                cnx.Open();
                SqlCommand OrdenSql = new SqlCommand("SpEliminarReserva", cnx);
                OrdenSql.CommandType = CommandType.StoredProcedure;
                try
                {
                    OrdenSql.Parameters.AddWithValue("@Id", Id);
                    return OrdenSql.ExecuteNonQuery();
                }
                catch (Exception)
                {
                    throw;
                }
                finally
                {
                    cnx.Close();
                    cnx.Dispose();
                    OrdenSql.Dispose();
                }
            }
        }
    }
}
            

