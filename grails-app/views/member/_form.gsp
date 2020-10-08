<div class="form-group">
    <label><g:message code="first.name"/> </label>
    <g:textField class="form-control" name="firstName" value="${member?.firstName}"
                 placeholder="Please, enter first name"/>
</div>

<div class="form-group">
    <label><g:message code="last.name"/> </label>
    <g:textField class="form-control" name="lastName" value="${member?.lastName}"
                 placeholder="Please, enter last name"/>
</div>

<div class="form-group">
    <label><g:message code="email"/> </label>
    <g:field class="form-control" name="email" value="${member?.email}"
                 placeholder="example@mail.com" type="email"/>
</div>

<g:if test="${!edit}">
    <div class="form-group">
        <label><g:message code="password"/> </label>
        <g:passwordField class="form-control" name="password" value="${member?.password}"/>
    </div>
</g:if>
