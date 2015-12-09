<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SlidesShow.aspx.cs" Inherits="SlidesShow" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphPrincipal" Runat="Server">
    <div class="wrapSlide">
		<div class="slides">
			<img src="http://lorempixel.com/1600/900/city/1" alt="">
			<img src="http://lorempixel.com/1600/900/city/2" alt="">
			<img src="http://lorempixel.com/1600/900/city/3" alt="">
		</div>
	</div>
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="js/jquery.slides.js"></script>
    <script src="js/slideshow.js"></script>
</asp:Content>

