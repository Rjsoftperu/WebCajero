using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class transaccion
{
    public transaccion(){ }
    public string id_transaccion { get; set; }
    public double tipo_transaccion { get; set; }
    public bool Valida { get; set; }
    public void setRegistro(string[] aRegistro)
    {
        Valida = aRegistro != null;
        if (Valida)
        {
            id_transaccion = aRegistro[0];
            tipo_transaccion = double.Parse(aRegistro[1]);
        }
    }
    public object[] getRegistro()
    {
        return new object[] { id_transaccion, tipo_transaccion };
    }
}