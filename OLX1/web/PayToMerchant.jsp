<%-- 
    Document   : PayToMerchant
    Created on : 24 Mar, 2023, 12:34:22 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="java.util.Date" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<style  type="text/css">
body{
    box-sizing: border-box;
    }

.container {
    font-size:16px;
    margin-top: 5%;
    position:relative;
    padding: 10px;
    width: 75%;
    height: auto;
/*   background:#c2d6d6;*/
    background:#e1eaea;
    box-shadow: 0 0 5px #999999;
    justify-content: center;
}
#btn{
    width:20%;
/*    height:20%;*/
/*    padding: 8px;*/
    font-size: 18px;
}
 </style>       
    </head>
    <body>
        <form action="PayToSeller.jsp">   
  <div class="wrapper login">
 <div class="container">    
<%!
    String mydate;
%>
<%
    Date d=new Date();
    int dd=d.getDate();
    int mm=d.getMonth()+1;
    int yy=d.getYear()-100;
    String yyyy="20"+yy;
    String mydate=dd+"-"+mm+"-"+yyyy;
%>
<%!
    int orderid;
    int cid;
    String cname;
    String cadd;
    String cemail;
    String mobno;
    String ptitle;
    String cat;
    int price;
    int qty;
    int totalp;
    String ptype;
    int tid;
    String mname;
    String memail;
    String mmobno;
    
    
%>
<%
    int a=Integer.parseInt(request.getParameter("id"));
    try
           {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
                Statement st=con.createStatement();
                String q="SELECT orderid, cid, name, cadd, email, mobno,title,category, price, qty, totalp, ptype,tid status FROM buynow WHERE orderid="+a+"";
                out.println();
                ResultSet rs=st.executeQuery(q);
                rs.next();
                orderid=rs.getInt(1);
                cid=rs.getInt(2);
                cname=rs.getString(3);
                cadd=rs.getString(4);
                cemail=rs.getString(5);
                mobno=rs.getString(6);
                ptitle=rs.getString(7);
                cat=rs.getString(8);
               price =rs.getInt(9);
               qty =rs.getInt(10);
                totalp=rs.getInt(11);
               ptype =rs.getString(12);
                tid=rs.getInt(13);
                
                
                
                
                
                //out.print(mid);
                st.close();
                con.close();
            //       response.sendRedirect("lsform.html");
    }catch(Exception e){
        out.println(e);
    } 
%>
<%
    int b=Integer.parseInt(request.getParameter("mid"));
    try
           {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
                Statement st=con.createStatement();
                String q="SELECT mname, email, mobno FROM merreg WHERE mid="+b+"";
                out.println();
                ResultSet rs=st.executeQuery(q);
                rs.next();
                mname=rs.getString(1);
                memail=rs.getString(2);
                mmobno=rs.getString(3);
                
                
                
                
                
                //out.print(mid);
                st.close();
                con.close();
            //       response.sendRedirect("lsform.html");
    }catch(Exception e){
        out.println(e);
    } 
%>
   <div class="row">
		<div class="col-sm-4">Date:</div>
 <div class="col-sm-4"><input type="text" name="txtdate" class="form-control" value="<%=mydate%>" readonly></div>
                <div class="col-sm-4"> Order Id</div>
                <div class="col-sm-4">   <input type="text" class="form-control" id="nme" value="<%=orderid%>" name="txtoid" readonly></div>
                   
               </div>
     
                <h3>Customer Details</h3>
    <div class="firstrow">
        <div class="row">
            <div class="col-sm-12">
            </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                  Customer Id</font>
                </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                  Customer Name</font>
                </div>
  
         </div>  

        <div class="row" >
            <div class="col-sm-12"> 
            </div>
            
                 <div class="col-sm-4">
                     <input type="text"  class="form-control" id="email" value="<%=cid%>" name="txtcid" readonly> 
                 </div>
                 <div class="col-sm-4">
                     <input type="text"  class="form-control" id="email" value="<%=cname%>"  name="txtcname" readonly> 
                 </div>
        </div>  
 </div>
    
<!--  ==================================== 2nd row ======================================  -->
    <div class="secondrow">
        <div class="row">
            <div class="col-sm-12">
            </div>
                <div class="col-sm-4"><font color=" #000000"> 
                     Address</font>
                </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                  Email</font>
                </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                  Mobile Number</font>
                </div>
  
         </div>  

        <div class="row" >
            <div class="col-sm-12"> 
            </div>
               <div class="col-sm-4">
                 <input type="text" class="form-control" id="nme" value="<%=cadd%>" name="txtadd" readonly>
                </div>
                 <div class="col-sm-4">
                     <input type="email"  class="form-control" id="email" value="<%=cemail%>" name="txtemail" readonly> 
                 </div>
                 <div class="col-sm-4">
                     <input type="text"  class="form-control" id="email" value="<%=mobno%>" name="txtmob" readonly> 
                 </div>
        </div>  
 </div>
<!-- ===============================================================================   -->
    <div class="thirdrow">
        <div class="row">
            <div class="col-sm-12">
            </div>
                <div class="col-sm-4"><font color=" #000000"> 
                     Product Title</font>
                </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                  Category</font>
                </div>
             
  
         </div>  

        <div class="row" >
            <div class="col-sm-12"> 
            </div>
               <div class="col-sm-4">
                 <input type="text" class="form-control" id="nme" value="<%=ptitle%>" name="txtptitle" readonly>
                </div>
                 <div class="col-sm-4">
                     <input type="text"  class="form-control" id="email" value="<%=cat%>" name="txtcat" readonly> 
                 </div>
               
        </div>  
 </div>    
<!--===============================================================================-->
    <div class="fourthrow">
        <div class="row">
            <div class="col-sm-12">
            </div>
              <div class="col-sm-4"> <font color=" #000000"> 
                  Price</font>
                </div>
                <div class="col-sm-4"><font color=" #000000"> 
                    Quantity</font>
                </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                  Total Price</font>
                </div>
           
  
         </div>  

        <div class="row" >
            <div class="col-sm-12"> 
            </div>
             <div class="col-sm-4">
                     <input type="text"  class="form-control" id="email" value="<%=price%>" name="txtprice" readonly> 
                 </div>
               <div class="col-sm-4">
                 <input type="text" class="form-control" id="nme" value="<%=qty%>" name="txtqty" readonly>
                </div>
                 <div class="col-sm-4">
                     <input type="text"  class="form-control" id="email" value="<%=totalp%>" name="txttp" readonly> 
                 </div>
               
        </div>  
 </div>
  
   <h3>Seller Details</h3>           
   <div class="fifthrow">
        <div class="row">
            <div class="col-sm-12">
            </div>
                <div class="col-sm-4"><font color=" #000000"> 
                  Seller Name </font>
                </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                 Seller Email</font>
                </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                 Seller Mobile Number</font>
                </div>
  
         </div>  

        <div class="row" >
            <div class="col-sm-12"> 
            </div>
               <div class="col-sm-4">
                 <input type="text" class="form-control" id="nme" value="<%=mname%>" name="txtsname" readonly>
                </div>
                 <div class="col-sm-4">
                     <input type="email"  class="form-control" id="email" value="<%=memail%>" name="txtsemail" readonly> 
                 </div>
                 <div class="col-sm-4">
                     <input type="text"  class="form-control" id="email" value="<%=mmobno%>" name="txtsmob" readonly> 
                 </div>
        </div>  
 </div>                
                 
<!--==========================================================================-->
    <div class="firstrow">
        <div class="row">
            <div class="col-sm-12">
            </div>
               <div class="col-sm-4"> <font color=" #000000"> 
                  Payment Type</font>
                </div>
                    <div class="col-sm-4"><font color=" #000000"> 
                     Payment Id</font>
                </div>
                <div class="col-sm-4"> <font color=" #000000"> 
                  Pay To Seller</font>
                </div>
         </div>  

        <div class="row" >
            <div class="col-sm-12"> 
            </div>
            <div class="col-sm-4">
                     <select class="form-control" id="pt" name="txtpt">
			<option> GPay</option>
			<option> PhonePe</option>
			<option> Paytm</option>
			<option> AmazonPay</option>

                </select>
                 </div>

               <div class="col-sm-4">
                 <input type="text" class="form-control" id="nme" name="txtpti" >
                </div>
                 <div class="col-sm-4">
                     <input type="text"  class="form-control" id="email" name="txtpts"> 
                 </div>
        </div>  
 </div><br>
 
 
<div align="center">
    <input type="submit" style="color:blue" onclick="document.location=''" name="Home" value="Submit" class="btn btn-info btn-sm" id="btn">
<input type="button" style="color:blue" onclick="document.location='MerchantPaymentDetails.jsp'" name="Home" value="Back" class="btn btn-info btn-sm" id="btn" >
</div>
<!--===================================================================================-->
 </div> 
  </div>
        </form>
</body>
</html>
