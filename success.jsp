<%-- 
    Document   : success
    Created on : 6 Ιαν 2012, 6:27:06 μμ
    Author     : elina
--%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>

<link rel="stylesheet" type="text/css" href="stylesheet.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Success</title>
    </head>
    <body>
    <logic:present cookie="logged">
        <h1>Congratulations!</h1>

        <p>You have successfully logged in.</p>       
    </logic:present>


    <p>Your name is: <bean:write name="LoginForm" property="name" />.</p>

    <p>Your email address is: <bean:write name="LoginForm" property="email" />.</p>
    
    <p> <html:link forward="index">ok, take me back to shop now!</html:link></p>

</body>
</html>
