<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script>
    var href = window.location.pathname;
    if (!href.endsWith('/')) {
      href = href + '/';
    }
    var pos = href.indexOf('/pay/')
    var base = '/';
    if (pos >= 0) {
      base = href.substr(0, pos + ('/pay/'.length));
    }
    var baseTag = document.createElement('base');
    baseTag.href = base;
    document.head.appendChild(baseTag)
  </script>
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
    rel="stylesheet">
  <link
    href="https://fonts.googleapis.com/css?family=Roboto:400,500&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese"
    rel="stylesheet">
  <link id="pageIcon" rel="icon" href="data:image/png;base64,iVBORw0KGgo=">
  <script>
    var href = window.location.pathname;
    if (!href.endsWith('/')) {
      href = href + '/';
    }
    var pos = href.indexOf('/pay/')
    var base = '/';
    if (pos >= 0) {
      base = href.substr(0, pos + ('/pay/'.length));
    }
    var baseTag = document.createElement('base');
    baseTag.href = base;
    document.head.appendChild(baseTag)

    var apiRoot = base === '/' ? 'api' : base + "../api";
    var dataForUi = ${dataForUi == null ? null : dataForUi}
    var translations = ${translations == null ? null : translations}
    var ticket = ${ticket == null ? null : ticket}
    var easyInvoice = ${easyInvoice == null ? null : easyInvoice}
    var error = ${error == null ? null : error}

    // Returns if the device browser is Android based
    function isAndroid() {
      var ua = navigator.userAgent.toLowerCase(); return ua.indexOf("android") > -1;
    }
    // Returns if the device browser is IOS based
    function isIos() {
      var ua = navigator.userAgent.toLowerCase(); return ua.indexOf("ipad") > -1 || ua.indexOf("iphone") > -1 || ua.indexOf("ipod") > -1;
    }
    var isAndroid = isAndroid();
    var isIos = isIos();
    var isMobile = isAndroid || isIos;
  </script>
<link rel="stylesheet" id="stylesLink"  href="${styleUrl}" >${meta}
</head>

<body>
  <app-root></app-root>

        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'runtime.7d7e9038a1cdbceb3d53.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        
        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'polyfills.c5a41d8a6de77ce34951.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        
        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'scripts.036706e62fdf599de5f9.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        
        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'main.d71cc4ab49161b070473.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        </body>

</html>
