<%--
  Created by IntelliJ IDEA.
  User: NFarias
  Date: 07/10/2020
  Time: 20:30
--%>
<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['Create']"/>
    </div>

    <div class="card-body">
        <g:form controller="member" action="save">
            <g:render template="form"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "save")}"/>
                <g:link class="btn btn-primary" controller="member" action="index">
                    <g:message code="cancel"/>
                </g:link>
            </div>
        </g:form>
    </div>
</div>