<%-- 
    Document   : mSignout
    Created on : 1 Apr, 2023, 11:54:19 AM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("merchantLogin.html");
%>
