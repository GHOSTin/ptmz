<!DOCTYPE html>
<!--suppress ALL -->
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>ПМТЗ</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Le styles -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/style.css" rel="stylesheet">
    <link href="/css/camera.css" rel="stylesheet">
    <link href="/css/prettyPhoto.css" rel="stylesheet">
    <link href="/css/icons.css" rel="stylesheet">
    <link href="/css/skin-red.css" rel="stylesheet">
    <link href="/css/bootstrap-responsive.css" rel="stylesheet">
    {% block css %}{% endblock css %}
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
    <script src="./js/html5shiv.js"></script>
    <![endif]-->
    <!--[if IE]>
    <style>
      .isotope-hidden { display: none; }
    </style>
    <![endif]-->
  </head>
  <body class="boxed">
    <div class="linebordertop"></div>
    <div class="topheader"></div>
    <div class="lineborderbottom"></div>

    <div class="container">
      <div class="row-fluid">
        <div class="span4">
          <a class="btn btn-navbar pull-right" data-toggle="collapse" data-target=".nav-collapse">
            <i class="icon-align-justify"></i>
          </a>
          <a href="/"><img src="/images/ptmz.png" class="logo" style="padding-top:20px" alt="Логотип ПТМЗ"></a>
        </div>
        <div class="span4 offset4">
          <div class="rightinfo text-right">
            <i class="icon-phone"></i> 8(3439) 29-95-10, 29-95-74
            <br><i class="icon-print"></i> 8(3439) 29-95-23
            <br><i class="icon-envelope"></i> ooo-ptmz@yandex.ru
          </div>
        </div>
      </div>
      <div class="row-nav navbar">
        <div class="nav-collapse collapse">
          <div class="navbar-inner">
            {% include 'menu.tpl' %}
          </div>
        </div>
      </div>
    </div>
    <div class="body" style="z-index: 0;">
      <div class="container">
          {% block content %}{% endblock content %}
      </div>
    </div>
    <div class="footer footerdark">
      <div class="container">
        <div class="row-fluid">
          {% include 'footer.tpl' %}
        </div>
      </div>
    </div>
    <div class="footerbottom footerbottomdark">
      <div class="container container">
        <div class="row-fluid">
          <!-- left -->
          <div class="span4 smallspacetop">
            <p class="smaller">
              <span class="copyright">© </span> Copyright 2014 Основные локальные сервисы.
            </p>
          </div>

        </div>
      </div>
      <div class="text-center wraptotop">
        <a class="totop"><i class="icon-chevron-up"></i></a>
      </div>
    </div>
    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.js"></script>
    <script src="/js/plugins.js"></script>
    <script src="/js/prettyPhoto.js"></script>
    <script src="/js/custom.js"></script>
    {% block js %}{% endblock js %}
  </body>
</html>
