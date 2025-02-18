<%-- 
    Document   : arcustomer
    Created on : 14 Feb, 2023, 9:33:52 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<%!
    String mname;
%>
<%
    String p=(String) session.getAttribute("mname");
   
     p="'"+p+"'";       
    try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        int f=0;
        ResultSet rs=st.executeQuery("select * from merreg where email="+p+"");
        rs.next();                  
        mname=rs.getString(2);
        //out.print(mname);
       
             rs.close();
             st.close();
             con.close();
       }
   catch(Exception e)
               {
                   
               }

    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        
        <title>JSP Page</title>
 <style  type="text/css">
.stage{
 background-image: linear-gradient(to right, #04AA6D 0%,#4CA1AF 0%, #D6A4A4  51%, #DAE2F8  100%);
box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
  margin:10px; 
  padding: 10px;
 display: block;
 border:none;
  text-align: center;
  align-content: center;
   text-transform: uppercase;
   transition: 0.5s;
   background-size: 200% auto;
 color: white;            
/*color:#007991;*/
 box-shadow: 0 0 20px #eee;
  border-radius: 10px;
  width: 140px;
  height: 50px;
  text-decoration: none;
  position:static;
  
}
.stage:hover {
background-position: right center; 
color:#000000;
text-decoration:none;
   }
   </style>
    </head>
    <body>
        <div align="center">
        <div class="stage">
    <a href="merchantDashboard.jsp"><font color="#ffffff">Dashboard</font></a>
        </div></div>
       <table class="table table-striped">
           <tr>
               <th>Seller Id</th>
                <th>Date</th>
                 <th>Order Id</th>
                  <th>Customer Id</th>
                   <th>Customer Name</th>
                    <th>Address</th>
                     <th>Email</th>
                      <th>Mobile Number</th>
                       <th>Product Title</th>
                        <th>Category</th>
                          <th>Quantity</th>
                            <th>Payment Type</th>
                             <th>Payment Id</th>
                             <th>Payment Recieved</th>
                             
                             
           </tr>
           <%
               mname="'"+mname+"'";
               //out.print(mname);
               try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        int f=0;
        ResultSet rs=st.executeQuery("select * from paytoseller where mname="+mname+"");
        while(rs.next())
        {
            int pp=rs.getInt(1);
            out.println("<tr>");
             out.println("<td>"+pp);
              out.println("<td>" +rs.getString(2));
               out.println("<td>" +rs.getInt(3));
               out.println("<td>" +rs.getInt(4));
                out.println("<td>" +rs.getString(5));
                 out.println("<td>" +rs.getString(6));
                 out.println("<td>" +rs.getString(7));
                  out.println("<td>" +rs.getString(8));
                   out.println("<td>" +rs.getString(9));
                    out.println("<td>" +rs.getString(10));
                      out.println("<td>" +rs.getInt(12));
                        out.println("<td>" +rs.getString(14));
                         out.println("<td>" +rs.getInt(15));
                          out.println("<td>" +rs.getInt(16));
        }
        rs.close();
        st.close();
        con.close();
            
               }
               catch(Exception e)
               {
                   
               }
               %>
       </table>
    </body>
</html>
