<%-- 
    Document   : arcustomer
    Created on : 14 Feb, 2023, 9:33:52 AM
    Author     : Administrator
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
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
#stage{
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
#stage:hover {
background-position: right center; 
color:#000000;
text-decoration:none;
   }
</style>
    </head>
    <body>
        <div align="center">
        <div class="col-sm-12">
      <a href="adminDashboard.jsp"><input type="button" value="Dashboard" id="stage" name="Dash"></a>
 </div>
    </div>
       <table class="table table-striped">
           <tr>
               <th>Customer Id</th>
                <th>Customer Name</th>
                 <th>Email</th>
                  <th>Mobile Number</th>
                   <th>Aadhar Number</th>
                    <th>Date of Birth</th>
                     <th>Current Address</th>
                      <th>Permanent Address</th>
                       <th>Payment Type</th>
                        <th>Transaction Id</th>
                         <th>Charges Paid</th>
                          <th>Approve</th>
                           <th>Reject</th>
           </tr>
           <%
               try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        int f=0;
        ResultSet rs=st.executeQuery("select * from custreg where cflag=0");
        while(rs.next())
        {
            int p=rs.getInt(1);
            out.println("<tr>");
             out.println("<td>"+p);
              out.println("<td>" +rs.getString(2));
               out.println("<td>" +rs.getString(3));
                out.println("<td>" +rs.getString(5));
                out.println("<td>" +rs.getString(6));
                 out.println("<td>" +rs.getString(7));
                  out.println("<td>" +rs.getString(8));
                   out.println("<td>" +rs.getString(9));
                    out.println("<td>" +rs.getString(10));
                     out.println("<td>" +rs.getString(11));
                      out.println("<td>" +rs.getString(12));
                  
                        out.println("<td> <a href=Approvec.jsp?id="+p+">Approve</a>");
                         out.println("<td>  <a href=Rejectc.jsp?id="+p+">Reject</a>");
        }
            
               }
               catch(Exception e)
               {
                   
               }
               %>
       </table>
<!--       <p align="center"> <a href="adminDashboard.jsp" class="btn btn-primary"> Dashboard</a></p>-->
    </body>
</html>
