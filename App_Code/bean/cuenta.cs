using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class cuenta {
    public cuenta() { } 
    public string ncuenta { get; set; }
    public string dni_cliente { get; set;}
    public string tipo_cuenta { get; set; }
    public string ntarjeta { get; set; }
    public double saldo { get; set; }
     public bool Valida { get; set; }
    public void setRegistro(string[] aRegistro) {
        Valida = aRegistro != null;

        if (Valida)
        {
            ncuenta = aRegistro[0];
            dni_cliente = aRegistro[1];
            tipo_cuenta = aRegistro[2];
            ntarjeta = aRegistro[3];
            saldo = double.Parse(aRegistro[4]);
                    
        }
    }
    public object[] getRegistro()
    {
        return new object[] { ncuenta,dni_cliente,tipo_cuenta,ntarjeta,saldo};
    }
}