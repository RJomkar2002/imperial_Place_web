<%-- 
    Document   : contactusinsert
    Created on : 9 Mar, 2023, 10:43:17 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
String name="'"+request.getParameter("txtname")+"'";
String emailid="'"+request.getParameter("txtemail")+"'";
String sub="'"+request.getParameter("txtsub")+"'";
String msg="'"+request.getParameter("txtmsg")+"'";

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
    Statement st=con.createStatement();
    String q="insert into contactus (name,email,subject,message) values("+name+","+emailid+","+sub+","+msg+")";
    st.executeUpdate(q);
    st.close();
    con.close();
}
catch(Exception e)
{
    out.println(e);
}
%>
