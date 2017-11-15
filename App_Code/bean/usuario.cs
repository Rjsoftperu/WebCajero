using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class usuario{
    public usuario() { }
    public string dni{ get; set; }
    public string ntarjeta{ get; set; }
    public string ping { get; set; }
    public string estado { get; set; }
    public DateTime tiempo { get; set; }


    public bool Valida { get; set; }
    public void setRegistro(string[] aRegistro)
    {
        Valida = aRegistro != null;
        if (Valida)
        {
            dni = aRegistro[0];
            ntarjeta = aRegistro[1];
            ping = aRegistro[2];
            estado = aRegistro[3];
            tiempo = DateTime.Parse(aRegistro[4]);

        }
    }

    public object[] getRegistro()
    {
        return new object[] { dni,ntarjeta,ping,estado,tiempo };
    }

}