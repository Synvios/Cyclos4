<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html>
<html language="${initializationData.builtinLanguage.isoLanguage}">
    <head>
        <title>${initializationData.applicationName}</title>

        <c:if test="${not empty initializationData.applicationDescription}">
           <meta name="description" content="<spring:escapeBody htmlEscape="true">${initializationData.applicationDescription}</spring:escapeBody>">
        </c:if>

        <meta name="owner" content="<spring:escapeBody htmlEscape="true">${license.organizationName}</spring:escapeBody>">
        <meta name="copyright" content="<spring:escapeBody htmlEscape="true">Runs on Cyclos ${cyclosVersion} (revision ${cyclosCommitId}) registered with key ${license.licenseKey}</spring:escapeBody>">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        
        <link id="shortcutIconLink" rel="shortcut icon" href="${shortcutIconUrl}">
        <jsp:include page="basicStyle.html" flush="false" />
        <jsp:include page="root-path.jsp" flush="false" />
        
        <script>
            var cyclosVersion = "${cyclosVersion}";
            var configurationId = "${initializationData.configurationId}";            
            var languageId = "${initializationData.languageId}";
            var languageLastModified = "${initializationData.languageLastModified}";
            var themeId = "${initializationData.themeId}";
            var themeLastModified = "${initializationData.themeLastModified}";
            var pushNotificationsClientId = "${pushNotificationsClientId}";
            var countries = "<spring:escapeBody javaScriptEscape='true'>${countries}</spring:escapeBody>";
            var resourceCacheKey = "${resourceCacheKey}";
            <c:choose><c:when test="${not empty notificationMessage}">
                <c:set var="notificationMessageJS"><spring:escapeBody javaScriptEscape="true">${notificationMessage}</spring:escapeBody></c:set>
                var notificationLevel = "${notificationLevel}";
                var notificationMessage = "${notificationMessageJS}";
                var notificationOnly = "${notificationOnly}";
            </c:when><c:otherwise>
                var notificationLevel = null;
                var notificationMessage = null;
                var notificationOnly = false; 
                if (localStorage) {
                	notificationLevel = localStorage.notificationLevel;
                	notificationMessage = localStorage.notificationMessage;
                	delete localStorage.notificationLevel;
                	delete localStorage.notificationMessage;
                }
            </c:otherwise></c:choose>

            // IE < 10 doesn't support native Base64 methods
            if (typeof(window.atob) === "undefined") {
                var sc = document.createElement("script");
                sc.src = rootPath + "/js/base64.js";
                sc.onload = function() {
                    window.btoa = Base64.encode;
                    window.atob = Base64.decode;
                }                
                document.head.appendChild(sc);
            }
            // IE doesn't support EventSource
            if (typeof(window.EventSource) === "undefined") {
                var sc = document.createElement("script");
                sc.src = rootPath + "/js/eventsource.js";
                document.head.appendChild(sc);
            }
            
            // Include the Roboto font styles
            includeStyle("/fonts/roboto.css?");
            
            // Include the style sheet
            var css = includeStyle("/content/themes/" + themeId + ".css?_k=" + resourceCacheKey
                + "&lastModified=" + themeLastModified);
            css.setAttribute("id", "themeCssLink");

            includeScript("/js/script.min.js");
            
            function initialize() {
                if (cssua.ua.ie >= 8.0 || cssua.ua.webkit || cssua.ua.firefox >= 10.0) {
                    startLoading();
                    includeScript("/cyclos.gwt/cyclos.gwt.nocache.js", true);
                } else {
                    document.body.innerHTML = "<div id='browserNotSupported'><div id='browserNotSupportedFrame'>${browserNotSupportedJS}</div></div>";
                }
            }             
        </script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/blueimp-load-image/3.0.0/load-image.all.min.js"
            defer="defer" async="true"
            integrity="sha256-Gl9SC24yrH0WrCfsw1J+HxkemV99+AoAkxOVs3fhtHo="
            crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@zxing/library@0.15.2/umd/index.min.js"
            defer="defer" async="true"
            integrity="sha256-5neFo09S0iIU7M0PNa1w/jaxskTtpCb8zdmlFaw5t9M="
            crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/iframe-resizer/4.2.11/iframeResizer.min.js"
            id="iframeResizerScript" defer="defer" async="true"
            integrity="sha512-HY1lApSG7xxx8mYzs/lxRs+c5AaDThRaa3pvQB6puiswvf2lWqMJVf+8qSGiL4ZXfHQoPIqbd1TlpqfycPo3cQ=="
            crossorigin="anonymous"></script>
    </head>
    <body class="main" onload="initialize()">
        <iframe src="javascript:''" id="__gwt_historyFrame" style="width:0;height:0;border:0;position:absolute;"></iframe>
        <div id="problemsLoading" style="display:none"><div>${problemsLoading}</div></div>
        <div id="rootSpinner">
            <svg version="1.1"
              xmlns="http://www.w3.org/2000/svg"
              xmlns:xlink="http://www.w3.org/1999/xlink"
              width="40"
              height="40"
              viewBox="0 0 40 40">
              <path opacity="0.2" d="M20.201,5.169c-8.254,0-14.946,6.692-14.946,14.946c0,8.255,6.692,14.946,14.946,14.946
                s14.946-6.691,14.946-14.946C35.146,11.861,28.455,5.169,20.201,5.169z M20.201,31.749c-6.425,0-11.634-5.208-11.634-11.634
                c0-6.425,5.209-11.634,11.634-11.634c6.425,0,11.633,5.209,11.633,11.634C31.834,26.541,26.626,31.749,20.201,31.749z">
              </path>
              <path opacity="0.7" d="M26.013,10.047l1.654-2.866c-2.198-1.272-4.743-2.012-7.466-2.012h0v3.312h0
                C22.32,8.481,24.301,9.057,26.013,10.047z"
                transform="rotate(200.068 20 20)">
                <animateTransform attributeType="xml" attributeName="transform" type="rotate"
                  from="0 20 20" to="360 20 20" dur="0.7s" repeatCount="indefinite"></animateTransform>
              </path>
            </svg>
        </div>
        <c:set var="browserNotSupportedJS"><spring:escapeBody javaScriptEscape="true">${browserNotSupported}</spring:escapeBody></c:set>
        <noscript>
            <div id='browserNotSupported'><div id='browserNotSupportedFrame'>${browserNotSupported}</div></div>
        </noscript>
    </body>
</html>
