<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="layout" content="main" />
    <title>errors</title>
  </head>
  <body>
    <g:if test="${flash.message}">
      <div class="message">${flash.message}</div>
    </g:if>

    <div class="body">
      <div class="list">
        <g:each in="${searchResults}" status="i" var="error">

        <div class="error">
          <h2>
            <g:link action="show"
                    id="${error.id}">${error.title}</g:link>
          </h2>
          <p>Category: ${fieldValue(bean: errorInstance, field: "category")}</p>
          <span class="error-date">${fieldValue(bean: errorInstance, field: "dateCreated")}</span>
        </div>

        </g:each>
      </div>
    </div>
    <div class="paginateButtons">
      <g:paginate total="${resultCount}" params="${flash}"/>
    </div>
  </body>
</html>
