<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
    <title>Spring MVC Feedback Handling</title>
</head>
<body>

<h2>Employee Information</h2>
<form:form method="POST" action="/HelloWeb/addFeedback">
   <table>
    <tr>
        <td><form:label path="empId">EmpID</form:label></td>
        <td><form:input path="empId" /></td>
    </tr>
    <tr>
        <td><form:label path="empName">Name</form:label></td>
        <td><form:input path="empName" /></td>
    </tr>
    <tr>
        <td><form:label path="feedback">Feedback</form:label></td>
        <td><form:input path="feedback" /></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="Submit"/>
        </td>
    </tr>
</table>  
</form:form>
</body>
</html>
