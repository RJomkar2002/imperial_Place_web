<%-- 
    Document   : cSignout
    Created on : 1 Apr, 2023, 11:52:14 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("customerLogin.html");
%>