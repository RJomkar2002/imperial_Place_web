<%-- 
    Document   : customerDashboard
    Created on : 13 Feb, 2023, 9:24:16 AM
    Author     : Administrator
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String p=(String) session.getAttribute("cname");
    out.println("<h2 align=center> Customer Dashboard </h2>");
    out.println("<p align=center> <font color=red> Welcome &nbsp;" +p+ "</font></p>");
    
%>
<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     	<link rel="stylesheet" href="custdash.css">
    </head>
    <body>
        <div class="login">
    <div align="center">
        <a href="viewproducts.jsp"><input type="submit" value="View Products"></a>
          <br>
      <a href="myProducts.jsp"><input type="submit" value="My Products"></a>
      <br>
      <a href="deliveredProducts.jsp"><input type="submit" value="Delivered Products"></a>
      <br>
      <a href="pendingProducts.jsp"><input type="submit" value="Pending Products"></a>
      <br>
       <a href="cfeedback.jsp"><input type="submit" value="Feedback"></a>
<br>
         <a href="cSignout.jsp"><input type="submit" value="Sign Out" name="csignout"></a>

        </div>
    </div>
    </body>
</html>