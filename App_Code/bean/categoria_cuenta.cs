using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class categoria_cuenta{
    public categoria_cuenta() {}

    public string id_catcuenta { get; set; }
    public string descripcion { get; set; }
public object[] getRegistro()
    {
        return new object[] {id_catcuenta,descripcion };

    }
}
