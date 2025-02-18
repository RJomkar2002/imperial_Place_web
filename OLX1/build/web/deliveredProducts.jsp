
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
 <style>
 body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;
/*   padding-left:9px;*/
}
label{
 text-align: center;
 padding-top: 30px
}
input[type=text] {
  width: 30%;
  padding: 10px;
  margin-top: 5px;
  align-self: center;
}
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
        <form action="CustomerwiseProductRep.jsp">
        <div align="center">
        
        <%
            String cname="";
        %>
        <%
    String p=(String) session.getAttribute("cname");
    //out.print(p);
    p="'"+p+"'";
     try
           {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
                Statement st=con.createStatement();
                String q="select cname from custreg where email="+p+"";
                out.println();
                ResultSet rs=st.executeQuery(q);
               rs.next();
       
               cname=rs.getString(1);
                    
                        
               

                st.close();
                con.close();
    }catch(Exception e){
        out.println(e);
    }

    
%>

<!--        <input type="text" name="mname" value="" placeholder="" class="form-control"><br>-->
<div class="stage">
    <a href="customerDashboard.jsp"><font color="#ffffff">Dashboard</font></a>
        </div>  
        </div>
        </form>

<form action="">
<table class="table table-striped">
            <tr>
                <th> Order Id </th>
                <th>Customer Id</th>
                <th>Customer Name</th>
                <th>Address</th>
                <th>Email</th>
                <th>Mobile Number</th>
                <th>Product Title</th>
                <th>category</th>
                <th>Price </th>
                <th>Quantity </th>
                <th>Total Price </th>
                
            </tr>
            
       <%
          cname="'"+cname+"'";
          //out.print(cname);
           try
           {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
                Statement st=con.createStatement();
                String q="select * from buynow where name="+cname+" and status=1";
                out.println();
                ResultSet rs=st.executeQuery(q);
                while(rs.next())
                {
                    int pp=rs.getInt(1);
                    out.println("<tr>");
                    out.println("<td>"+pp);
                    out.println("<td>"+rs.getInt(3));
                    out.println("<td>"+rs.getString(5));
                    out.println("<td>"+rs.getString(6));
                    out.println("<td>"+rs.getString(8));
                    out.println("<td>"+rs.getString(9));
                    out.println("<td>"+rs.getString(11));
                    out.println("<td>"+rs.getString(12));
                    out.println("<td>"+rs.getInt(14));
                    out.println("<td>"+rs.getInt(15));
                    out.println("<td>"+rs.getInt(16));
                        
                }

                st.close();
                con.close();
    }catch(Exception e){
        out.println(e);
    }

       %>
        </table>
</form>
    </body>
</html>
