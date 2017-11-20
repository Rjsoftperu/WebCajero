using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Pages_Retiros : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e) { }

        //private string Ntarjeta = Request.Params(" parametro");

   
    private void Retirar_Billete(Double Monto) {
        _daoTarjeta daotarjt = new _daoTarjeta();
        _daoCuenta daocuenta = new _daoCuenta();
        _daoDistribucion_Billete daobillete = new _daoDistribucion_Billete();
        tarjeta _tajeta = new tarjeta();
        cuenta _cuenta = new cuenta();
        distribucion_billete _billete = new distribucion_billete();
        string Ntarjet = "";
        DataSet NumeroCuenta;
        string ncuenta;
        int saldoactual;

        _tajeta.ntarjeta = Ntarjet.Trim();
        //ncuenta = _tajeta.ntarjet.Tables(0).Rows(0)(2).ToString();
        daotarjt.DtsConectados(_tajeta);


        //Dim Ntarjet As String = Request.Params("parametro")
        //Dim numerocuenta As DataSet
        //Dim ncuenta As String
        //Dim saldoactual As Integer
    }

    protected void onClick_Retiro(object sender, EventArgs e)
    {




        Response.Write("<script> alert('Error del servidor o password ') </script>");
    }

    protected void onClick_Menu(object sender, EventArgs e)
    {
        Response.Redirect("Menu.aspx");
    }
}