<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Transferencia.aspx.cs" Inherits="Pages_Transferencia" Title="Transferencia"  Async="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <webopt:bundlereference runat="server" path="~/css/css" />
    <title></title>
      <style>
            #Button10:hover, #Button3:hover, #Button4:hover, #Button5:hover, #Button6:hover, #Button7:hover, #Button8:hover, #Button9:hover, #Button11:hover, #Button13:hover, #Button14:hover {
                background: #FAFAFA;
                border-color: #2E9AFE;
                color: #2E9AFE;
            }
            td {
            border:hidden;
            }
            table {
            border: 3px solid #000000;
            }
        </style>
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
        <h2 class="text-info"> LLENE LOS DATOS PARA REALIZAR LA TRANSFERENCIA</h2>
                       <br />
        </td>
        </tr>       
        <tr>  
            <td >
            <h4 class="text-info">Ingrese Cuenta Destino</h4>
                <br />
            </td>
              
            <td align="rigth"> 
            <asp:TextBox ID="txtdestino" runat="server" type="text" class="form-control" MaxLength="16" Width="300px" placeholder="Ingrese Cuenta Destino"/>
                    <asp:Label ID="lblcliente" runat="server" Text="" CssClass="text-success"></asp:Label>
            </td>
            <td>
                <h4 >
                    &nbsp;</h4>
                 </td>

</tr>
                <tr>
                    <td>
                            
               
                   </td>
                    <td>
                       <asp:Button ID="btnvalidarCliente" runat="server" Text="Validar" CssClass="btn btn-lg btn-primary btn-block"  Height="30px" Width="57px"/>  <br />
              

                    </td>

                </tr>
           
            </td>  
        </tr>
            <tr>  
            <td >
            <h4 class="text-info">Ingrese Monto</h4>
                <br />
            </td>
              
            <td align="rigth"> 
            <asp:TextBox ID="txtmonto" runat="server" type="text" class="form-control" MaxLength="4" Width="300px" placeholder="Ingrese Monto"/><br />
            <br />      
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
                </td>
            </tr>
         <tr>     
       <td align="center" colspan="3">
           <br />
           <br />
           <br />
        <asp:Button ID="btntransferir" runat="server" Text="Transferir" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="260px" />  <br />
        
       
       
               
        <asp:Button ID="btnvolver" runat="server" Text="Menu" CssClass="btn btn-lg btn-primary btn-block"  Height="40px" Width="260px"/>  <br />
        </td>
       
        
        </tr>
                      
        </table>
        </div>
    </form>
</body>
</html>
