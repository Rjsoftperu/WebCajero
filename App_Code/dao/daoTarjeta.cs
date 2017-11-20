using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public class _daoTarjeta
{
    clsBD _clsBD = new clsBD("cnCajero_web");

    public void DtsConectados(tarjeta _tarjeta){
        _clsBD.SentenciaSQL("datosconectado" +_tarjeta.ntarjeta);
        _tarjeta.setRegistro(_clsBD.getRegistro());

        //_clsBD.SentenciaSQL(_tarjeta.ntarjeta);

        //_tarjeta.Valida = _clsBD.getCampo() != null;
    }

    
}