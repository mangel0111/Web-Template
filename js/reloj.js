(function () {
    var actualizarHora = function () {
        var fecha = new Date();
        var horas = fecha.getHours();
        var ampm;
        var minutos = fecha.getMinutes();
        var segundos = fecha.getSeconds();
        var diaSemana = fecha.getDay();
        var dia = fecha.getDate();
        var mes = fecha.getMonth();
        var year = fecha.getFullYear();

        var pHoras = document.getElementById('horas');
        var pAMPM = document.getElementById('ampm');
        var pMinutos = document.getElementById('minutos');
        var pSegundos = document.getElementById('segundos');
        var pDiaSemana = document.getElementById('diaSemana');
        var pDia = document.getElementById('dia');
        var pMes = document.getElementById('mes');
        var pYear = document.getElementById('year');

        var semana = ['Domingo', 'Lunes', 'Martes', 'Miercoles', 'Jueves', 'Viernes', 'Sabado'];
        var meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'];
        pDiaSemana.textContent = semana[diaSemana];
        pDia.textContent = dia;
        pYear.textContent = year;
        pSegundos.textContent = segundos;
        pMes.textContent = meses[mes];
        if (horas >= 12) {
            horas = horas - 12;
            ampm = 'PM';
        } else {
            amppm = 'AM';
        }
        if (horas == 0) {
            horas = 12;
        }

        pHoras.textContent = horas;

        if (minutos < 10) {
            minutos = "0" + minutos;
        }
        if (segundos < 10) {
            segundos = "0" + segundos;
        }
        pMinutos.textContent = minutos;
        pAMPM.textContent = ampm;
    };
    
    actualizarHora();
    var intervalo = setInterval(actualizarHora, 60);
}());