<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Retiros.aspx.cs" Inherits="Pages_Retiros" Title="Retiro - Soles"  Async="true" %>

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
        <h2 class="text-info"> TECLEE LA CANTIDAD A RETIRAR Y PULSE "ACEPTAR"</h2>
            <br />
        </td>
        </tr>       
        <tr>        
        <td align="center"><asp:Button ID="txtb20" runat="server" Text="20 SOLES" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        <td>
        </td>
        <td>
        <asp:Button ID="txtb50" runat="server" Text="50 SOLES" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        </tr>
        <tr>        
        <td align="center"><asp:Button ID="txtb100" runat="server" Text="100 SOLES" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        <td>
        </td>
        <td>
        <asp:Button ID="txtb200" runat="server" Text="200 SOLES " CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        </tr>
        <tr>        
        <td align="center"><asp:Button ID="txtb250" runat="server" Text="250 SOLES" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        <td>
        </td>
        <td>
        <asp:Button ID="txtb300" runat="server" Text="300 SOLES" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        </tr>
<tr>        
        <td align="center"><asp:Button ID="txtb500" runat="server" Text="500 SOLES " CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        <td>
        </td>
        <td>
        <asp:Button ID="txtotrosmontos" runat="server" Text="OTROS MONTOS" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        </tr>

        <tr>        
        <td align="center"><asp:Button ID="btnmenu" runat="server" Text="Menu" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="200px"/>  <br />
        </td>
        <td>
        </td>      
        </tr> 
                      
        </table>
        </div>
    </form>
</body>
</html>
