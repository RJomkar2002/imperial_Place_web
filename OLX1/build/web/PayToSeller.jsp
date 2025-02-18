<%-- 
    Document   : custreg
    Created on : 12 Feb, 2023, 2:51:16 PM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
String date="'"+request.getParameter("txtdate")+"'";
String cname="'"+request.getParameter("txtcname")+"'";
String add="'"+request.getParameter("txtadd")+"'";
String email="'"+request.getParameter("txtemail")+"'";
String mob="'"+request.getParameter("txtmob")+"'";
String title="'"+request.getParameter("txtptitle")+"'";
String cat="'"+request.getParameter("txtcat")+"'";
String paytype="'"+request.getParameter("txtpt")+"'";
String mname="'"+request.getParameter("txtsname")+"'";
String memail="'"+request.getParameter("txtsemail")+"'";
String mmobno="'"+request.getParameter("txtsmob")+"'";


//int date= Integer.parseInt(request.getParameter("txtdate"));
int oid= Integer.parseInt(request.getParameter("txtoid"));
int cid= Integer.parseInt(request.getParameter("txtcid"));
int price= Integer.parseInt(request.getParameter("txtprice"));
int tprice= Integer.parseInt(request.getParameter("txttp"));
int totalp= Integer.parseInt(request.getParameter("txtprice"));
int qty= Integer.parseInt(request.getParameter("txtqty"));
int payid= Integer.parseInt(request.getParameter("txtpti"));
int payts= Integer.parseInt(request.getParameter("txtpts"));






try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
    Statement st=con.createStatement();
    String q="insert into paytoseller (date,orderid,cid,cname,cadd,email,mobno,ptitle,cat,price,qty,totalp,ptype,pid,ptseller,mname,memail,mmobno) values("+date+","+oid+","+cid+","+cname+","+add+","+email+","+mob+","+title+","+cat+","+price+","+qty+","+totalp+","+paytype+","+payid+","+payts+","+mname+" ,"+memail+","+mmobno+")";
    st.executeUpdate(q);
    st.close();
    con.close();
    response.sendRedirect("MerchantPaymentDetails.jsp");
}
catch(Exception e)
{
    out.println(e);
}
%>
<%
     try
    {
        
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        String query="update buynow set status=1 where orderid="+oid+"";
        out.println(query);
        st.executeUpdate(query);
        st.close();
        con.close();
       // response.sendRedirect("arCustomer.jsp");
        
     }
     catch(Exception e)
     {
         
     }

%>