<%@ page contentType="text/html; charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<%@ page session="false"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Администрирование системы - Живорост365</title>
    <!--mobile apps-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords" content="">
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
    function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--//mobile apps-->
    <!-- Custom Theme files -->
    <link href="../../../../resources/styles/bootstrap.min.css" type="text/css" rel="stylesheet" media="all">
    <link href="../../../../resources/styles/standard.css" type="text/css" rel="stylesheet" media="all">
    <!-- //Custom Theme files -->
    <!-- js -->
    <script src="../../../../resources/core/js/jquery-1.11.1.min.js.download"></script>
    <!-- //js -->
    <!--web-fonts-->
    <link href="../../../../resources/core/css/css" rel="stylesheet" type="text/css">
    <link href="../../../../resources/core/css/css(1)" rel="stylesheet" type="text/css">
    <!--//web-fonts-->
    <!-- start-smooth-scrolling -->
    <script type="text/javascript" src="../../../../resources/scripts/calc.js"></script>
    <%--<script type="text/javascript" src="../../../../resources/core/js/customer.js"></script>--%>
    <script type="text/javascript" src="../../../../resources/core/js/move-top.js.download"></script>
    <script type="text/javascript" src="../../../../resources/core/js/easing.js.download"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!-- //end-smooth-scrolling -->
    <!-- start-favicon -->
    <link rel="shortcut icon" href="../../../../resources/images/ico/favicon.ico" />
    <!-- //end-favicon -->
    <base href=".">
    <style type="text/css">
        #lleo_dialog * {
            color: #000 !important;
            font: normal 13px Arial, Helvetica !important;
            line-height: 15px !important;
            margin: 0 !important;
            padding: 0 !important;
            background: none !important;
            border: none 0 !important;
            position: static !important;
            vertical-align: baseline !important;
            overflow: visible !important;
            width: auto !important;
            height: auto !important;
            max-width: none !important;
            max-height: none !important;
            float: none !important;
            visibility: visible !important;
            text-align: left !important;
            text-transform: none !important;
            border-collapse: separate !important;
            border-spacing: 2px !important;
            box-sizing: content-box !important;
            box-shadow: none !important;
            opacity: 1 !important;
            text-shadow: none !important;
            letter-spacing: normal !important;
            -webkit-filter: none !important;
            -moz-filter: none !important;
            filter: none !important;
        }
        #lleo_dialog *:before,
        #lleo_dialog *:after {
            content: '';
        }
        #lleo_dialog iframe {
            height: 0 !important;
            width: 0 !important;
        }
        #lleo_dialog input::-webkit-input-placeholder {
            color: #aaa !important;
        }
        #lleo_dialog #lleo_optionsBtn img {
            width: 12px !important;
            height: 12px !important;
        }
        #lleo_dialog :hover {
            width: auto !important;
            z-index: 11 !important;
        }
        #lleo_dialog :hover {
            visibility: visible !important;
            opacity: 1 !important;
            -webkit-transition: opacity 0.3s !important;
            -webkit-transition-delay: 0.3s !important;
        }
        #lleo_dialog #lleo_trans a {
            color: #3F669F !important;
            text-decoration: none !important;
            text-overflow: ellipsis !important;
            padding: 1px 4px !important;
            overflow: hidden !important;
            float: left !important;
            width: 320px !important;
        }
        #lleo_dialog :hover {
            border: solid 1px #9FC2C9 !important;
            background: #EDF4F6 !important;
            cursor: pointer !important;
        }
        #lleo_dialog :hover {
            color: #83a0a6 !important;
        }
        #lleo_icons a {
            display: inline-block !important;
            width: 16px !important;
            height: 16px !important;
            margin: 0 10px -4px 3px !important;
            text-decoration: none !important;
            opacity: 0.5 !important;
            background: url(data:image/png;base64,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) !important;
        }
        #lleo_icons a:hover {
            opacity: 1 !important;
        }
        #lleo_icons a.lleo_google     {background-position:-34px 0 !important;}
        #lleo_icons a.lleo_multitran  {background-position:-64px 0 !important;}
        #lleo_icons a.lleo_lingvo     {background-position:-51px 0 !important; width: 12px !important;}
        #lleo_icons a.lleo_dict       {background-position:-17px 0 !important;}
        #lleo_icons a.lleo_linguee    {background-position:-81px 0 !important;}
        #lleo_icons a.lleo_michaelis  {background-position:-98px 0 !important;}
        #lleo_dialog #lleo_contextContainer {
            margin: 0 !important;
            padding: 3px 15px 8px 10px !important;
            background: #eee !important;
            background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#eee)) !important;
            background: -moz-linear-gradient(-90deg, #fff, #eee) !important;
            border-bottom: solid 1px #ddd !important;
            border-top-left-radius: 3px !important;
            border-top-right-radius: 3px !important;
            display: none !important;
            overflow: hidden !important;
        }
        #lleo_dialog #lleo_context b {
            line-height: 12px !important;
            color: #000 !important;
            font-weight: bold !important;
            font-size: 11px !important;
        }
        #lleo_dialog :hover {
            background: #f8f8f8 !important;
        }
        #lleo_dialog :hover {
            border: solid 1px #aaa !important;
        }
        #lleo_dialog :focus {
            background: #FFFEC9 !important;
        }
        #lleo_dialog * {
            display: none !important;
        }
        #lleo_dialog :hover{
            border: none !important;
        }
        #lleo_dialog #lleo_picOuter table {
            width: 44px !important;
            position: absolute !important;
            right: 0 !important;
            top: 0 !important;
            vertical-align: middle !important;
        }
        #lleo_dialog #lleo_picOuter td {
            width: 38px !important;
            height: 38px !important;
            vertical-align: middle !important;
            text-align: center !important;
        }
        #lleo_dialog #lleo_picOuter td div {
            height: 38px !important;
            overflow: hidden !important;
        }
        #lleo_youtubeExportBtn i {
            display: inline-block;
            width: 16px;
            height: 16px;
            background: 0 0 url(https://d144fqpiyasmrr.cloudfront.net/plugins/all/images/i16.png) !important;
        }
        /*** Parsed Lyrics Content *****************************/
        .lleo_lyrics tran {
            background: transparent !important;
            border-radius: 2px !important;
            text-shadow: none !important;
            cursor: pointer !important;
        }
        .lleo_lyrics tran:hover {
            color: #fff !important;
            background: #C77213 !important;
            -webkit-transition: all 0.1s !important;
            -moz-transition: all 0.1s !important;
            -ms-transition: all 0.1s !important;
            -o-transition: all 0.1s !important;
            transition: all 0.1s !important;
        }
        h3.error_message {
            align-content: center;
        }
    </style>
</head>
<body class="custom">
<!--banner-->
<%--<div class="banner">--%>
<%--<div class="effect5">--%>
<%--<div class="container">--%>
<%--<div class="logo">--%>
<%--<h1><a href=""><img src="../../../../resources/images/png/logo.png"--%>
<%--alt=""></a></h1>--%>
<%--</div>--%>
<%--<div class="top-nav">--%>
<%--<nav class="navbar navbar-default">--%>
<%--<div class="navbar-header">--%>
<%--<button type="button" class="navbar-toggle collapsed" data-toggle="collapse"--%>
<%--data-target="#bs-example-navbar-collapse-1">Menu</button>--%>
<%--</div>--%>
<%--<!-- Collect the nav links, forms, and other content for toggling -->--%>
<%--<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">--%>
<%--<ul class="nav navbar-nav navbar-center">--%>
<%--<li class="parent">--%>
<%--<a href="../" class="active">Головна</a>--%>
<%--</li>--%>
<%--<li class="parent">--%>
<%--<a href="../about" class="active">Про нас</a>--%>
<%--</li>--%>
<%--<li class="parent">--%>
<%--<a href="../products">Продукція</a>--%>
<%--</li>--%>
<%--<li class="parent">--%>
<%--<a href="../articles" class="active">Статті</a>--%>
<%--</li>--%>
<%--<li class="parent">--%>
<%--<a href="../sales">Акції</a>--%>
<%--</li>--%>
<%--<li class="parent">--%>
<%--<a href="../contacts">Контакти</a>--%>
<%--</li>--%>
<%--<li class="parent">--%>
<%--<a href="../calc" class="active">&nbsp; &nbsp; &nbsp; &nbsp; Розрахувати</a>--%>
<%--</li>--%>
<%--<li class="parent">--%>
<%--<a href="order/0/0" class="active">Замовити</a>--%>
<%--</li>--%>
<%--</ul>--%>
<%--</div>--%>
<%--</nav>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>
<%--</div>--%>