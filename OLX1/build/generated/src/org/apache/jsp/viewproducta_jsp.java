package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import com.oreilly.servlet.MultipartRequest;

public final class viewproducta_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

String path;
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("     <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>\n");
      out.write("     <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("   \n");
      out.write("  <style  type=\"text/css\">\n");
      out.write("#stage{\n");
      out.write(" background-image: linear-gradient(to right, #04AA6D 0%,#4CA1AF 0%, #D6A4A4  51%, #DAE2F8  100%);\n");
      out.write("box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);\n");
      out.write("  margin:10px; \n");
      out.write("  padding: 10px;\n");
      out.write(" display: block;\n");
      out.write(" border:none;\n");
      out.write("  text-align: center;\n");
      out.write("  align-content: center;\n");
      out.write("   text-transform: uppercase;\n");
      out.write("   transition: 0.5s;\n");
      out.write("   background-size: 200% auto;\n");
      out.write(" color: white;            \n");
      out.write("/*color:#007991;*/\n");
      out.write(" box-shadow: 0 0 20px #eee;\n");
      out.write("  border-radius: 10px;\n");
      out.write("  width: 140px;\n");
      out.write("  height: 50px;\n");
      out.write("  text-decoration: none;\n");
      out.write("  position:static;\n");
      out.write("  \n");
      out.write("}\n");
      out.write("#stage:hover {\n");
      out.write("background-position: right center; \n");
      out.write("color:#000000;\n");
      out.write("text-decoration:none;\n");
      out.write("   }\n");
      out.write("</style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div align=\"center\">\n");
      out.write("        <div class=\"col-sm-12\">\n");
      out.write("      <a href=\"adminDashboard.jsp\"><input type=\"button\" value=\"Dashboard\" id=\"stage\" name=\"Dash\"></a>\n");
      out.write(" </div>\n");
      out.write("    </div>\n");
      out.write("        <table class=\"table table-striped\">\n");
      out.write("            <tr>\n");
      out.write("                <th>Post ID</th>\n");
      out.write("                <th>Category</th>\n");
      out.write("                <th>Title</th>\n");
      out.write("                <th>Description</th>\n");
      out.write("                <th>Price</th>\n");
      out.write("                <th>City</th>\n");
      out.write("                <th>Country</th>\n");
      out.write("                <th>Product Image</th>\n");
      out.write("            </tr>\n");
      out.write("            ");
      out.write("\n");
      out.write("       ");

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
                    
                    out.println("<td><img src="+path+" height=60 width=90 ></td>");
                    
//                    out.println("<td><a href=buynowp.jsp?id="+p+">Buy Now</a></td>");
                     
                    
                }


                st.close();
                con.close();
            //       response.sendRedirect("lsform.html");
    }catch(Exception e){
        out.println(e);
    }

       
      out.write("\n");
      out.write("        </table>\n");
      out.write("       \n");
      out.write("       \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
