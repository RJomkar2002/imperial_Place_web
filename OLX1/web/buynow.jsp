<%--<%@page import="java.sql.*"  %>--%>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%@page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>;
<!-- @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;400;500;600;700&display=swap');-->
 <script type="text/javascript">
            function Calc(v)
            {
                var price =document.getElementById("price").value;
               
                var qty =document.getElementById("quantity").value;
                var total= qty * price;
                
                document.getElementById("totpricetxt").value=total;
            }
        </script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;
   padding-left:9px;}


input[type=text], select, textarea {
  width: 100%;
  padding: 6px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
  font-size:15px;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container2{
        top: 20px;
    float: right;
    margin-right:130px;
  position:relative;
  border-radius: 10px;
  background-color: #f2f2f2;
  padding:3px;
  padding-right:20px;
  width: 25%;
  text-align: justify;
}
#em{
    font-size: 15px;
    padding: 5px;
}
#tid{
    font-size: 10px;
    padding: 5px;
}
#pt{
    font-size: 15px;
    padding: 3px;
}
.container {
    top: 20px;
    margin-left:90px;
  position:absolute;
  border-radius: 10px;
  background-color: #f2f2f2;
  padding: 8px;
  width: 50%;
}
option { direction: ltr; }
option{
    font-size: 10px;
}
#dash{
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

#dash:hover{
  background-color: #45a049;
}

option{
    width:40%;
    height: 50px;
font-size:15px;
    background-color:#f1d9bd;
}
.label{
    width:50%;
}
</style>
</head>
<body style="background-color:lightseagreen;"> 
      <form action="buydone.jsp"> 
    
   <div class="container2">
          <h3>Payment Details </h3><hr>

       <div class="row">
            <div class="col-sm-6"> 
                <h4>Price</h4>
            </div>
              <div class="col-sm-6">
                  <input type="number"  id="price" value="<%=price%>" onchange="Calc(this);" class="form-control" name="txtprice" readonly > 
                 </div>
       </div>
       
        <div class="row">
            <div class="col-sm-6"> 
                <h4>  Quantity </h4>
            </div>
              <div class="col-sm-6">
                 <input type="number"  id="quantity" onchange="Calc(this);" class="form-control" name="txtquantity" > 
                 </div>
       </div>
       <hr>
            <div class="row">
            <div class="col-sm-6"> 
                <h4>  Total Price </h4>
            </div>
             <div class="col-sm-6">
                 <input type="number"  id="totpricetxt" name="totpricetxt" class="form-control" readonly>

            </div>
       </div>
       <hr>
<!-- ---------------------------------------------------==-->
        <div class="row">
            <div class="col-sm-6"> 
                <h5>Payment Type </h5>
            </div>
            <div class="col-sm-6">  
                <h5>Transaction ID   </h5>
            </div>
           
       </div>      
       
       
    <div class="row" >
	<div class="col-sm-12"> </div>
	<div class="col-sm-6">
		<select class="form-control" id="pt" name="paytype">
			<option> GPay</option>
			<option> PhonePe</option>
			<option> Paytm</option>
			<option> AmazonPay</option>

                </select>
        </div>
	<div class="col-sm-6">
		<input type="text" id="tid" name="txttid" class="form-control" placeholder="Enter Transaction ID" class="form-control"><p id="g">
        </div>
    </div>      
      <span>&copy;All Kinds of payment accepted on 9049410232.</span>
<!--<p align="center"> <input type="submit" value="Done"></p>-->
<div class="row">
		<div class="col-lg-6">
			<div class="button">
			<input type="submit" name="submit" value="done">
			</div>
		</div>
		<div class="col-lg-6">
			<div class="button">
                            <input type="button" id="dash" onclick="document.location='viewproducts.jsp'" name="dashboard" value="Back">
			</div>
		</div>
</div>
</div>
 
<!---------------------------------     jsp   ------------------------------------------->
<%!
    int cid;
    String name;
    String cadd;
    String padd;
    String email;
    String mno;
    int pid;
    String title;
    String descp;    
    int price;
    String cat;
    int mid;
%>
<%
     
    String p="'"+(String)session.getAttribute("cname")+"'";
      // out.print(p);
        Class.forName("com.mysql.jdbc.Driver");
        Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st1=con1.createStatement();
        ResultSet rs1=st1.executeQuery("select * from custreg where email="+p+" ");
        rs1.next();
        cid=rs1.getInt(1);
        //out.print(cid);
        name=rs1.getString(2);
        cadd=rs1.getString(8);
        padd=rs1.getString(9);
       email=rs1.getString(3);
        mno=rs1.getString(5);
        //zip=rs1.getString(6);
        rs1.close();
        st1.close();
        con1.close();  
%>

<%   
       
        mid=Integer.parseInt(request.getParameter("mid"));
        session.setAttribute("mid", mid);
        pid=Integer.parseInt(request.getParameter("id"));
        //out.print("pid");
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from postadd where postid="+pid+"");
        rs.next();
        cat=rs.getString(2);
        //out.print(cat);
        title=rs.getString(3);
        descp=rs.getString(4);
        price=rs.getInt(5);
         
        rs.close();
        st.close();
        con.close();
%>

<div class="container" >
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

        <h3>Customer Details</h3><hr>
         <div class="row">
		<div class="col-lg-4">Date</div>
                <div class="col-lg-4"><input type="text" name="txtdate" class="form-control" value="<%=mydate%>"></div>
		<div class="col-lg-4"></div>
               
	</div>
            <h4>Ship to</h4>

                <div class="row" >
            <div class="col-sm-12"> 
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="cid" value="<%=cid%>" placeholder="Customer Id" readonly>
            </div>
             <div class="col-sm-6">
            <select id="country" name="txtcountry">
    <b>    <option value="">Country</option></b>
      <option>India</option>
      <option>Australia</option>
      <option>Canada</option>
      <option>Sri Lanka</option>
      <option>Bhutan</option>
      <option>Nepal</option>
      <option>Myanmar</option>
      <option>USA</option>

      </select>   
        </div>
                </div>   
            
        <div class="row" >
            <div class="col-sm-12"> 
            </div>
            <div class="col-sm-6">
                 <input type="text" class="form-control" name="fname" value="<%=name%>" placeholder="Full Name" readonly>
            </div>
        </div>

 <div class="row" >
            <div class="col-sm-12"> 
            </div>
               <div class="col-sm-6">
    <textarea id="des" name="cdr" placeholder="Street Address" readonly><%=cadd%></textarea>
                </div>
                 <div class="col-sm-6">
    <textarea id="des" name="pdr" placeholder="Street Address 2(Optional)"readonly><%=padd%></textarea>
                  </div>
 </div>


<div class="row" >
            <div class="col-sm-12"> 
            </div>
               <div class="col-sm-6">
                   <input type="email" id="em"  class="form-control" value="<%=email%>" name="txtemail" placeholder="Enter Email" required readonly> 
                </div>
                 <div class="col-sm-6">
                 <input type="text"  class="form-control" name="mobno" value="<%=mno%>" placeholder="Mobile Number" readonly> 
                </div>
</div>
    <br>
    
<!--  ============================================================================  ==-->
<h3>Product Details</h3><hr>
        <div class="row" >
            <div class="col-sm-12"> 
            </div>
            <div class="col-sm-6">
                <input type="text" class="form-control" name="productidtxt" value="<%=pid%>" placeholder="Product Id" readonly>
                </div>
                 <div class="col-sm-6">
                     <input type="text"  class="form-control" name="titletxt" value="<%=title%>" placeholder="Title" readonly> 
                 </div>
        </div>

<div class="row" >
            <div class="col-sm-12"> 
            </div>
            <div class="col-sm-6">
                <input type="text" id="cat" name="txtcat" value="<%=cat%>" readonly>
<!--<select id="cat" name="txtcat">
   <option value="">Choose Category </option>
      <option>Cars & Bikes</option>
      <option>Aesthetics</option>
      <option>Beauty</option>
      <option>Mobiles & Tablets</option>
      <option>Electronics-Appliances</option>
      <option>Sporting goods, Exercise</option>
      <option>Furniture</option>
      <option>Antiques</option>
      <option>Shoes</option>
      <option>Stuffs for Babies</option>
      <option>Clothing, Fashion & Accessories</option>
       <option>Toys - Games - Figurines</option>
      <option>Music</option>
      <option> DIY - Gardening</option>
    </select>               -->
            </div>
 <div class="col-sm-6">
     <textarea id="des" name="des" placeholder="Description"  readonly><%=descp%></textarea>
                 </div>
</div>

</form>
</body>
</html>


<!--.category added
container..position-relative
submit;display-flex.-->
