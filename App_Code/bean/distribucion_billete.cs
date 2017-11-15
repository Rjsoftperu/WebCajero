using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

 
public class distribucion_billete
{
    public distribucion_billete() {}
    public string cod_billete { get; set; }
    public double cantidad { get; set; }
    public bool Valida { get; set; }
    public void setRegistro(string[] aRegistro)
    {
        Valida = aRegistro != null;
        if (Valida)
        {
            cod_billete = aRegistro[0];
            cantidad = double.Parse(aRegistro[1]);
        }
    }
    public object[] getRegistro()
    {
        return new object[] { cod_billete, cantidad };
    }
}