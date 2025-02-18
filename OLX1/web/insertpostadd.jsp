<%-- 
    Document   : insertpostadd
    Created on : 22 Feb, 2023, 9:33:01 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%
    try
    {
  String cat=request.getParameter("txtcat");
  String title=request.getParameter("txttitle");
   String des=request.getParameter("des");
   int price=Integer.parseInt(request.getParameter("txtprice"));
    String city=request.getParameter("txtcity");
   String country=request.getParameter("txtcountry");
   //String mname="'"+(String)session.getAttribute("mname")+"'";
  // out.println(title+" "+des+" "+price+" "+city+" "+country);
   session.setAttribute("cat",cat);
   session.setAttribute("title",title);
   session.setAttribute("des",des);
   session.setAttribute("price",price);
   session.setAttribute("city",city);
   session.setAttribute("country",country);
    }
    catch(Exception e)
    {
        out.println(e);
    }

%>
<%--
    MultipartRequest m=new MultipartRequest(request,"D:/demo");
   out.println("Upload successful");
   String fname=m.getOriginalFileName("txtfile");
  fname="D:/demo/"+fname;
   out.println(fname);
  
--%>
<html>
<head><meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'>
</script>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;
   padding-left:9px;}


input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
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


.container {
  border-radius: 10px;
  background-color: #f2f2f2;
  padding: 10px;
}
span{
  display: block;
  width: 50px;
  height: 50px;
  margin-top: 6px;
}
option { direction: ltr; }

</style>
</head>
<body style="background-color:lightseagreen;"> 

<h4>Post An Advertise</h4>
<h5 class='far fa-calendar-check'>Add details</h5>

<div class="container" >
    <form action="insertpostadddone.jsp" method="post" enctype="multipart/form-data"> 
  <!--------------------------------------- file ------------------------------------->

        <b><label class="form-label" for="File">Select Files</label></b>
        <input class="form-control" type="file" id="selectfile" name="txtfile"
               multiple data-show-upload="true" data-show-caption="true">
        <br>
      
    
 <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
