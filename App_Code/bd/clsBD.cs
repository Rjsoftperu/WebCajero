using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
/// <summary>
/// Descripción breve de Class1
/// </summary>
public class clsBD {
    SqlConnection cn = null;
    SqlCommand cmd = null;
    SqlDataAdapter da = null;
    public clsBD(string strBD) {

        cn = new SqlConnection(ConfigurationManager.ConnectionStrings[strBD].ConnectionString);
        cmd = new SqlCommand("", cn);
        da = new SqlDataAdapter(cmd);
    }
    internal void SentenciaSQL(string strSQL){
        cmd.CommandText = strSQL;
        cmd.Parameters.Clear();
    }
    internal void ParametrosSQL(object p1)
    {
        ParametrosSQL(new object[] { p1 });
    }

    internal void ParametrosSQL(object p1, object p2)
    {
        ParametrosSQL(new object[] { p1, p2 });
    }

    internal void ParametrosSQL(object[] parametros)
    {
        int i = 1;
        foreach (object valor in parametros)
        {
            cmd.CommandText += " @" + i + (i == parametros.Length ? "" : ",");
            cmd.Parameters.AddWithValue("@" + i++, valor);
        }
    }

    internal void ParametrosSQL(object[] parametros, byte[] imagen)
    {
        ParametrosSQL(parametros);
        cmd.CommandText += ", @" + (parametros.Length + 1);
        cmd.Parameters.Add("@" + (parametros.Length + 1), SqlDbType.Image).Value = imagen;
    }

    internal int EjecutarSQL()
    {
        if (cn.State == ConnectionState.Closed) cn.Open();
        return cmd.ExecuteNonQuery();
    }

    internal object getCampo()
    {
        if (cn.State == ConnectionState.Closed) cn.Open();
        return cmd.ExecuteScalar();
    }
    public byte[] getImagen()
    {
        object oImagen = getCampo();
        return System.DBNull.Value.Equals(oImagen) ? null : (byte[])oImagen;
    }

    
    internal DataSet getDataSet()
    {
        DataSet ds = new DataSet();
        da.Fill(ds);
        return ds;
    }

    internal DataTable getDataTable()
    {
        DataTable dt = new DataTable();
        da.Fill(dt);
        return dt;
    }

    internal void getComboBox(DropDownList cboCombo)
    {
        getComboBox(cboCombo, null);
    }

    internal void getComboBox(DropDownList cboCombo, string[] aColumna)
    {
        DataTable dt = getDataTable();
        if (aColumna != null)
        {
            DataRow dr = dt.NewRow();
            int index = 0;
            foreach (string valor in aColumna)
                dr[index++] = valor;
            dt.Rows.InsertAt(dr, 0);
        }
        cboCombo.DataSource = dt;
        cboCombo.DataValueField = dt.Columns[0].ColumnName;
        cboCombo.DataTextField = dt.Columns[1].ColumnName;
    }


    internal void getListBox(ListBox lstLista)
    {
        DataTable dt = getDataTable();
        lstLista.DataSource = dt;
        lstLista.DataValueField = dt.Columns[0].ColumnName;
        lstLista.DataTextField = dt.Columns[1].ColumnName;
    }

    internal string[] getColumna()
    {
        return getColumna(0);
    }

    internal string[] getColumna(int columna)
    {
        DataTable dt = getDataTable();
        string[] aColumna = null;
        if (dt.Rows.Count > 0)
        {
            int index = 0;
            aColumna = new string[dt.Rows.Count];
            foreach (DataRow dr in dt.Rows)
                aColumna[index++] = dr[columna].ToString();
        }
        return aColumna;
    }

    internal string[] getRegistro()
    {
        DataTable dt = getDataTable();

        if (dt.Rows.Count > 0)

            return System.Array.ConvertAll(dt.Rows[0].ItemArray, x => x.ToString().Trim());
        return null;
    }

    internal string[][] getRegistros()
    {
        DataTable dt = getDataTable();
        string[][] aRegistros = null;

        if (dt.Rows.Count > 0)
        {
            int i = 0;
            aRegistros = new string[dt.Rows.Count][];
            foreach (DataRow dr in dt.Rows)
                aRegistros[i++] = System.Array.ConvertAll(dr.ItemArray, x => x.ToString().Trim());
        }
        return aRegistros;
    }

    internal void getArrayList(ArrayList lista)
    {
        DataTable dt = getDataTable();
        lista.Clear();

        if (dt.Rows.Count > 0)
            foreach (DataRow dr in dt.Rows)
                lista.Add(System.Array.ConvertAll(dr.ItemArray, x => x.ToString().Trim()));
    }

    //internal List<ModeloLista> getModeloLista()
    //{
    //    List<ModeloLista> lstLista = new List<ModeloLista>();
    //    DataTable dt = getDataTable();

    //    foreach (DataRow dr in dt.Rows)
    //        lstLista.Add(new ModeloLista(System.Array.ConvertAll(dr.ItemArray, x => x.ToString().Trim())));
    //    return lstLista;
    //}

    //internal void getDropDownList(DropDownList cboCombo)
    //{
    //    getDropDownListList(cboCombo, null);
    //}

    //internal void getDropDownListList(DropDownList cboCombo, string[] aRegistro)
    //{
    //    List<ModeloLista> lstLista = getModeloLista();
    //    if (aRegistro != null)
    //    {
    //        lstLista.Insert(0, new ModeloLista(aRegistro));
    //    }
    //    cboCombo.DataSource = lstLista;
    //    cboCombo.DataValueField = "Campo01";
    //    cboCombo.DataTextField = "Campo02";
    //}


}