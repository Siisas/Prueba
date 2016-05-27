using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;


namespace LayerBussines
{
 public  class LayerBussinesReserva
    {
          
        LayerData.LayerDataReservas DALe = new LayerData.LayerDataReservas();

        public int InsertarReserva(Int64 Id, string NombreSolicitante, string ElementoAPrestar, DateTime FechaPrestao, string Observaciones, DateTime fechadevolucion)
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
        public DataTable MostarReserva()
        {
            try
            {
                return DALe.MostarReserva();
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
        public int EditarReserva(Int64 Id, string NombreSolicitante, string ElementoAPrestar, DateTime FechaPrestao, string Observaciones, DateTime fechadevolucion)
        {
            try
            {
                return DALe.EditarReserva(Id, NombreSolicitante, ElementoAPrestar, FechaPrestao, Observaciones, fechadevolucion);
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
        public int EliminarReserva(Int64 Id)
        {
            try
            {
                return DALe.EliminarReserva(Id);
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

