using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Menu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void onClick_Movimiento(object sender, EventArgs e)
    {
    
        Response.Redirect("Movimientos.aspx");
    }

    protected void onClick_Retiro(object sender, EventArgs e)
    {
        Response.Redirect("Retiros.aspx");
    }

    protected void onClick_Consulta(object sender, EventArgs e)
    {
        Response.Redirect("Consultas.aspx");
    }

    protected void onClick_Movimientos(object sender, EventArgs e)
    {
        Response.Redirect("Movimientos.aspx");
    }

    protected void onClick_Transferencia(object sender, EventArgs e)
    {
        Response.Redirect("Transferencia.aspx");
    }

    protected void onClick_Cambio_clave(object sender, EventArgs e)
    {
        Response.Redirect("CambioClave.aspx");
    }
   

    protected void onClic_deposito(object sender, EventArgs e)
    {
        Response.Redirect("Depositos.aspx");
    }
    protected void onClock_pagos(object sender, EventArgs e)
    {
        Response.Redirect("Pagos.aspx");
    }
    protected void onClick_salir(object sender, EventArgs e)
    {
        Response.Redirect("../Default.aspx");
    }


  
}