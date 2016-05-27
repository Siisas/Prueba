using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Reservas
{
    public partial class Mostrar : System.Web.UI.Page
    {

        LayerBussines.LayerBussinesReserva obj = new LayerBussines.LayerBussinesReserva();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LlenarDatos();
            }
        }

        public void LlenarDatos()
        {
            GridView1.DataSource = obj.MostarReserva();
            GridView1.DataBind();
        }

    }
}