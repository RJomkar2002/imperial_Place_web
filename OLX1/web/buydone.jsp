<%-- 
    Document   : buydone
    Created on : 20 Mar, 2023, 2:25:46 PM
    Author     : Administrator
--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="java.util.Date" %>

    <%
String odate="'"+request.getParameter("txtdate")+"'";
String country="'"+request.getParameter("txtcountry")+"'";
String name="'"+request.getParameter("fname")+"'";
String cadd="'"+request.getParameter("cdr")+"'";
String padd="'"+request.getParameter("pdr")+"'";
String email="'"+request.getParameter("txtemail")+"'";
String mobno="'"+request.getParameter("mobno")+"'";
String title="'"+request.getParameter("titletxt")+"'";
String category="'"+request.getParameter("txtcat")+"'";
String descp="'"+request.getParameter("des")+"'";
String ptype="'"+request.getParameter("paytype")+"'";

int qty= Integer.parseInt(request.getParameter("txtquantity"));
int cid= Integer.parseInt(request.getParameter("cid"));
int pid= Integer.parseInt(request.getParameter("productidtxt"));
int tid= Integer.parseInt(request.getParameter("txttid"));
int totalp= Integer.parseInt(request.getParameter("totpricetxt"));
//int oid= Integer.parseInt(request.getParameter(""));
int price= Integer.parseInt(request.getParameter("txtprice"));
int mid=(int)session.getAttribute("mid");
//out.print(odate);
//out.print(country);
//out.print(name);
//out.print(cadd);
//out.print(padd);
//out.print(email);
//out.print(mobno);
//out.print(title);
//out.print(category);
//out.print(descp);
//out.print(qty);
//out.print(ptype);
//out.print(cid);
//out.print(pid);
//out.print(tid);
//out.print(totalp);


try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
    Statement st=con.createStatement();
    String q="insert into buynow (odate,cid,country,name,cadd,padd,email,mobno,pid,title,category,descp,price,qty,totalp,ptype,tid,mid) values("+odate+","+cid+","+country+","+name+","+cadd+","+padd+","+email+","+mobno+","+pid+","+title+","+category+","+descp+","+price+","+qty+","+totalp+","+ptype+","+tid+","+mid+" )";
  //out.print(q);
    st.executeUpdate(q);
     response.sendRedirect("customerDashboard.jsp");
    st.close();
    con.close();
}
catch(Exception e)
{
    out.println(e);
}

%>