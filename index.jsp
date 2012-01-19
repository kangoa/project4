<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<html:html lang="true">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><bean:message key="welcome.title"/></title>
        <html:base/>
    </head>
    <body style="background-color: white">
        
        <h1> In this shopping mall you can view our production! </h1>

          <html:form action="/basket" >

            <table border="1" style="background-color: orange">
               
                <tr>
                    <th>Product</th>
                    <th>Value/Kg</th>
                    <th>Killos</th>
                    <th>Total</th>
                </tr>
                <tr>
                    <td>Carrots</td>
                    <td>       
                        ${initParam.carrotprice}        
                    </td>
                    <td>      
                        <html:text property="carrots" size="6" maxlength="6"/>     

                    </td>

                    <td>    
                        <bean:write name="BasketForm" property="carrotsum"/>  
                    </td>
                </tr>

                <tr>
                    <td>Grapes</td>
                    <td>
                        ${initParam.grapeprice}
                    </td>
                    <td>
                        <html:text property="grapes" size="6" maxlength="6"/>    
                    </td>
                    <td>
                        <bean:write name="BasketForm" property="grapesum"/>  
                    </td>
                </tr>
                <tr>
                    <td>Figs</td>
                    <td>
                        ${initParam.figprice}
                    </td>
                    <td>   
                        <html:text property="figs" size="6" maxlength="6"/>
                    </td>
                    <td>
                        <bean:write name="BasketForm" property="figsum"/>  
                    </td>
                </tr>
                <tr>
                    <td>Nuts</td>
                    <td>
                        ${initParam.nutprice}
                    </td>
                    <td>
                        <html:text property="nuts" size="6" maxlength="6"/>
                    </td>

                    <td> 
                        <bean:write name="BasketForm" property="nutsum"/>     
                    </td>

                </tr>
                <tr>
                    <td>Total</td>
                    <td> 
                        <html:submit>Checkout</html:submit>

                        <td colspan="2">
                        <bean:write name="BasketForm" property="error" filter="false"/>
                        &nbsp;</td>

                    </td>
                    <td> 
                        <bean:write name="BasketForm" property="sum"/> 
                    </td>
                </html:form>
                <logic:present cookie="logged">   </logic:present>

                </tr>
            </table>
            <br />
        </div>
    </body>
</html:html>
