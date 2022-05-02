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

public final class uhotel_jsp extends org.apache.jasper.runtime.HttpJspBase
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
    
    

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html class=\"no-js\">\n");
      out.write("    <head>\n");
      out.write("        <title>Tours Traveller</title>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/bootstrap.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/plugins.css\">\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"../assets/css/style.css\">\n");
      out.write("        <script src=\"../assets/js/modernizr-2.6.2.min.js\"></script>\n");
      out.write("\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("            #freecssfooter{display:block;width:100%;padding:120px 0 20px;overflow:hidden;background-color:transparent;z-index:5000;text-align:center;}\n");
      out.write("            #freecssfooter div#fcssholder div{display:none;}\n");
      out.write("            #freecssfooter div#fcssholder div:first-child{display:block;}\n");
      out.write("            #freecssfooter div#fcssholder div:first-child a{float:none;margin:0 auto;}\n");
      out.write("        </style></head>\n");
      out.write("    <style>\n");
      out.write("            .card-horizontal {\n");
      out.write("                display: flex;\n");
      out.write("                flex: 1 1 auto;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("    <body>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            (function () {\n");
      out.write("                var bsa = document.createElement('script');\n");
      out.write("                bsa.type = 'text/javascript';\n");
      out.write("                bsa.async = true;\n");
      out.write("                bsa.src = '../../../../../../../../s3.buysellads.com/ac/bsa.js';\n");
      out.write("                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(bsa);\n");
      out.write("            })();\n");
      out.write("        </script>\n");
      out.write("        <div id=\"fh5co-wrapper\">\n");
      out.write("            <div id=\"fh5co-page\">\n");
      out.write("                <header id=\"fh5co-header-section\" class=\"sticky-banner\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"nav-header\"><a href=\"javascript:void(0)\" class=\"js-fh5co-nav-toggle fh5co-nav-toggle dark\"><i></i></a>\n");
      out.write("                            <h1 id=\"fh5co-logo\"><a href=\"\"><i class=\"icon-airplane\"></i>Travel</a></h1>\n");
      out.write("                            <nav id=\"fh5co-menu-wrap\" role=\"navigation\">\n");
      out.write("                                <ul class=\"sf-menu\" id=\"fh5co-primary-menu\">\n");
      out.write("                                    <li class=\"active\"><a href=\"\">Home</a></li>\n");
      out.write("                                    <li><a href=\"Destination.jsp\">Destination</a></li>\n");
      out.write("                                    <li><a href=\"pages/hotel.html\">Hotel</a></li>\n");
      out.write("                                    <li><a href=\"pages/car.html\">Car</a></li>\n");
      out.write("                                    <li><a href=\"pages/blog.html\">Blog</a></li>\n");
      out.write("                                    <li><a href=\"pages/contact.html\">Contact</a></li>\n");
      out.write("                                    <li><a hrefq=\"pages/blog.html\"> </a></li>\n");
      out.write("                                    <li><a hrefq=\"pages/contact.html\"> </a></li>\n");
      out.write("                                    <li><a hreef=\"pages/blog.html\"> </a></li>\n");
      out.write("                                    <li><a href=\"pages/contact.html\"> </a></li>\n");
      out.write("                                    <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                                </ul>\n");
      out.write("                            </nav>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </header>\n");
      out.write("                <div class=\"fh5co-hero\">\n");
      out.write("                    <div class=\"fh5co-overlay\"></div>\n");
      out.write("                    <div class=\"fh5co-cover\" data-stellar-background-ratio=\"0.5\" style=\"background-image:url(../assets/images/cover_bg_3.jpg);\">\n");
      out.write("                        <div class=\"desc\">\n");
      out.write("                            <div class=\"container\">\n");
      out.write("                                <div class=\"row\">\n");
      out.write("\n");
      out.write("                                    <div class=\"desc2 animate-box\">\n");
      out.write("                                        <div class=\"col-sm-7 col-sm-push-1 col-md-7 col-md-push-1\">\n");
      out.write("                                            <p>Lorem ipsum dolor sit amet</p>\n");
      out.write("                                            <h2>Exclusive Limited Time Offer</h2>\n");
      out.write("                                            <h3>Fly to Hong Kong via Los Angeles, USA</h3>\n");
      out.write("                                            <span class=\"price\">$599</span></div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div id=\"fh5co-tours\" class=\"fh5co-section-gray\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                ");
                            
                    String region = request.getParameter("region");
                    String season = request.getParameter("location");
                    String city = "Agra";//request.getParameter("city");
                    
                    session.setAttribute("location2", city);
                        try {
                            PreparedStatement pstn1 = con.prepareStatement("select * from hotels where placenm=?");
                            pstn1.setString(1, city);
                            ResultSet rs = pstn1.executeQuery();
                            while (rs.next()) {
                                String location = rs.getString(3);
                                
                                byte[] imgData = rs.getBytes(10);
                                String encode = Base64.getEncoder().encodeToString(imgData);
                                request.setAttribute("imgbase", encode);
                
      out.write("\n");
      out.write("                \n");
      out.write("<!--                        <div class=\"card mb-3\">\n");
      out.write("                            <img src=\"data:image/jpeg;base64,");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${imgbase}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" class=\"card-img-left\" alt=\"...\">\n");
      out.write("                            <div class=\"card-body\">\n");
      out.write("                                <h1 class=\"card-title\" style=\"font-style: italic;\"><b>");
      out.print(rs.getString(2));
      out.write("</b></h1>\n");
      out.write("                                \n");
      out.write("                                <p class=\"card-text\">");
      out.print(rs.getString(6));
      out.write("</p>\n");
      out.write("                                <a href=\"Location.jsp?desc=");
      out.print(rs.getString(2));
      out.write("\" class=\"btn btn-primary\">Visite</a>\n");
      out.write("                            </div>\n");
      out.write("                        </div><br />-->\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"card\">\n");
      out.write("                                <div class=\"card-horizontal\">\n");
      out.write("                                    <div class=\"img-square-wrapper\">\n");
      out.write("                                        <img class=\"\" src=\"data:image/jpeg;base64,");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${imgbase}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"Card image cap\">\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"card-body\">\n");
      out.write("                                        <h4 class=\"card-title\">");
      out.print(rs.getString(2));
      out.write("</h4>\n");
      out.write("                                        <p class=\"card-text\">Some quick example text to build on the card title and make up the bulk of the card's content.</p>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    \n");
      out.write("                ");

                            }
                        } catch (Exception e) {
                            System.out.println(e);
                        }
                    
                
      out.write("\n");
      out.write("                </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div id=\"fh5co-testimonial\">\n");
      out.write("                    <div class=\"container\">\n");
      out.write("                        <div class=\"row animate-box\">\n");
      out.write("                            <div class=\"col-md-8 col-md-offset-2 text-center fh5co-heading\">\n");
      out.write("                                <h2>Happy Clients</h2>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <div class=\"box-testimony animate-box\">\n");
      out.write("                                    <blockquote><span class=\"quote\"><span><i class=\"icon-quotes-right\"></i></span></span>\n");
      out.write("                                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>\n");
      out.write("                                    </blockquote>\n");
      out.write("                                    <p class=\"author\">John Doe, CEO <a href=\"\">domain.com</a> <span class=\"subtext\">Creative Director</span></p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <div class=\"box-testimony animate-box\">\n");
      out.write("                                    <blockquote><span class=\"quote\"><span><i class=\"icon-quotes-right\"></i></span></span>\n");
      out.write("                                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>\n");
      out.write("                                    </blockquote>\n");
      out.write("                                    <p class=\"author\">John Doe, CEO <a href=\"\">domain.com</a> <span class=\"subtext\">Creative Director</span></p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"col-md-4\">\n");
      out.write("                                <div class=\"box-testimony animate-box\">\n");
      out.write("                                    <blockquote><span class=\"quote\"><span><i class=\"icon-quotes-right\"></i></span></span>\n");
      out.write("                                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>\n");
      out.write("                                    </blockquote>\n");
      out.write("                                    <p class=\"author\">John Doe, Founder <a href=\"\">Domain.com</a> <span class=\"subtext\">Creative Director</span></p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <footer>\n");
      out.write("                    <div id=\"footer\">\n");
      out.write("                        <div class=\"container\">\n");
      out.write("                            <div class=\"row row-bottom-padded-md\">\n");
      out.write("                                <div class=\"col-md-2 col-sm-2 col-xs-12 fh5co-footer-link\">\n");
      out.write("                                    <h3>About Travel</h3>\n");
      out.write("                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-2 col-sm-2 col-xs-12 fh5co-footer-link\">\n");
      out.write("                                    <h3>Top Flights Routes</h3>\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Manila flights</a></li>\n");
      out.write("                                        <li><a href=\"\">Dubai flights</a></li>\n");
      out.write("                                        <li><a href=\"\">Bangkok flights</a></li>\n");
      out.write("                                        <li><a href=\"\">Tokyo Flight</a></li>\n");
      out.write("                                        <li><a href=\"\">New York Flights</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-2 col-sm-2 col-xs-12 fh5co-footer-link\">\n");
      out.write("                                    <h3>Top Hotels</h3>\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Boracay Hotel</a></li>\n");
      out.write("                                        <li><a href=\"\">Dubai Hotel</a></li>\n");
      out.write("                                        <li><a href=\"\">Singapore Hotel</a></li>\n");
      out.write("                                        <li><a href=\"\">Manila Hotel</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-2 col-sm-2 col-xs-12 fh5co-footer-link\">\n");
      out.write("                                    <h3>Interest</h3>\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Beaches</a></li>\n");
      out.write("                                        <li><a href=\"\">Family Travel</a></li>\n");
      out.write("                                        <li><a href=\"\">Budget Travel</a></li>\n");
      out.write("                                        <li><a href=\"\">Food &amp; Drink</a></li>\n");
      out.write("                                        <li><a href=\"\">Honeymoon and Romance</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-2 col-sm-2 col-xs-12 fh5co-footer-link\">\n");
      out.write("                                    <h3>Best Places</h3>\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Boracay Beach</a></li>\n");
      out.write("                                        <li><a href=\"\">Dubai</a></li>\n");
      out.write("                                        <li><a href=\"\">Singapore</a></li>\n");
      out.write("                                        <li><a href=\"\">Hongkong</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"col-md-2 col-sm-2 col-xs-12 fh5co-footer-link\">\n");
      out.write("                                    <h3>Affordable</h3>\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"\">Food &amp; Drink</a></li>\n");
      out.write("                                        <li><a href=\"\">Fare Flights</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-md-6 col-md-offset-3 text-center\">\n");
      out.write("                                    <p class=\"fh5co-social-icons\"><a href=\"\"><i class=\"icon-twitter2\"></i></a> <a href=\"\"><i class=\"icon-facebook2\"></i></a> <a href=\"\"><i class=\"icon-instagram\"></i></a> <a href=\"\"><i class=\"icon-dribbble2\"></i></a> <a href=\"\"><i class=\"icon-youtube\"></i></a></p>\n");
      out.write("                                    <p>Copyright <a href=\"\">Module</a>. All Rights Reserved.<br>\n");
      out.write("                                        Made with <i class=\"icon-heart3\"></i> by <a target=\"_blank\" rel=\"nofollow noopener\" href=\"\">FreeHTML5.co</a> / Demo Images: Unsplash</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </footer>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script src=\"../assets/js/jquery.min.js\"></script>\n");
      out.write("        <script src=\"../assets/js/jquery.easing.1.3.js\"></script>\n");
      out.write("        <script src=\"../assets/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"../assets/js/jquery.waypoints.min.js\"></script>\n");
      out.write("        <script src=\"../assets/js/sticky.js\"></script>\n");
      out.write("        <script src=\"../assets/js/jquery.stellar.min.js\"></script>\n");
      out.write("        <script src=\"../assets/js/hoverIntent.js\"></script>\n");
      out.write("        <script src=\"../assets/js/superfish.js\"></script>\n");
      out.write("        <script src=\"../assets/js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"../assets/js/bootstrap-datepicker.min.js\"></script>\n");
      out.write("        <script src=\"../assets/js/classie.js\"></script>\n");
      out.write("        <script src=\"../assets/js/selectFx.js\"></script>\n");
      out.write("        <script src=\"../assets/js/main.js\"></script>\n");
      out.write("        <div id=\"freecssfooter\">\n");
      out.write("            <div id=\"fcssholder\">\n");
      out.write("                <div id=\"bsap_2365\" class=\"bsarocks bsap_b893e54e42ad5b76e7b252f59be18e67\"></div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script type=\"text/javascript\">\n");
      out.write("            var gaProperty = 'UA-120201777-1';\n");
      out.write("            var disableStr = 'ga-disable-' + gaProperty;\n");
      out.write("            if (document.cookie.indexOf(disableStr + '=true') > -1) {\n");
      out.write("                window[disableStr] = true;\n");
      out.write("            }\n");
      out.write("            function gaOptout() {\n");
      out.write("                document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2045 23:59:59 UTC; path=/';\n");
      out.write("                window[disableStr] = true;\n");
      out.write("                alert('Google Tracking has been deactivated');\n");
      out.write("            }\n");
      out.write("            (function (i, s, o, g, r, a, m) {\n");
      out.write("                i['GoogleAnalyticsObject'] = r;\n");
      out.write("                i[r] = i[r] || function () {\n");
      out.write("                    (i[r].q = i[r].q || []).push(arguments)\n");
      out.write("                }, i[r].l = 1 * new Date();\n");
      out.write("                a = s.createElement(o), m = s.getElementsByTagName(o)[0];\n");
      out.write("                a.async = 1;\n");
      out.write("                a.src = g;\n");
      out.write("                m.parentNode.insertBefore(a, m)\n");
      out.write("            })(window, document, 'script', '../../../../../../../../www.google-analytics.com/analytics.js', 'ga');\n");
      out.write("            ga('create', 'UA-120201777-1', 'auto');\n");
      out.write("            ga('set', 'anonymizeIp', true);\n");
      out.write("            ga('send', 'pageview');\n");
      out.write("        </script>\n");
      out.write("    </body>\n");
      out.write("</html>");
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
