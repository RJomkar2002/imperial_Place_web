<%-- 
    Document   : adminDashboard
    Created on : 13 Feb, 2023, 9:13:45 AM
    Author     : Administrator
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String p=(String) session.getAttribute("aname");
    out.println("<h2 align=center> Admin Dashboard </h2>");
    out.println("<p align=center> <font color=red> Welcome &nbsp;" +p+ "</font></p>");
    
%>
<html>
   <head>
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width,initial-scale=1">
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   	<link rel="stylesheet" href="admindash.css">

   </head>
 <body>
     
 <div class="login">
     <div align="center">
 <a href="arCustomer.jsp"><input type="submit" value="Approve/Reject Customer"></a>
          <br>
<!-- <a href="arMerchant.jsp"><input type="submit" value="Approve/Reject Merchant"></a>
          <br>-->
 <a href="MerchantPaymentDetails.jsp"><input type="submit" value="Merchant Payment Details"></a>
          <br>
 <a href="viewproducta.jsp"><input type="submit" value="All Products"></a>
         <br>
 <a href="viewBuyers.jsp"><input type="submit" value="View Customers"></a>
        <br>
 <a href="viewSellers.jsp"><input type="submit" value="View Merchants"></a>
          <br> 
 <a href="CustomerwiseProductRep.jsp"><input type="submit" value="Customer wise Product Report"></a>
         <br>
 <a href="MerchantwiseProductRep.jsp"><input type="submit" value="Merchant wise Product Report"></a>
<br>
 <a href="ProductwiseBuyerRep.jsp"><input type="submit" value="Product wise Customer Report"></a>
 <br>
 <a href="ProductwiseSellerRep.jsp"><input type="submit" value="Product wise Merchant Report"></a>
 <br>
 <a href="viewcfb.jsp"><input type="submit" value="View Customer Feedback"></a>
 <br>
 <a href="viewmfb.jsp"><input type="submit" value="View Merchant Feedback"></a>
 <br>
 
   <a href="aSignout.jsp"><input type="submit" value="Sign Out" name="asignout" id="so"></a>
       </div>
  </div>
     
  
 </body>
</html>
    