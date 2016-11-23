<!DOCTYPE html>
<html class="no-js css-menubar" lang="en">
<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
  <meta name="description" content="bootstrap material admin template">
  <meta name="author" content="">
  <title>SEDIPRO | INTRANET</title>
  <link rel="apple-touch-icon" href="assets/images/apple-touch-icon.png">
  <link rel="shortcut icon" href="assets/images/favicon.ico">

  <!-- Stylesheets -->
  <link rel="stylesheet" href="global/css/bootstrap.min3f0d.css?v2.2.0">
  <link rel="stylesheet" href="global/css/bootstrap-extend.min3f0d.css?v2.2.0">
  <link rel="stylesheet" href="assets/css/site.min3f0d.css?v2.2.0">

  <!-- Plugins -->
  <link rel="stylesheet" href="global/vendor/animsition/animsition.min3f0d.css?v2.2.0">

  <!-- Page -->
  <link rel="stylesheet" href="assets/examples/css/pages/login-v3.min3f0d.css?v2.2.0">

  <!-- Fonts -->
  <link rel="stylesheet" href="global/fonts/material-design/material-design.min3f0d.css?v2.2.0">
  <link rel="stylesheet" href="global/fonts/brand-icons/brand-icons.min3f0d.css?v2.2.0">
  <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,700'>

</head>
<body class="page-login-v3 layout-full">

  <!-- Page -->
  <div class="page animsition vertical-align text-center" data-animsition-in="fade-in"
  data-animsition-out="fade-out">
    <div class="page-content vertical-align-middle">
      <div class="panel">
        <div class="panel-body">
          <div class="brand">
            <img class="brand-img" src="assets/images/logo-blue.png" alt="sipec-sedipro-unt">
            <h2 class="brand-text font-size-18">SEDIPRO UNT</h2>
          </div>
          <form id="form_login" autocomplete="off">
            <div class="form-group form-material floating">
              <input type="text" class="form-control" name="email" autofocus="true" />
              <label class="floating-label">Email</label>
            </div>
            <div class="form-group form-material floating">
              <input type="password" class="form-control" name="password" />
              <label class="floating-label">Password</label>
            </div>
            <div class="form-group clearfix">
              <div class="checkbox-custom checkbox-inline checkbox-primary checkbox-lg pull-left">
                <input type="checkbox" id="inputCheckbox" name="remember">
                <label for="inputCheckbox">Recordarme</label>
              </div>              
            </div>
            <button type="button" class="btn btn-success btn-block btn-lg margin-top-40">Ingresar</button>
          </form>        
        </div>
      </div>

      <footer class="page-copyright page-copyright-inverse">        
        <p>© SEDIPRO UNT 2016. All RIGHT RESERVED.</p>
        <div class="social">
          <a class="btn btn-icon btn-pure" href="javascript:void(0)">
            <i class="icon bd-twitter" aria-hidden="true"></i>
          </a>
          <a class="btn btn-icon btn-pure" href="javascript:void(0)">
            <i class="icon bd-facebook" aria-hidden="true"></i>
          </a>
          <a class="btn btn-icon btn-pure" href="javascript:void(0)">
            <i class="icon bd-google-plus" aria-hidden="true"></i>
          </a>
        </div>
      </footer>
    </div>
  </div>
  <!-- End Page -->


  <!-- Core  -->
  <script src="global/vendor/jquery/jquery.min.js"></script>
  <script src="global/vendor/bootstrap/bootstrap.min.js"></script>
  <script src="global/vendor/animsition/animsition.min.js"></script>


  <!-- Plugins For This Page -->
  <script src="global/vendor/jquery-placeholder/jquery.placeholder.min.js"></script>

  <!-- Scripts -->
  <script src="global/js/core.min.js"></script>
  <script src="assets/js/site.min.js"></script>

 
  <script src="global/js/components/animsition.min.js"></script>
  <script src="global/js/components/jquery-placeholder.min.js"></script>
  <script src="global/js/components/material.min.js"></script>


  <script>
    (function(document, window, $) {
      'use strict';

      var Site = window.Site;
      $(document).ready(function() {
        Site.run();
      });
    })(document, window, jQuery);
  </script>


  <!-- Google Analytics -->
  <script>
    (function(i, s, o, g, r, a, m) {
      i['GoogleAnalyticsObject'] = r;
      i[r] = i[r] || function() {
        (i[r].q = i[r].q || []).push(arguments)
      }, i[r].l = 1 * new Date();
      a = s.createElement(o),
        m = s.getElementsByTagName(o)[0];
      a.async = 1;
      a.src = g;
      m.parentNode.insertBefore(a, m)
    })(window, document, 'script', 'global/analytics/analytics.js',
      'ga');

    ga('create', 'UA-65522665-1', 'auto');
    ga('send', 'pageview');
  </script>
</body>
</html>