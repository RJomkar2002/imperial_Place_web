<%-- 
    Document   : aSignout
    Created on : 1 Apr, 2023, 11:47:26 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("Adminlogin.html");
%>