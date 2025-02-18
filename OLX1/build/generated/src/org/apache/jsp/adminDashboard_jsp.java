package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class adminDashboard_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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

    String p=(String) session.getAttribute("aname");
    out.println("<h2 align=center> Admin Dashboard </h2>");
    out.println("<p align=center> <font color=red> Welcome &nbsp;" +p+ "</font></p>");
    

      out.write("\n");
      out.write("<html>\n");
      out.write("   <head>\n");
      out.write("     <meta charset=\"utf-8\">\n");
      out.write("     <meta name=\"viewport\" content=\"width=device-width,initial-scale=1\">\n");
      out.write("     <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css\">\n");
      out.write("     <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js\"></script>\n");
      out.write("     <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js\"></script>\n");
      out.write("   \t<link rel=\"stylesheet\" href=\"admindash.css\">\n");
      out.write("\n");
      out.write("   </head>\n");
      out.write(" <body>\n");
      out.write("     \n");
      out.write(" <div class=\"login\">\n");
      out.write("     <div align=\"center\">\n");
      out.write(" <a href=\"arCustomer.jsp\"><input type=\"submit\" value=\"Approve/Reject Customer\"></a>\n");
      out.write("          <br>\n");
      out.write(" <a href=\"arMerchant.jsp\"><input type=\"submit\" value=\"Approve/Reject Merchant\"></a>\n");
      out.write("          <br>\n");
      out.write(" <a href=\"MerchantPaymentDetails.jsp\"><input type=\"submit\" value=\"Seller Payment Details\"></a>\n");
      out.write("          <br>\n");
      out.write(" <a href=\"viewproducta.jsp\"><input type=\"submit\" value=\"All Products\"></a>\n");
      out.write("         <br>\n");
      out.write(" <a href=\"viewBuyers.jsp\"><input type=\"submit\" value=\"View Customers\"></a>\n");
      out.write("        <br>\n");
      out.write(" <a href=\"viewSellers.jsp\"><input type=\"submit\" value=\"View Merchants\"></a>\n");
      out.write("          <br> \n");
      out.write(" <a href=\"CustomerwiseProductRep.jsp\"><input type=\"submit\" value=\"Buyer wise Product Report\"></a>\n");
      out.write("         <br>\n");
      out.write(" <a href=\"MerchantwiseProductRep.jsp\"><input type=\"submit\" value=\"Seller wise Product Report\"></a>\n");
      out.write("<br>\n");
      out.write(" <a href=\"ProductwiseBuyerRep.jsp\"><input type=\"submit\" value=\"Product wise Buyer Report\"></a>\n");
      out.write(" <br>\n");
      out.write(" <a href=\"ProductwiseSellerRep.jsp\"><input type=\"submit\" value=\"Product wise Seller Report\"></a>\n");
      out.write(" <br>\n");
      out.write(" <a href=\"viewcfb.jsp\"><input type=\"submit\" value=\"View Buyer Feedback\"></a>\n");
      out.write(" <br>\n");
      out.write(" <a href=\"viewmfb.jsp\"><input type=\"submit\" value=\"View Seller Feedback\"></a>\n");
      out.write(" <br>\n");
      out.write(" \n");
      out.write("   <a href=\"aSignout.jsp\"><input type=\"submit\" value=\"Sign Out\" name=\"asignout\" id=\"so\"></a>\n");
      out.write("       </div>\n");
      out.write("  </div>\n");
      out.write("     \n");
      out.write("  \n");
      out.write(" </body>\n");
      out.write("</html>\n");
      out.write("    ");
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
