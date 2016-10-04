<%-- 
    Document   : adduser
    Created on : Sep 9, 2016, 10:31:36 PM
    Author     : Dragan
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,400italic,700,700italic&subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">
        <title>Add User</title>
    </head>
    <body>
       <%
                if (session.getAttribute("username") == null) {
            %>
            <style>
                #profil{
                    display: none;
                }
                
            </style>
            <%}
            
                if (session.getAttribute("username") != null) {
            %>
            <style>
                #login{
                    display: none;
                }
                
            </style>
            <%}%>
        <style>
            .error {
                color: #ff0000;
                font-style: italic;
                font-size: 12px;
            }
        </style>
        <div id="wrapper">
            <c:url value="/resources/images/polovniautomobili1.gif" var="slika1" />
            <c:url var="slika2" value="/resources/images/slika1mini.jpg" />
            <c:url var="slika3" value="/resources/images/slika2mini.jpg" />
            <%@include file="Html/header.html"%>
            <h1>Add User : </h1>
                <div align ="center">
                    <form:form method="post" action="adduser" commandName="addUser">
                        <table>
                            <tr>
                                <td>Ime i Prezime :</td>
                                <td><form:input path="name"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><form:errors path="name" cssClass="error"/></td>
                            </tr>
                            <tr>
                                <td>Email :</td>
                                <td><form:input path="email"/></td> 
                            </tr>
                            <tr>
                                <td></td>
                                <td><form:errors path="email" cssClass="error"/></td>
                            </tr>

                            <tr>
                                <td>Username :</td>
                                <td><form:input path="username"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><form:errors path="username" cssClass="error"/></td>
                            </tr>
                            <tr>
                                <td>Password :</td>
                                <td><form:password path="password"/></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td><form:errors path="password" cssClass="error"/></td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <input type="submit" value="Add User">
                                </td>
                            </tr>

                        </table>

                    </form:form>
                </div>
            
            
            <%@include file="Html/footer.html"%>
        </div>
    </body>
</html>
