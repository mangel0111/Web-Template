<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LightBox.aspx.cs" Inherits="LightBox" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <head>
        <!-- Add jQuery library -->
        <script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>

        <!-- Add mousewheel plugin (this is optional) -->
        <script type="text/javascript" src="js/fancybox/lib/jquery.mousewheel-3.0.6.pack.js"></script>

        <!-- Add fancyBox -->
        <link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />
        <script type="text/javascript" src="js/fancybox/source/jquery.fancybox.pack.js?v=2.1.5"></script>

        <!-- Optionally add helpers - button, thumbnail and/or media -->
        <link rel="stylesheet" href="js/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" type="text/css" media="screen" />
        <script type="text/javascript" src="js/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>
        <script type="text/javascript" src="js/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

        <link rel="stylesheet" href="js/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" type="text/css" media="screen" />
        <script type="text/javascript" src="js/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>
    </head>
    <body>
        <a class="single-image" rel="group" href="images/banner.jpg"><img src="images/banner.jpg" alt="" /></a>
   <script type="text/javascript">
       $(document).ready(function () {

           $(".fancybox").fancybox();

           $(".single-image").fancybox({
               
               openEffect: 'elastic',   //'fade', 'elastic'
               closeEffect: 'elastic',
               openSpeed: 'normal', //ms, slow, normal, fast (default 250ms)
               closeSpeed: 'normal',
               helpers: {
                   title: {
                       type: 'inside' //'float', 'inside', 'outside' or 'over'
                   },
                   overlay: {
                       closeClick: true  // if true, se cierra al hacer click fuera de la imagen
                   }
               },
               padding: 11
           });

        });
</script>
    </body>
</asp:Content>

