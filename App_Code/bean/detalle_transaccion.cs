using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public class detalle_transaccion{
    public detalle_transaccion(){}
    public int id_det_transaccion { get; set; }
    public string id_transaccion { get; set; }
    public string ncuenta { get; set; }
    public string ncuentadestino { get; set; }
    public DateTime fecha_transaccion { get; set; }
    public double  monto { get; set; }
    public bool Valida { get; set; }

    public void setRegistro(string[] aRegistro)
    {
        Valida = aRegistro != null;
        if (Valida)
        {
            id_det_transaccion = int.Parse(aRegistro[0]);
            id_transaccion = aRegistro[1];
            ncuenta = aRegistro[2];
            ncuentadestino = aRegistro[3];
            fecha_transaccion = DateTime.Parse(aRegistro[4]);
            monto = double.Parse(aRegistro[5]);
        }
    }
    public object[] getRegistro()
    {
        return new object[] { id_det_transaccion,id_transaccion,ncuenta,ncuentadestino, fecha_transaccion, monto };
    }
}