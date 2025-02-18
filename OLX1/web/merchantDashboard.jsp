<%-- 
    Document   : merchantDashboard
    Created on : 13 Feb, 2023, 9:26:20 AM
    Author     : Administrator
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String p=(String) session.getAttribute("mname");
    out.println("<h2 align=center> Merchant Dashboard </h2>");
    out.println("<p align=center> <font color=red> Welcome &nbsp;" +p+ "</font></p>");

    
%>
<html>
    <head>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     	<link rel="stylesheet" href="merchdash.css">

        </head>
        <body>
         
                <div class="login">
                    <div align="center">
     <a href="postAd.html"><input type="submit" value="Post Ad"></a>
     <br>
      <a href="viewproduct1.jsp"><input type="submit" value="View Products"></a>
      <br>
       <a href="SellerPayment.jsp"><input type="submit" value="My Payment"></a>
      <br>
       <a href="mfeedback.jsp"><input type="submit" value="Feedback"></a>
       <br>
       <a href="mSignout.jsp"><input type="submit" value="Sign Out" name="msignout">
        </a>
     
                </div>
                </div>
          
    </body>
</html>