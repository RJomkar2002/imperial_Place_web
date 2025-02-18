<%-- 
    Document   : loginform1.jsp
    Created on : 6 Feb, 2023, 8:57:53 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    try{
        String u=request.getParameter("txt1");
        String p=request.getParameter("txt2");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        int f=0;
        ResultSet rs=st.executeQuery("select uname,pass from admin");
        while(rs.next())
        {
            String uu=rs.getString(1);
            String pp=rs.getString(2);
            if(u.equals(uu) && p.equals(pp))
            {
                f=1;
                break;
            }
            
        }
        
       }
    catch(Exception e){
        
    }
    %>