using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

public class _daoUsuario{
    clsBD _clsBD = new clsBD("cnCajero_web");

    public void Validar_Login(usuario _usuario) {
        _clsBD.SentenciaSQL("USP_VERIFICAR_USUARIO");
        _clsBD.ParametrosSQL(_usuario.ntarjeta, _usuario.ping);
        //_usuario.setRegistro(_clsBD.getRegistro());
        _usuario.Valida = _clsBD.getCampo() != null;
    }


    public int Bloquear_user(usuario _usuario)
    {
        _clsBD.SentenciaSQL("USP_BLOQUEAR_USUARIO");
        _clsBD.ParametrosSQL(_usuario.getRegistro());
        return _clsBD.EjecutarSQL();

    }



}