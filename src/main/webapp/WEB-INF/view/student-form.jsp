<%--
  Created by IntelliJ IDEA.
  User: skidw
  Date: 7/25/2021
  Time: 6:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Student Registration Form</title>
</head>
<body>

    <form:form action="processForm" modelAttribute="student">

        First name: <form:input path="firstName" />
        <br><br>
        Last name: <form:input path="lastName" />
        <br><br>

        Country:
        <form:select path="country">
<%--            <form:options items="${theCountryOptions}" />--%>
            <form:option value="Brazil" label="Brazil" />
            <form:option value="France" label="France" />
            <form:option value="Germany" label="Germany" />
            <form:option value="India" label="India" />
        </form:select>

        <br><br>


        Favorite Language:
        <form:radiobuttons path="favoriteLanguage" items="${student.favoriteLanguageOptions}" />

        <br><br>

        Operating Systems:
        Linux <form:checkbox path="operatingSystems" value="Linux" />
        Mac OS <form:checkbox path="operatingSystems" value="Mac OS" />
        MS Windows <form:checkbox path="operatingSystems" value="MS Windows" />

        <br><br>

        <input type="submit" value="Submit" />


    </form:form>


</body>
</html>
