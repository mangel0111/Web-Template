<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registro.aspx.cs" Inherits="Registro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">

    <form runat="server">
         <div style="padding-left: 100px; padding-right: 50px;text-align:center">
                <h1 class="h1" >Registrate</h1>
                <p><input type="text" id="txtFirtsName" required name="inpFirstName" placeholder="Nombre" data-placement="center" data-toggle="tooltip" style="text-align:center;" runat="server"/></p> 
                <p><input type="text" id="txtLastName" required name="inpLastName" placeholder="Apellidos" data-placement="center" data-toggle="tooltip" style="text-align:center;" runat="server"/></p> 
                <p><input type="text" id="txtEmail" required name="inpEmail" placeholder="Email" data-placement="center" data-toggle="tooltip" style="text-align:center;" runat="server"/></p>        
                <p><input type="password" name="inpPassword" required placeholder="Password" data-placement="center" data-toggle="tooltip" title="Password" id="txtPassword" style="text-align:center;" runat="server"/></p> 
                <p><input type="password" name="inpPassword2" required placeholder="Repita su Password" data-placement="center" data-toggle="tooltip" title="Password" id="txtPassword2" style="text-align:center;" runat="server"/></p> 
                <p><asp:Button ID="Button1" runat="server" Text="Crear Cuenta" OnClick="button_click" />&nbsp;</p>
                <p> <asp:Label ID="LblLogError" Font-Bold="true" ForeColor="Red" runat="server" Text=""></asp:Label></p>     
          </div>
    </form>

</asp:Content>

