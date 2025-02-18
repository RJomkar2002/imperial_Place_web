<%-- 
    Document   : custreg
    Created on : 12 Feb, 2023, 2:51:16 PM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String name="'"+request.getParameter("txtname")+"'";
String emailid="'"+request.getParameter("txtemail")+"'";
String pass="'"+request.getParameter("txtpass")+"'";
String mobno="'"+request.getParameter("txtmobieno")+"'";
out.print(mobno);
String aano="'"+request.getParameter("txtadhno")+"'";
String dob="'"+request.getParameter("txtdob")+"'";
String cadd="'"+request.getParameter("txtcadd")+"'";
String padd="'"+request.getParameter("txtpadd")+"'";
//String ptype="'"+request.getParameter("ptype")+"'";
//String tid="'"+request.getParameter("txttid")+"'";
//int rcharge= Integer.parseInt(request.getParameter("txtrch"));



try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
    Statement st=con.createStatement();
    String q="insert into merreg (mname,email,pass,mobno,aadhar,dob,cadd,padd) values("+name+","+emailid+","+pass+","+mobno+","+aano+","+dob+","+cadd+","+padd+")";
    st.executeUpdate(q);
    //out.print(q);
    response.sendRedirect("merchantLogin.html");
    st.close();
    con.close();
}
catch(Exception e)
{
    out.print(e);
}
%>