<span class="menubutton" style="float: right;margin: -0.5em">
              <g:form url='[controller: "error", action: "search"]'
                      id="searchableForm"
                      name="searchableForm"
                      method="get">
                <g:textField name="q" value="${params.q}" />
                <input type="submit" value="Search" />
            <sec:ifLoggedIn>
                &nbsp;|&nbsp; Logged in as <b><sec:username/></b> &nbsp;|<g:link controller="logout">logout</g:link>
            </sec:ifLoggedIn>
            <sec:ifNotLoggedIn>
                &nbsp;|&nbsp; <g:link controller='login' action='auth'>Login</g:link>
            </sec:ifNotLoggedIn>
              </g:form>
            </span>
