using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class _daoCuenta{

    clsBD _clsBD = new clsBD("cnCajero_web");

    internal int Retiros_soles(cuenta _cuenta)
    {
        _clsBD.SentenciaSQL("USP_registrar_retiro");
        //_clsBD.ParametrosSQL(_cuenta.ncuenta, _cuenta.saldo);
        _clsBD.ParametrosSQL(_cuenta.getRegistro());
        //_usuario.setRegistro(_clsBD.getRegistro());
        //_usuario.Valida = _clsBD.getCampo() != null;
        return _clsBD.EjecutarSQL();

    }

    public void geConsultar_Saldo(cuenta _cuenta) {
        _clsBD.SentenciaSQL("USP_consultarSaldo"+_cuenta.ncuenta);
        _cuenta.setRegistro(_clsBD.getRegistro());
    }
}