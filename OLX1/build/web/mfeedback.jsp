<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!--   <link rel="stylesheet" href="rating.css">-->

  <style  type="text/css">
body{
    box-sizing: border-box;
    overflow: hidden;
    }

.container {
  position:absolute;
  right: 300px;
  top: 10px;
  width: 640px;
  height: calc(99% - 40px);
  padding-bottom: 20px;
 background: #f2f2f2;
  z-index: 1;
  padding: 1%;
  padding-top:3px;
  display: flex;
  flex-direction: column;
  justify-content:center;
 box-shadow: 0 20px 20px #bff2e6;
 flex-wrap: wrap;
}

input[type=text] {
  width: 135%;
  height: 8px;
  padding: 15px 15px;
  background:#f2f2f2;
  margin: 2px 0;
 border: none;
  border-bottom: 1px solid black;
  margin-bottom: 15px;
  margin-left:1px;
}

input[type=email] {
  width: 135%;
  height: 8px;
  padding: 15px 15px;
    background: #f2f2f2;
  margin: 4px 0;
  box-sizing: border-box;
  border: none;
  border-bottom: 1px solid grey;
   margin-bottom: 15px;
}

textarea {
 width: 400px;
 height: 100px;
 border-color:#000000;
 font-size: 1em;
/* font-weight: bold;*/
 font-family: Verdana, Arial, Helvetica, sans-serif;
 border: 2px solid black;
}
.container h3{
    margin-top:0;
    padding:2px;
    padding-left: 35%;
    align-content: center;
    text-align: center;
}
.bottom{
    margin: 0 auto;
    padding-top: 50px;
    padding-left: 40px;
   
}
#stage {
background-image: linear-gradient(to right, #757F9A 0%, #D7DDE8  51%, #757F9A  100%);
/*background-image: linear-gradient(to right, #a1c4fd 0%, #c2e9fb 51%, #a1c4fd 100%);*/
box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
  margin: 40px; 
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
background-position: right center; /* change the direction of the change here */
/*color: #fff;*/
color:#000000;
text-decoration:none;
   }
       
   
#icon1 {
    width: 40px;
min-width: 40px;   
 }

  </style>

</head>
<body>

<%!
    String name;
    String email;
    String mno;

%>


<%
    
String p=(String) session.getAttribute("mname");
p="'"+p+"'";
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/olx","root","");
    Statement st=con.createStatement();
    String q="select mname,email,mobno from merreg where email="+p+"" ;
    ResultSet rs=st.executeQuery(q);
               rs.next();
                name=rs.getString(1);
                email=rs.getString(2);
                mno=rs.getString(3);
                    
    st.close();
    con.close();
}
catch(Exception e)
{
    out.print(e);
}
%>



<form method="post" action="mfeedbackinsert.jsp" onsubmit="return validate()"> 

    <!-- ------------------------------------------FORM---------------------------------------------->
<div class="container" >
    <h3 align="center" id="contact">Feedback Form</h3>

<br>
        <div class="row">
            <div class="col-sm-12">
            </div>
                <div class="col-sm-4"><font color=" #000000"> 
                     FULL NAME :</font>
                </div>
            <div class="col-sm-8">
                <input type="text" class="form-control" id="nme" value="<%=name%>" name="txtname" placeholder="Name">
                </div>
                
  
         </div>  
<br>
        <div class="row" >
            <div class="col-sm-12"> 
            </div>
               <div class="col-sm-4"> <font color=" #000000"> 
                 EMAIL :</font>
                </div>
                 <div class="col-sm-8">
                     <input type="email"  class="form-control" value="<%=email%>" id="email" name="txtemail" placeholder="Enter Email"> 
                 </div>
        </div> 
<br>
            <div class="row">
                 <div class="col-sm-4"><font color=" #000000"> MOBILE NUMBER :</font> 
                 </div>
             <div class="col-sm-8">
                 <input type="text" class="form-control" name="txtmobno" value="<%=mno%>" placeholder="Enter Mobile">
            <p id="b"></p>
            </div>
            </div>
    <br>
  
<div class="row">
                 <div class="col-sm-4"><font color=" #000000"> MESSAGE :</font> 
                 </div>
             <div class="col-sm-8">
        <textarea class="form-control" rows="5" cols="30" name="txtmsg" style="background-color: #f2f2f2;"></textarea>
      
            </div>
  </div>

    
  <div class="bottom">        
     <div class="col-sm-6">
        <input type="submit" value="Send Feedback" id="stage">
     </div>
        <div class="col-sm-8">
      <a href="merchantDashboard.jsp"><input type="button" value="Back" id="stage"></a>

        </div>
 </div>
    
</div> 
</form>



</body>
</html>
