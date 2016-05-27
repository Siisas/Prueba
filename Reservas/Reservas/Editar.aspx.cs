using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservas
{
    public partial class Editar : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarDatos();
            }
        }

        public void LlenarDatos()
        {
            LayerBussines.LayerBussinesReserva olB = new LayerBussines.LayerBussinesReserva();
            GridView1.DataSource = olB.MostarReserva();
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            LlenarDatos();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {

            GridView1.EditIndex = e.NewEditIndex;
            LlenarDatos();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            LayerBussines.LayerBussinesReserva olB = new LayerBussines.LayerBussinesReserva();
            Int64 ID = Convert.ToInt64(GridView1.DataKeys[e.RowIndex].Value.ToString());
            int result = 0;

            GridViewRow row = GridView1.Rows[e.RowIndex];
            TextBox NS = (TextBox)row.FindControl("TxtNombreSolicitante");
            TextBox EP = (TextBox)row.FindControl("TxtElementoAPrestar");
            TextBox FP = (TextBox)row.FindControl("TxtFechaPrestao");
            TextBox OB = (TextBox)row.FindControl("TxtObservaciones");
            TextBox FD = (TextBox)row.FindControl("Txtfechadevolucion");

            try
            {
                result = olB.EditarReserva(ID, NS.Text, EP.Text, Convert.ToDateTime(FP.Text),OB.Text, Convert.ToDateTime(FD.Text));
                if (result > 0)
                {
                    LblMsg.Text = "Reserva Editada";
                }
                else
                {
                    LblMsg.Text = "Reserva no editada";

                }
            }
            catch (Exception exc)
            {
                LblMsg.Text = exc.Message.ToString();
            }
            finally
            {
                olB = null;
            }
            GridView1.EditIndex = -1;
            LlenarDatos();
        }
    }
}