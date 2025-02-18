<%-- 
    Document   : customerlogin
    Created on : 12 Feb, 2023, 2:35:36 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<% try
    {
        String a=request.getParameter("txtusername");
        String b=request.getParameter("txtpassword");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        String q="select email,pass,cflag from custreg";
        out.println();
        ResultSet rs=st.executeQuery(q);
        int flag=0;
        while(rs.next())
        {
            String x=rs.getString(1);
            String y=rs.getString(2);
            int f=rs.getInt(3);
            if(x.equals(a) && y.equals(b)&& f!=0)
            {
                flag=1;
                break;
            }
        }
        if(flag==1){
            //out.println("Match");
            session.setAttribute("cname",a); //varaible nme
            response.sendRedirect("customerDashboard.jsp");
        }
        else{
         // out.println("Mismatch");
          response.sendRedirect("customerLogin.html");
        }
        st.close();
        con.close();
      // response.sendRedirect("lsform.html");
    }catch(Exception e)
    {
        out.println(e);
    }
%>