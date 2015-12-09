<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="timer.aspx.cs" Inherits="timer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <body class="bodyTimer">
        <div class="wrapTimer">
            <div class="widget">
                <div class="fecha">
                    <p id="diaSemana" class="diaSemana"></p>
                    <p id="dia" class="dia"></p>
                    <p>de </p>
                    <p id="mes" class="mes"></p>
                    <p>del </p>
                    <p id="year" class="year"></p>
                </div>
                <div class="reloj">
                    <p id="horas" class="horas"></p>
                    <p>:</p>
                    <p id="minutos" class="minutos"></p>
                    <p>:</p>
                    <div class="caja-segundos">
                        <p id="ampm"  class="ampm"></p>
                        <p id="segundos"  class="segundos"></p>
                    </div>
                </div>
            </div>
            <br />
             <br />
             <br />
             <br />
             <br />
        </div>
  <script src="js/reloj.js"></script>
    </body>
</asp:Content>

