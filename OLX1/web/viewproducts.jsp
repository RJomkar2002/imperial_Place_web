<%-- 
    Document   : viewproducts
    Created on : 1 Mar, 2023, 10:16:55 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
     <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
     <style  type="text/css">
         .stage {
  background-image: linear-gradient(to right, #007991 0%, #78ffd6  51%, #007991  100%);
/*     background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);*/
    box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
  margin: 7px;
 margin-bottom: 5px;
  padding: 13px 17px;
  text-align: center;
   text-transform: uppercase;
   transition: 0.5s;
   background-size: 200% auto;
 color: white;            
/*color:#007991;*/
 box-shadow: 0 0 20px #eee;
  border-radius: 10px;
  width: 140px;
  height: 50px;
  position:relative;
 align-content: center;
  font-size: 15px;
}
.stage:hover {
background-position: right center; /* change the direction of the change here */
color: #fff;
text-decoration: none;
   }

     </style>
    </head>
    <body>
        <div align="center">
        <div class="stage">
    <a href="customerDashboard.jsp"><font color="#ffffff">Dashboard</font></a>
        </div></div>
<!--        <p align="center"><input type="button" style="color:blue" onclick="document.location='customerDashboard.jsp'" name="Home" value="Dashboard" class="btn btn-info btn-sm">
        </p>-->
        <table class="table table-striped">
            <tr>
                <th>Post ID</th>
                <th>Category</th>
                <th>Title</th>
                <th>Description</th>
                <th>Price</th>
                <th>City</th>
                <th>Country</th>
                <th>Product Image</th>
                <th>Buy Now</th>
            </tr>
            <%!String path;%>
       <%
           try
           {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
                Statement st=con.createStatement();
                String q="select * from postadd";
                out.println();
                ResultSet rs=st.executeQuery(q);
                while(rs.next())
                {
                    int p=rs.getInt(1);
                    out.println("<tr>");
                    out.println("<td>"+p);
                    out.println("<td>"+rs.getString(2));
                    out.println("<td>"+rs.getString(3));
                    out.println("<td>"+rs.getString(4));
                    out.println("<td>"+rs.getInt(5));
                    out.println("<td>"+rs.getString(6));
                    out.println("<td>"+rs.getString(7));
                     path="'"+request.getContextPath()+rs.getString(8)+"'";
                    //out.println(path);
                    int merid=rs.getInt(9);
                    out.println("<td><img src="+path+" height=80 width=90 ></td>");
                    
                    out.println("<td><a href=buynow.jsp?id="+p+"&mid="+merid+">Buy Now</a></td>");
                     
                    
                }


                st.close();
                con.close();
            //       response.sendRedirect("lsform.html");
    }catch(Exception e){
        out.println(e);
    }

       %>
        </table>
       
       
    </body>
</html>
