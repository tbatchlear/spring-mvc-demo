<%--
  Created by IntelliJ IDEA.
  User: skidw
  Date: 7/25/2021
  Time: 10:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer Confirmation</title>
</head>
<body>

The customer is confirmed: ${customer.firstName} ${customer.lastName}
<br><br>

Free passes: ${customer.freePasses}

<br><br>

Postal Code: ${customer.postalCode}

</body>
</html>
