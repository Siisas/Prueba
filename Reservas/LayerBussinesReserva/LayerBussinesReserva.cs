using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;

namespace LayerBussines
{
   public class LayerBussinesReserva
    {
          
        LayerData.LayerDataReserva DALe = new LayerData.LayerDataReserva();

        public int InsertarReserva(Int64 Id, string NombreSolicitante, string ElementoAPrestar, DateTime FechaPrestao, float Observaciones, DateTime fechadevolucion)
        {
            try
            {
                return DALe.InsertarReserva(Id, NombreSolicitante, ElementoAPrestar, FechaPrestao, Observaciones, fechadevolucion);
            }
            catch (Exception)
            {
                throw;
            }
            finally
            {
                DALe = null;
            }
        }
    }
}
