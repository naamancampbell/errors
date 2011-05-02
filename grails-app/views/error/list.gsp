
<%@ page import="au.id.clancampbell.errors.Error" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'error.label', default: 'Error')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
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
        </div>
        <g:render template="/footer" />
    </body>
</html>
