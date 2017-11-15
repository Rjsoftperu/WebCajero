using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class tarjeta{
    public tarjeta()  {}
    public string ntarjeta { get; set; }
    public string nombretarjeta { get; set; }
    public bool Valida { get; set; }
    public void  setRegistro(string[] aRegistro)
    {
        Valida = aRegistro != null;
        if (Valida) { 
        ntarjeta = aRegistro[0];
        nombretarjeta = aRegistro[1];
      }
    }
    public object[] getRegistro()
    {
        return new object[] { ntarjeta,nombretarjeta};
    }
}