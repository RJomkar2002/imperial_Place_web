<%-- 
    Document   : custreg
    Created on : 12 Feb, 2023, 2:51:16 PM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String name="'"+request.getParameter("txtname")+"'";
String emailid="'"+request.getParameter("txtemail")+"'";
String msg="'"+request.getParameter("txtmsg")+"'";
String mobno="'"+request.getParameter("txtmobno")+"'";




try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
    Statement st=con.createStatement();
    String q="insert into mfeedback (name,email,msg,mobno) values("+name+","+emailid+","+msg+","+mobno+")";
    st.executeUpdate(q);
    st.close();
    con.close();
         response.sendRedirect("merchantDashboard.jsp");

}
catch(Exception e)
{
    out.print(e);
}
%>