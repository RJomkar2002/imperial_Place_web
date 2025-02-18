<%-- 
    Document   : Approvec
    Created on : 15 Feb, 2023, 9:20:36 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<%
     try
    {
        int cid=Integer.parseInt(request.getParameter("id"));
        out.println(cid);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        String query="update custreg set cflag=1 where cid="+cid+"";
        out.println(query);
        st.executeUpdate(query);
        st.close();
        con.close();
        response.sendRedirect("arCustomer.jsp");
        
     }
     catch(Exception e)
     {
         
     }

%>