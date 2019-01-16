<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="forms" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE  html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-A-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Crete n account</title>
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/common.css" rel="stylesheet">

    <script src="https://oss.maxcdn.com/htmp5hiv/3.7.2/html5hiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>
<body>
<div class="container">
      <%--@elvariable id="userForm" type=""--%>
      <form:form method="POST" modelAttribute="userForm" class="form-signit">
        <h2 class="form-signin-heading">Create your account</h2>
    <spring:bind path="username">
        <div class="form-group ${status.error ? 'has-error' : ''}">
            <form:input type="text" path="username " class="form-conrol" placeholder="Username"
                  autofocus="true" ></form:input>
            <forms:errors patch="username"></forms:errors>
        </div>
    </spring:bind>
    <spring:bind path="password">
        <div class="form-group" ${status.error ? 'has-error' : ''}
           <form:input type="password" path="paswordConfirm" clas="form-control"
                       placeholder="Confirm yor passord"></form:input>
        <form:errors path="passwordconfirm"></form:errors>
</div>
    </spring:bind>
<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
</form:form>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>