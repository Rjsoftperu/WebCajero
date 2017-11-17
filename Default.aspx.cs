using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    public void teclado(string numero)  {
        //if (txtNtarjeta.Text.Length <= 15) { txtNtarjeta.Text += numero; }

       if (txtNT1.Text.Length <= 3) { txtNT1.Text += numero; }
        else if (txtNT2.Text.Length <= 3) { txtNT2.Text += numero; }
        else if (txtNT3.Text.Length <= 3) { txtNT3.Text += numero; }
        else if (txtNT4.Text.Length <= 3) { txtNT4.Text += numero; }
        else if (txtPing.Text.Length <=3) { txtPing.Text += numero; }
    }
    protected void btn1_onClick(object sender, EventArgs e )
    {


        teclado("1");
    }

    protected void btn2_onClick(object sender, EventArgs e)
    {
        teclado("2");

        //if (txtNT2.Text.Length <= 3)
        //{
        //    txtNT2.Text += 2;
        //}
    }

    protected void btn3_onClick(object sender, EventArgs e)
    {
        teclado("3");
    }

    protected void btn4_onClick(object sender, EventArgs e)
    {
        teclado("4");
    }
    protected void btn5_onClick(object sender, EventArgs e)
    {
        teclado("5");
    }
    protected void btn6_onClick(object sender, EventArgs e)
    {
        teclado("6");
    }

    protected void btn7_onClick(object sender, EventArgs e)
    {
        teclado("7");
    }

    protected void btn8_onClick(object sender, EventArgs e)
    {
        teclado("8");
    }

    protected void btn9_onClick(object sender, EventArgs e)
    {
        teclado("9");
    }

    protected void btn10_onClick(object sender, EventArgs e)
    {
        teclado("0");
    }
    protected void btn_Clear_onClick(object sender, EventArgs e)
    {
        txtPing.Text = "";
        //txtNtarjeta.Text = "";
        txtNT1.Text = "";
        txtNT2.Text = "";
        txtNT3.Text = "";
        txtNT4.Text = "";

    }

   private void blqueo_tecla(){
        txtPing.Enabled = false;
        txtNT1.Enabled = false;
        txtNT2.Enabled = false;
        txtNT3.Enabled = false;
        txtNT4.Enabled = false;
    }
    protected void Acceso_click(object sender, EventArgs e){
        //    usuario _usuario = new usuario();
        //    _usuario.ntarjeta = txtNmerotarjeta.Text.Trim();
        //    _usuario.ping = txtPing.Text.Trim();
        //    new _daoUsuario().Validar_Login(_usuario);
        //    if (_usuario.Valido)
        //    {
        //        Session["_usuario"] = _usuario;
        //        Response.Redirect("Pages/Menu.aspx");
        //    }
        //    else
        //    {
        //        Response.Write("<script> alert('Error del servidor') </script>"); 
        //    }

        //}


        DateTime localDate = DateTime.Now;
        string ntarjeta = "";
        string nclave = "";
        //ntarjeta = txtNtarjeta.Text;
        ntarjeta = txtNT1.Text + txtNT2.Text + txtNT3.Text + txtNT4.Text;
        nclave = txtPing.Text;
        usuario _usuario = new usuario();
        _usuario.ntarjeta = ntarjeta.Trim();
        _usuario.ping = nclave.Trim();
        new _daoUsuario().Validar_Login(_usuario);

        //int  BgUser = new _daoUsuario().Bloquear_user(_usuario);
   
        if (_usuario.Valida)
        {
            Session["_usuario"] = _usuario;
            Response.Redirect("Pages/Menu.aspx");
        }
        else
        {
            //Response.Write("<script> alert('Hora : " + localDate.ToString() + "') </script>");
            Response.Write("<script> alert('Error del servidor o password ') </script>");
        }

    }



    protected void Page_Load(object sender, EventArgs e) {
        blqueo_tecla();
    }

    protected void onClick_ingresar(object sender, EventArgs e)
    {
        Response.Write("hola mundo :: :)");
    }
}

