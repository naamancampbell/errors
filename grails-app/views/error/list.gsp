
<%@ page import="au.id.clancampbell.errors.Error" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'error.label', default: 'Error')}" />
        <title>errors :: an intelligent KB system</title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
	<div id="catnav">
            <div class="homePagePanel">

                <div class="panelTop"></div>
                <div class="panelBody">
                    <h1>Error Categories</h1>
                    <ul>
                        <li>App version: 0.1</li>
                        <li>Grails version: 1.3.7</li>
                        <li>Groovy version: 1.7.8</li>

                        <li>JVM version: 1.6.0_24</li>
                        <li>Controllers: 3</li>
                        <li>Domains: 2</li>
                        <li>Services: 0</li>
                        <li>Tag Libraries: 10</li>
                    </ul>
                </div>
                <div class="panelBtm"></div>
            </div>
        </div>
        <div class="body">
            <h1>errors :: an intelligent KB system</h1>
	    <p><b>errors</b> is an attempt to improve the Google searches 
		of sysadmins by providing solutions to
		specific error messages.</p>
            <h1>Latest Errors</h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="list">
              <g:each in="${errorInstanceList}" status="i" var="errorInstance">
		<div class="error">
                  <h2><g:link action="show" id="${errorInstance.id}">${fieldValue(bean: errorInstance, field: "title")}</g:link></h2>
                  <p>Category: ${fieldValue(bean: errorInstance, field: "category")}</p>
                  <span class="error-date">${fieldValue(bean: errorInstance, field: "dateCreated")}</span>
		</div>
	      </g:each>
	    </div>   
          <g:render template="/footer" />
        </div>
    </body>
</html>
