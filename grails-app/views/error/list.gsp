
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
                <table>
                    <thead>
                        <tr>
                        
                            <g:sortableColumn property="id" title="${message(code: 'error.id.label', default: 'Id')}" />
                        
                            <g:sortableColumn property="errorCat" title="${message(code: 'error.errorCat.label', default: 'Error Cat')}" />
                        
                            <g:sortableColumn property="title" title="${message(code: 'error.title.label', default: 'Title')}" />
                        
                            <g:sortableColumn property="opEnv" title="${message(code: 'error.opEnv.label', default: 'Op Env')}" />
                        
                            <g:sortableColumn property="errorMsg" title="${message(code: 'error.errorMsg.label', default: 'Error Msg')}" />
                        
                            <g:sortableColumn property="solution" title="${message(code: 'error.solution.label', default: 'Solution')}" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${errorInstanceList}" status="i" var="errorInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${errorInstance.id}">${fieldValue(bean: errorInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: errorInstance, field: "errorCat")}</td>
                        
                            <td>${fieldValue(bean: errorInstance, field: "title")}</td>
                        
                            <td>${fieldValue(bean: errorInstance, field: "opEnv")}</td>
                        
                            <td>${fieldValue(bean: errorInstance, field: "errorMsg")}</td>
                        
                            <td>${fieldValue(bean: errorInstance, field: "solution")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${errorInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
