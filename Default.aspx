<%@ Page Title="Cajero" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    <div  class="container">
         <h1 class="text-info">BIENVENIDO A SU BANCWEB</h1>

         <div>
              <h4 class="text-info"> Tarjeta     N°</h4>
              <%--<asp:TextBox ID="txtNmerotarjeta" runat="server"></asp:TextBox>--%>
             <div style="display:flex;">
                     <%--<asp:TextBox ID="txtNtarjeta" runat="server" MaxLength="16" Width="200px"/>--%>
             <asp:TextBox ID="txtNT1" runat="server" MaxLength="4" Width="60px"/>
             <asp:TextBox ID="txtNT2" runat="server" MaxLength="4" Width="60px"/>
             <asp:TextBox ID="txtNT3" runat="server" MaxLength="4" Width="60px"/>
             <asp:TextBox ID="txtNT4" runat="server" MaxLength="4" Width="60px"/>
             </div>
            
             
        </div>

         <div>
              <h4 class="text-info"> Clave</h4>
          
              <%--<asp:TextBox ID="txtPing" runat="server" type="text" class="form-control" MaxLength="4" Width="100px"/>--%>
               <asp:TextBox ID="txtPing" runat="server" MaxLength="4" Width="60px"></asp:TextBox>
    
        </div>
        <br />
                <Table  id="teclado">
                <tr>
                <td align="center"><asp:Button ID="Button10" runat="server" Text="1" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn1_onClick"/></td>
                <td align="center"><asp:Button ID="Button3" runat="server" Text="2" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn2_onClick"/></td>
                <td align="center"><asp:Button ID="Button4" runat="server" Text="3" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn3_onClick"/></td>
                </tr>
                <tr>
                <td align="center"> <asp:Button ID="Button5" runat="server" Text="4" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn4_onClick"/></td>
                <td align="center"> <asp:Button ID="Button6" runat="server" Text="5" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn5_onClick"/></td>
                <td align="center"> <asp:Button ID="Button7" runat="server" Text="6" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn6_onClick"/></td>
                </tr>
                <tr>
                <td align="center"><asp:Button ID="Button8" runat="server" Text="7" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="Acceso_click"/></td>
                <td align="center"><asp:Button ID="Button9" runat="server" Text="8" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn1_onClick"/></td>
                <td align="center"><asp:Button ID="Button11" runat="server" Text="9" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn9_onClick"/></td>
                </tr>
                <tr>
                <%--<td align="center"><asp:Button ID="Button12" runat="server" Text="" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px"/></td>--%>
                <td align="center"><asp:Button ID="Button13" runat="server" Text="0" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn10_onClick"/></td>
                <td align="center"><asp:Button ID="Button14" runat="server" Text="clear" CssClass="btn btn-lg btn-primary btn-block" Height="40px" Width="40px" OnClick="btn_Clear_onClick"/></td>
               
                     </tr>
                </Table>
            <div>
                <asp:Button ID="txt1" runat="server" Text="ingresar a menu" OnClick="onClick_ingresar" />

        </div>





<%--        <asp:Button ID="Button1" runat="server" Text="Button" />

        <button ID="onClicAcceso" runat="server" accesskey="onclick_htm">Acceso A admin </button>--%>

        <br />
       <asp:Button ID="btnIngresar_login" runat="server" Text="Acceder Sistema" OnClick="Acceso_click"/>

    </div>












<%--      <div class="container" class="table-responsive">
           <br />
        <br />
        <br />
        <br />
       
        <br />

                <table align="center">

                <tr>
                    <td colspan="2" align="center">
                        <h1 class="text-info">BIENVENIDO A SU BANCWEB</h1>
                    </td>
                </tr>
                    <tr><td><br />
                     
                        </td></tr>
                  
                <tr>
                    <td>
                        <h4 class="text-info"> Tarjeta     N°</h4>
                    </td>

                    <td class="position">
                        <asp:TextBox ID="txtN1" runat="server" type="text" class="form-control" name ="txtusername"  MaxLength="4" Width="40px"/>
                        <asp:TextBox ID="txtN2" runat="server" type="text" class="form-control" name ="txtusername2"  MaxLength="4" Width="40px"/>
                        <asp:TextBox ID="txtN3" runat="server" type="text" class="form-control" name ="txtusername3"  MaxLength="4" Width="40px"/>
                        <asp:TextBox ID="txtN4" runat="server" type="text" class="form-control" name ="txtusername4" MaxLength="4" Width="40px"/>
                    </td>
                </tr>
               <tr><td> <br /></td></tr>
                   
               <tr>
                    <td>
                        <h4 class="text-info"> Clave&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h4>
                    </td>
                    <td>
                        <asp:TextBox ID="txtclave" runat="server" type="password" class="form-control" name="txtpassword" placeholder="Ingrese Ping" MaxLength="4"/>
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
                    <td>
                         <br />
                    </td>
                </tr>
               
                <tr >
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" Text="Acceder" class="btn btn-lg btn-primary btn-block"  Height="30px" Width="106px"/>
                     
                     <asp:Button ID="Button2" runat="server" Text="Cancelar"  class="btn btn-lg btn-primary btn-block" Height="30px" Width="106px"/>
                </td>
               
                </tr>    
                </table>
                
        </div>--%>



 
</asp:Content>
