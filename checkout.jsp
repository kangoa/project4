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
        <title>Checkout Success</title>
    </head>
    <body>
    <logic:present cookie="logged">
        <h1>Congratulations!</h1>

        <p>You have successfully ordered !.</p>  
        <p> The bill of <bean:write name="BasketForm" property="sum"/> euros will be sent to <bean:write name="LoginForm" property="email" />'s address now... </p>
    </logic:present>

    <p> <html:link forward="index">ok, take me back to shop again!</html:link></p>

</body>
</html>
