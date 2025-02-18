<%-- 
    Document   : Rejectm
    Created on : 30 Sep, 2023, 3:26:36 PM
    Author     : 91982
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*" %>
<%
     try
    {
        int cid=Integer.parseInt(request.getParameter("id"));
        //out.println("cid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        String query="delete from merreg where cid="+cid+"";
        //out.println(query);
        st.executeUpdate(query);
        response.sendRedirect("arMerchant.jsp");
        st.close();
        con.close();
        
        
     }
     catch(Exception e)
     {
         
     }

%>