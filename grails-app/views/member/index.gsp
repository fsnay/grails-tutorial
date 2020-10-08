<%--
  Created by IntelliJ IDEA.
  User: NFarias
  Date: 08/10/2020
  Time: 02:00
--%>

<meta name="layout" content="main">

<div class="card">
    <div class="card-header">
        <g:message code="member" args="['List Of']"/>

        <span class="float-right">
            <div class="btn-group">
                <g:form controller="member" action="index" method="GET">
                    <div class="input-group" id="search-area">
                        <g:select class="form-control" name="colName"  value="${params?.colName}" optionKey="key"
                            from="[firstName:'First Name',lastName:'Last Name',email:'E-mail']" optionValue="value"/>
                        <g:textField class="form-control" name="colValue" value="${params?.colValue}"/>
                        <span class="input-group-btn">
                            <button class="btn btn-default" type="submit">Search</button>
                        </span>
                    </div>
                </g:form>
            </div>
        </span>
    </div>

    <div class="card-body">
        <span class="float-right">
            <div class="btn-group">
                <g:link class="btn btn-primary" controller="member" action="create"><g:message code="New"/></g:link>
            </div>
        </span>
        <table class="table table-bordered">
            <thead class="thead-light">
            <tr>
                <g:sortableColumn property="firstName" title="${g.message(code:'first.name')}"/>
                <g:sortableColumn property="lastName" title="${g.message(code:'last.name')}"/>
                <g:sortableColumn property="email" title="${g.message(code:'email')}"/>
                <th class="action-row"><g:message code="action"/> </th>
            </tr>
            </thead>
            <tbody>
                <g:each in="${memberList}" var="data">
                    <tr>
                        <td>${data?.firstName}</td>
                        <td>${data?.lastName}</td>
                        <td>${data?.email}</td>

                        <td>
                            <div class="btn-group">
                                <g:link class="btn btn-secondary" controller="member" action="details" id="${data.id}"><i class="fas fa-eye"></i></g:link>
                                <g:link class="btn btn-secondary" controller="member" action="edit" id="${data.id}"><i class="fas fa-edit"></i></g:link>
                                <g:link class="btn btn-secondary delete-confirmation" controller="member" action="delete" id="${data.id}"><i class="fas fa-trash"></i></g:link>
                            </div>
                        </td>
                    </tr>
                </g:each>
            </tbody>
        </table>
        <div class="paginate">
            <g:paginate total="${total ?: 0}"/>
        </div>
    </div>
</div>