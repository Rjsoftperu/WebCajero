﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Pagos.aspx.cs" Inherits="Pages_Pagos" Title="Pagos-Servicio"  Async="true" %>

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
        <h2 class="text-info"> PAGO DE SERVICIOS</h2>
        
        <br />
            
        </td>
        </tr>       
        <tr> 
          <td>

              <h4 class="text-info"> Seleccione Servicio</h4><br/>

          </td>
           <td>
            
                  <asp:DropDownList ID="DropDownList1" runat="server" Class="controls" Width="165px">
                      <asp:ListItem Value="luz">Luz</asp:ListItem>
                      <asp:ListItem Value="Agua">Agua</asp:ListItem>
                      <asp:ListItem Value="Telefono">Telefono</asp:ListItem>
                      <asp:ListItem Value="Celular">Celular</asp:ListItem>
                      <asp:ListItem Value="Instituto">Instituto</asp:ListItem>
                  </asp:DropDownList><br/>
                 
            
           
          </td>
            </TR>
            <tr>  
                <td>
                      <h4 class="text-info"> Numero Recibo</h4><br/>
                </td>
               <td colspan="2">
                     <asp:TextBox ID="txtNrecibo" runat="server" type="text" class="form-control" name ="txtusername"  MaxLength="16" Width="150px" placeholder="Numero Recibo"/>
                      
               </td>    
        </tr>
            <tr>  
                <td>
                      <h4 class="text-info"> Monto</h4><br/>
                </td>
               <td colspan="2">
                     <asp:TextBox ID="txtMonto" runat="server" type="text" class="form-control" name ="txtusername"  MaxLength="4" Width="150px" placeholder="Ingrese Monto"/>
                      
               </td>    
        </tr>
            <tr>
                 <td colspan="2"> 
                <Table align="center" id="teclado">
                <tr>
                <td align="center"><asp:Button ID="Button10" runat="server" Text="1" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                <td align="center"><asp:Button ID="Button3" runat="server" Text="2" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                <td align="center"><asp:Button ID="Button4" runat="server" Text="3" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                </tr>
                <tr>
                <td align="center"> <asp:Button ID="Button5" runat="server" Text="4" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                <td align="center"> <asp:Button ID="Button6" runat="server" Text="5" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                <td align="center"> <asp:Button ID="Button7" runat="server" Text="6" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                </tr>
                <tr>
                <td align="center"><asp:Button ID="Button8" runat="server" Text="7" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                <td align="center"><asp:Button ID="Button9" runat="server" Text="8" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                <td align="center"><asp:Button ID="Button11" runat="server" Text="9" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                </tr>
                <tr>
                <td align="center"><asp:Button ID="Button12" runat="server" Text="" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                <td align="center"><asp:Button ID="Button13" runat="server" Text="0" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                <td align="center"><asp:Button ID="Button14" runat="server" Text="clear" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>
                </tr>
                </Table>
                      <br />
           <br />
           <br /> 
                </td>
            </tr>
            <tr>
   
        <td align="center"><asp:Button ID="btnPagar" runat="server" Text="Aceptar" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="150px"/>  <br />
       
          </td>
            
<td align="center"><asp:Button ID="btnVolver" runat="server" Text="Menu" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="150px"/>  <br />
       
          </td>
        </tr>
                     
        </table>
        </div>
    </form>
</body>
</html>
