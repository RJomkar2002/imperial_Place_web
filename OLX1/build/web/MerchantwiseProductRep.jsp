
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
   padding-left:9px;}
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

#stage{
 background-image: linear-gradient(to right, #04AA6D 0%,#4CA1AF 0%, #D6A4A4  51%, #DAE2F8  100%);
box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
  margin:5px; 
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
        <form action="MerchantwiseProductRep.jsp">
        <div align="center">
        <label> Merchant Name</label>
<% 
         try{
         Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
         String q="select distinct(mname) from postadd";
        out.println();
        ResultSet rs=st.executeQuery(q);
        out.println("<select name=name>");
        while(rs.next())
        {
            out.println("<option>"+rs.getString(1)+"</option>");
        }
        out.println("</select>");
        st.close();
        con.close();
    }
      catch(Exception e){
        out.println(e);
    }

%>
<br>
    <div class="btn-group">
        <br>  <input type="submit"  name="Home" value="Search" id="stage">
        <a href="adminDashboard.jsp"><input type="button" value="Dashboard" id="stage"></a>
    </div>
        </div>
        </form>

<form action="">
<table class="table table-striped">
            <tr>
                <th> Post Id</th>
                <th>Category</th>
                <th>Product Title</th>
                <th>Discription</th>
                <th>City</th>
                <th>Country</th>
                <th>Image</th>
                <th>Price</th>
                
            </tr>
            
       <%
          String mname="'"+request.getParameter("name")+"'";
          //out.print(mname);
           try
           {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
                Statement st=con.createStatement();
                String q="select * from postadd where mname="+mname+"";
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
                   
                    out.println("<td>"+rs.getString(6));
                     out.println("<td>"+rs.getString(7));
                     String path ="'"+request.getContextPath()+rs.getString(8)+"'";
                    //out.println(path);
                    out.println("<td><img src="+path+" height=60 width=90 ></td>");
                        

                     out.println("<td>"+rs.getInt(5));
                     
                        
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
