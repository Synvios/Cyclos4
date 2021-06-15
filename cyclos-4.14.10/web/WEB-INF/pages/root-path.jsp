<%@ page contentType="text/html; charset=UTF-8" session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script>
    var RESERVED_URIS = ${reservedUris == null ? '[]' : reservedUris};
    
    function getRootPath() {
	    var path = window.location.pathname;
	    if (path.length > 0 && path.charAt(0) == '/') {
	    	path = path.substr(1);
	    }
	    if (path == '') return '';
	    var parts = path.split('/');
	    var rootPos = 0;
	    for (var i = 0; i < parts.length; i++) {
	    	var part = parts[i];
	    	var pos = RESERVED_URIS.indexOf(part);
	    	if (pos >= 0) {
	    		break;
	    	} else {
	    		rootPos++;
	    	}
	    }
	    if (rootPos <= 0) return '';
	    return '/' + parts.slice(0, rootPos).join('/');
    }
    //set the full URL
    var rootPath = window.location.protocol + '//' + window.location.host + getRootPath();
    
    function includeScript(file, defer) {
        var src = rootPath + file;
        if (src.indexOf('?') < 0) {
            src += "?_k=${resourceCacheKey}";
        }
        var script = document.createElement('script');
        script.setAttribute('src', src);
        if (defer) {
            script.setAttribute('defer', 'defer');        	
        }
        document.head.appendChild(script);
        return script;
    }

    function includeStyle(file, media) {
        var src = rootPath + file;
        if (src.indexOf('?') < 0) {
        	src += "?_k=${resourceCacheKey}";
        }
        
        var link = document.createElement('link');
        link.setAttribute('rel', 'stylesheet');
        link.setAttribute('type', 'text/css');
        link.setAttribute('href', src);
        if (media) {
        	link.setAttribute('media', media);          
        }
        document.head.appendChild(link);
        return link;
    }

</script>