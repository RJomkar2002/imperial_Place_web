<%-- 
    Document   : insertpostadddone
    Created on : 22 Feb, 2023, 10:28:21 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%!
    String fname;
    int mid1=0;
    String mname1="";
%>
<%
    MultipartRequest m=new MultipartRequest(request,"C:/Users/91982/Documents/NetBeansProjects/OLX1/web/img");
   out.println("Upload successful");
   fname=m.getOriginalFileName("txtfile");
  fname="/img/"+fname;
   out.println(fname);
  
%>


<%
    String mem="'"+session.getAttribute("mname")+"'";
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        String q="select mid,mname from merreg where email="+mem+"";
               // out.println();
                ResultSet rs=st.executeQuery(q);
               rs.next();
                
                    mid1=rs.getInt(1);
                    mname1=rs.getString(2);
                out.print(mid1);
                out.print(mname1);
        rs.close();
        st.close();
        con.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>

<%
mname1="'"+mname1+"'";
String cat="'"+session.getAttribute("cat")+"'";
String tt="'"+session.getAttribute("title")+"'";
out.print(tt);
out.print(mid1);
out.print(mname1);
String des="'"+session.getAttribute("des")+"'";
int pr=(int)session.getAttribute("price");
String ct="'"+session.getAttribute("city")+"'";
String cou="'"+session.getAttribute("country")+"'";
fname="'"+fname+"'";




try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
    Statement st=con.createStatement();
    String q="insert into postadd (category,title,descp,price,city,country,imgpath,mid,mname) values("+cat+","+tt+","+des+","+pr+","+ct+","+cou+","+fname+","+mid1+","+mname1+")";
    st.executeUpdate(q);
    response.sendRedirect("merchantDashboard.jsp");
    st.close();
    con.close();
}
catch(Exception e)
{
    out.println(e);
}
%>
