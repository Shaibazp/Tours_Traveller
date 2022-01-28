package org.apache.jsp.pages;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Base64;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.text.DateFormat;
import java.util.Date;
import java.sql.*;
import java.sql.*;

public final class test1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/pages/DB_Connection.jsp");
  }

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
      response.setContentType("text/html");
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write('\n');
      out.write('\n');

    Connection con=null;
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tours_traveller", "root", "root");
        //System.out.println("Connection Successful.................. jsp page");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    
    

      out.write('\n');
    String region = "North";//request.getParameter("region");
    String season = "Summer";//;request.getParameter("location");
    String city = "";//request.getParameter("city");

    if (region != (null)) {
        //System.out.println("region");
        try {
            PreparedStatement pstn1 = con.prepareStatement("select * from places where reagion=? AND season=?");
            pstn1.setString(1, region);
            pstn1.setString(2, season);
            ResultSet rs = pstn1.executeQuery();
            while (rs.next()) {
                String location = rs.getString(3);
                                        System.out.println(location);
                                        //Blob image = rs.getBlob(7);
                                        byte[ ] imgData = rs.getBytes(7);
                                        String encode = Base64.getEncoder().encodeToString(imgData);
                                        request.setAttribute("imgbase", encode);

      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n");
      out.write("<div class=\"container\">\n");
      out.write("\n");
      out.write("<div class=\"card\" style=\"width: 18rem;\">\n");
      out.write("    <img src=\"c:image/jpeg;base64,");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${imgBase}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("        <h5 class=\"card-title\">");
      out.print(rs.getString(2));
      out.write("</h5>\n");
      out.write("        <p class=\"card-text\">");
      out.print(rs.getString(6));
      out.write("</p>\n");
      out.write("        <a href=\"#\" class=\"btn btn-primary\">Visite</a>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("<div class=\"card mb-3\">\n");
      out.write("    <img src=\"../assets/images/car-2.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("  <div class=\"card-body\">\n");
      out.write("    <h5 class=\"card-title\">");
      out.print(rs.getString(3));
      out.write("</h5>\n");
      out.write("    <p class=\"card-text\">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\n");
      out.write("    <a href=\"#\" class=\"btn btn-primary\">Visite</a>\n");
      out.write("  </div>\n");
      out.write("</div>\n");
      out.write("    <div class=\"card-deck\">\n");
      out.write("  <div class=\"card\">\n");
      out.write("    <img src=\"...\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("    <div class=\"card-body\">\n");
      out.write("      <h5 class=\"card-title\">");
      out.print(rs.getString(3));
      out.write("</h5>\n");
      out.write("      <p class=\"card-text\">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>\n");
      out.write("      <p class=\"card-text\"><small class=\"text-muted\">Last updated 3 mins ago</small></p>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("  \n");
      out.write("  \n");
      out.write("</div>\n");
      out.write("</div>");

            }
        } catch (Exception e) {
            System.out.println(e);
        }

    } else {
        System.out.println("city");
    }


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
