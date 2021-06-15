<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<!doctype html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link id="shortcutIcon" rel="icon"
    href="data:image/png;base64,iVBORw0KGgo=">
  <script>
    var href = window.location.pathname;
    if (!href.endsWith('/')) {
      href = href + '/';
    }
    var pos = href.indexOf('/consent/');
    var base = '/';
    if (pos >= 0) {
      base = href.substr(0, pos + ('/consent/'.length));
    }
    var baseTag = document.createElement('base');
    baseTag.href = base;
    document.head.appendChild(baseTag)
    var apiRoot = base === '/' ? 'consent' : base;
    var data = ${data == null ? null : data}
    var translations = ${translations == null ? null : translations}
  </script>
<link rel="stylesheet" href="styles.e47472b784065bdd5628.css">${meta}
</head>

<body>
  <app-root></app-root>

        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'runtime-es2015.1eba213af0b233498d9d.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        
        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'runtime-es5.1eba213af0b233498d9d.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        
        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'polyfills-es5.049f620af8c864cf4d88.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        
        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'polyfills-es2015.f2c5ab749249a66bdf26.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        
        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'main-es2015.9893634f34ba8affa0b4.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        
        <script>
            document.addEventListener('load', new function () {
                var s = document.createElement('script');
                s.setAttribute('src', 'main-es5.9893634f34ba8affa0b4.js');
                s.setAttribute('defer', 'true');
                document.body.appendChild(s);
            }, false);
        </script>
        </body>

</html>
