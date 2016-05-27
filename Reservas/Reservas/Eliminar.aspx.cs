using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservas
{
    public partial class Eliminar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LlenarDatos();
            }
        }

        public void LlenarDatos()
        {
            LayerBussines.LayerBussinesReserva oLb = new LayerBussines.LayerBussinesReserva();
            GridView1.DataSource = oLb.MostarReserva();
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            LayerBussines.LayerBussinesReserva oLb = new LayerBussines.LayerBussinesReserva();
            Int64 ID = Convert.ToInt64(GridView1.DataKeys[e.RowIndex].Value.ToString());

            try
            {
                oLb.EliminarReserva(ID);
                LblMsg.Text = "Reserva Eliminada";
                LlenarDatos();
            }
            catch (Exception exc)
            {
                LblMsg.Text = exc.Message.ToString();
            }
            finally
            {
                oLb = null;
            }
        }
    }
}