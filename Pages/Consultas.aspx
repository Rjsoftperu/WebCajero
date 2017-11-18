<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Consultas.aspx.cs" Inherits="Pages_Consultas" Title="Consultas"  Async="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <webopt:bundlereference runat="server" path="~/css/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <div class="container" class="table-responsive"> 
        <br />
        <br />
        <br />
        <br />       
        <br />
        <table align="center">
        <tr>
        <td colspan="2" align="center">
        <h2 class="text-info"> TECLEE LA CUENTA A CONSULTAR Y LUEGO "ACEPTAR"</h2>
        
               <br />
            
        </td>
        </tr>       
        <tr>        
        <td align="center"><asp:Button ID="btnahorro" runat="server" Text="CUENTA DE AHORROS " CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
          </tr>           
        </table>
        </div>
    </form>
</body>
</html>
