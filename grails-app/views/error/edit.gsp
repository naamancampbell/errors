

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
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
	    <g:render template="/layouts/commonnav" />
        </div>
        <div class="body">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${errorInstance}">
            <div class="errors">
                <g:renderErrors bean="${errorInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${errorInstance?.id}" />
                <g:hiddenField name="version" value="${errorInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="title"><g:message code="error.title.label" default="Title" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: errorInstance, field: 'title', 'errors')}">
                                    <g:textField name="title" value="${errorInstance?.title}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="category"><g:message code="error.category.label" default="Category" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: errorInstance, field: 'category', 'errors')}">
                                    <g:select name="category.id" from="${au.id.clancampbell.errors.Category.list()}" optionKey="id" value="${errorInstance?.category?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="opEnv"><g:message code="error.opEnv.label" default="Op Env" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: errorInstance, field: 'opEnv', 'errors')}">
                                    <g:textField name="opEnv" value="${errorInstance?.opEnv}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="errorMsg"><g:message code="error.errorMsg.label" default="Error Msg" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: errorInstance, field: 'errorMsg', 'errors')}">
                                    <g:textArea name="errorMsg" cols="40" rows="5" value="${errorInstance?.errorMsg}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="solution"><g:message code="error.solution.label" default="Solution" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: errorInstance, field: 'solution', 'errors')}">
                                    <g:textArea name="solution" cols="40" rows="5" value="${errorInstance?.solution}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                  <label for="URL"><g:message code="error.URL.label" default="URL" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: errorInstance, field: 'URL', 'errors')}">
                                    <g:textField name="URL" value="${errorInstance?.URL}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
            <sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_USER">
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" /></span>
		  <sec:ifAllGranted roles="ROLE_ADMIN">
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
		  </sec:ifAllGranted>
                </div>
	    </sec:ifAnyGranted>
            </g:form>
	  <g:render template="/footer" />
        </div>
    </body>
</html>
