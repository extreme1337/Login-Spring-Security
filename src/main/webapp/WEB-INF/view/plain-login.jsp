<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login Page</title>
    <style>
        .failed{
            color:red;
        }
    </style>
</head>
<body>
    <h3>Custom Login Page</h3>
    <form:form action="${pageContext.request.contextPath}/authenticateTheUser" method="POST">
<%--        check for login error--%>
        <c:if test="${param.error != null}">
            <i class="failed">Sorry! You entered invalid username/password</i>
        </c:if>
        <p>
            User name: <input type="text" name="username"/>
        </p>
        <p>
            Password: <input type="password" name="password"/>
        </p>
        <input type="submit" value="Login"/>
    </form:form>
</body>
</html>