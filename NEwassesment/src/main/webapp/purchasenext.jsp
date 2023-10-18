
<%@page import="purachase_sale.PurchaseDao"%>  
    <jsp:useBean id="obj" class="purachase_sale.Purchase">  
    </jsp:useBean> 
     <jsp:setProperty property="*" name="obj"/> 
     
     <%
     int i=PurchaseDao.purchase(obj);
     if(i>0)
    	 out.print("you are successfully registered");
     else{
    	 out.print("invalid");

     }
     %>