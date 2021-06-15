<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<!DOCTYPE html>
<html language="${initializationData.builtinLanguage.isoLanguage}">
    <head>
        <title>${initializationData.applicationName}</title>

        <meta name="owner" content="<spring:escapeBody htmlEscape="true">${license.organizationName}</spring:escapeBody>">
        <meta name="copyright" content="<spring:escapeBody htmlEscape="true">Runs on Cyclos ${cyclosVersion} (revision ${cyclosCommitId}) registered with key ${license.licenseKey}</spring:escapeBody>">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <jsp:include page="basicStyle.html" flush="false" />
        <jsp:include page="root-path.jsp" flush="false" />

        <link rel="icon" href="${shortcutIconUrl}">
        
        <script>
            includeStyle("/fonts/roboto.css?");
            includeStyle("${themeUrl}");
        </script>
        
        <link rel="stylesheet" href="${cssUrl}">
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
        
        <style>
            #licensedTo {
              background-color: #FFFFFF;
              border-top: 1px solid #CCCCCC;
              color: #333333;
              display: block;
              height: auto;
              margin-top: 40px;
              opacity: 1;
              overflow: auto;
              padding-top: 20px;
              text-align: center;
            }
        </style>                            
    </head>
    <body class="help">
    	<a name="top"></a>
        <div class="mainFull">
            <div class="mainSized layoutBar-small">
                <div class="mainContent">
                    <div class="mainCenter">
                        <div class="helpContainer">
                            ${helpContent}
                        </div>
                        <div id="licensedTo">
                            <spring:escapeBody htmlEscape="true">${licensedTo}</spring:escapeBody>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
