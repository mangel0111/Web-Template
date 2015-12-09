<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Ingreso.aspx.cs" Inherits="view_Ingreso" %>
	
<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
    <form name="formulario" method="get" runat="server">
         <div style="padding-left: 100px; padding-right: 50px;text-align:center">
                <h1 class="h1" style="font="18";" >Ingresa la Web</h1>
                <p><input type="text" name="inpNombre" placeholder="Email" data-placement="center" data-toggle="tooltip" title="Email" id="txtName" style="text-align:center;" runat="server"/></p> 
                <p><input type="password" name="inpPassword" placeholder="Password" data-placement="center" required data-toggle="tooltip" title="Password" id="txtPassword" style="text-align:center;" runat="server"/></p> 
                <p><asp:CheckBox ID="chxRemenberMe" runat="server" Text=" Recuerdame en este Equipo"/></p>
                <p><asp:Button ID="Button1" runat="server" Text="Login" OnClick="button_click" />&nbsp;</p>
                <p> Olvido su Contrasena? <a href="index.html">Recuperela Aqui</a>.</p>
                <p> <asp:Label ID="LblLogError" Font-Bold="true" ForeColor="Red" runat="server" Text=""></asp:Label></p>     
          </div>   
    </form>
</asp:Content>

