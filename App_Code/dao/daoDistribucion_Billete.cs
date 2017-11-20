using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class _daoDistribucion_Billete{
    clsBD _clsBD = new clsBD("cnCajero_web");
    //public void getNRetirarBilletes(distribucion_billete _distribucion_billete)
    //{
    //    _clsBD.SentenciaSQL("USP_retirar_billetes");
    //    _clsBD.ParametrosSQL(_distribucion_billete.cantidad);
    //   _distribucion_billete.setRegistro( _clsBD.getRegistro());
    //}

    internal void getNRetirarBilletes(Double nmonto,distribucion_billete _billete)
    {
        _clsBD.SentenciaSQL("USP_retirar_billetes");
        _clsBD.ParametrosSQL(nmonto, _billete.cantidad);
        _billete.getRegistro();
        //_clsBD.getDataSet();
    }


}