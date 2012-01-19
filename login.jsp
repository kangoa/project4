<%-- 
    Document   : login
    Created on : 6 Ιαν 2012, 5:00:31 μμ
    Author     : elina
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="stylesheet.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
    </head>
    <body>
        <h1>Login Form !</h1>

        <html:form action="/login">
            <table border="1">               
                <tbody>
                    <tr>
                        <td colspan="2">
                            <bean:write name="LoginForm" property="error" filter="false"/>
                            &nbsp;</td>  
                    </tr>
                    <tr>
                        <td>Enter your name:</td>
                        <td><html:text property="name" /></td>
                    </tr>
                    <tr>
                        <td>Enter your email:</td>
                        <td><html:text property="email" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> <html:submit value="Login" /></td>
                    </tr>
                </tbody>
            </table>
        </html:form>
    </body>
</html>