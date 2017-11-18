
<%--<%@ Page Title="Cajero" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="_Menu" %>--%>

<%--<%@ Page Title="Menu" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Pages_Menu" %>--%>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Pages_Menu" Title="Menu"  Async="true" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

<webopt:bundlereference runat="server" path="~/css/css" />


    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" >
      <h2 class="text-info"> SELECCIONE LA OPERACION QUE DESEA REALIZAR</h2>

    <br />
        <asp:Button ID="Button1" runat="server" Text="RETIROS" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px" OnClick="onClick_Retiro"/> 
            <br />
        <asp:Button ID="Button2" runat="server" Text="CONSULTAS" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px" OnClick="onClick_Consulta"/> 
            <br />
        <asp:Button ID="Button3" runat="server" Text="MOVIMIENTO" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px" OnClick="onClick_Movimientos"/> 
            <br />
        <asp:Button ID="Button4" runat="server" Text="TRANSFERENCIAS" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px" OnClick="onClick_Transferencia"/> 
            <br />
        <asp:Button ID="Button5" runat="server" Text="CAMBIO DE CLAVES" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px" OnClick="onClick_Cambio_clave"/> 
            <br />
        <asp:Button ID="Button6" runat="server" Text="DEPOSITOS" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px" OnClick="onClic_deposito"/> 

           <br />
        <asp:Button ID="Button7" runat="server" Text="PAGOS" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px" OnClick="onClock_pagos"/> 

           <br />
        <asp:Button ID="Button8" runat="server" Text="Salir" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px" OnClick="onClick_salir"/> 
       
            </div>


    </form>
</body>
</html>
