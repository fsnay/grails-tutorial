<%--
  Created by IntelliJ IDEA.
  User: NFarias
  Date: 08/10/2020
  Time: 14:09
--%>

<meta name="layout" content="main"/>

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['Update']"/>
    </div>

    <div class="card-body">
        <g:form controller="member" action="update">
            <g:hiddenField name="id" value="${member.id}"/>
            <g:render template="form" model="[edit:'yes']"/>
            <div class="form-action-panel">
                <g:submitButton class="btn btn-primary" name="save" value="${g.message(code: "update")}"/>
                <g:link class="btn btn-primary" controller="member" action="index">
                    <g:message code="cancel"/>
                </g:link>
            </div>
        </g:form>
    </div>
</div>