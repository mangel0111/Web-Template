<%@ Page Title="" Language="C#" MasterPageFile="~/PageForUsers.master" AutoEventWireup="true" CodeFile="Tareas.aspx.cs" Inherits="Tareas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
           <div class="principal">
		        <div class="wrap">
			        <form class="formulario" action="">
				        <input type="text" id="tareaInput" placeholder="Agrega tu tarea">
                        <input type="button" class="boton" id="btn-agregar" value="Agregar Tarea">
			        </form>
		        </div>
	        </div>
 
	        <div class="tareas">
		        <div class="wrap">
			        <ul class="lista" id="lista">
				        <li><a href="#">1 Lorem ipsum dolor sit amet.</a></li>
				        <li><a href="#">2 Lorem ipsum dolor sit amet.</a></li>
				        <li><a href="#">3 Lorem ipsum dolor sit amet.</a></li>
			        </ul>
		        </div>
	        </div>
        <script src="js/taskManager.js"></script>  
</asp:Content>

