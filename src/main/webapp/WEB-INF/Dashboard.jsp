<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
</head>
<body>
<div align="center">
    <h1>Dashboard</h1>

    <table  border="3px">
        <thead>
            <tr>
                <th>devices Name</th>
                <th>Mac Address</th>
                <th>Last Image</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
         <c:forEach items="${devices}" var="devices">
            <tr>
                <td>${devices.name}</td>
                <td>${devices.macAdd}</td>
                <td>${devices.status}</td>
                <td>
                    <a href="#">View</a> |
                    <a href="#">Edit</a> |
                    <a href="#">Delete</a>
                </td>
            </tr>
            <tr>
                 <td>${devices.name}</td>
                <td>${devices.macAdd}</td>
                <td>${devices.status}</td>
                <td>
                    <a href="#">View</a> |
                    <a href="#">Edit</a> |
                    <a href="#">Delete</a>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
    </div>
</body>
</html>