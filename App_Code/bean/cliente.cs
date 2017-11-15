using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class cliente{
    public cliente() {}
    public string dni { get; set; }
    public string nombre { get; set; }
    public string apellido { get; set; }
    public string direccion { get; set; }
    public int  edad { get; set; }
    public string telefono { get; set; }
    public string email { get; set; }
    public bool Valido { get; set; }
    public void setRegistro(string[] aRegistro) {
        Valido = aRegistro != null;
        if (Valido)
        {
            dni = aRegistro[0];
            nombre = aRegistro[1];
            apellido = aRegistro[2];
            direccion = aRegistro[3];
            edad = int.Parse(aRegistro[4]);
            telefono = aRegistro[5];
            email = aRegistro[6];
        }

    }

    public object[] getRegistro() {
        return new object[] { dni,nombre, apellido, direccion, edad,telefono,email};
    }
}