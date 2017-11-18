
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Movimientos.aspx.cs" Inherits="Pages_Movimientos" Title="Mis-Movimientos"  Async="true" %>


<%--<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Movimientos.aspx.cs" Inherits="Pages_Movimientos" %>--%>

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
        <td colspan="3" align="center">
        <h2 class="text-info"> TECLEE LA CUENTA Y LUEGO "ACEPTAR"</h2>
        </td>
               <br />
            <br />
            <br />
            
        </td>
        </tr>   
            
            <tr>
                 <td align="center" colspan="3" ><asp:Button ID="btnir" runat="server" Text="Cuenta Ahorros" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
       <br />
                     <br />
                     <br />
                     <br />

            </tr>    
        <tr>        
       
             </td>
          <td align="center" colspan="3" ><asp:Button ID="btnatras" runat="server" Text="Menu" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
       
             </td>
        
           </tr>
         
                      
        </table>
        </div>
    </form>
</body>
</html>
