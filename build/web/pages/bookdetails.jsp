<%@page import="java.util.concurrent.TimeUnit"%>
<%@page import="java.util.Base64"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@ include file="DB_Connection.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%session.getAttribute("Userid").toString();%>
<html class="no-js">
    <head>
        <title>Tours Traveller</title>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../assets/css/plugins.css">
        <link rel="stylesheet" type="text/css" href="../assets/css/style.css">
        <script src="../assets/js/modernizr-2.6.2.min.js"></script>

        <style type="text/css">
            #freecssfooter{display:block;width:100%;padding:120px 0 20px;overflow:hidden;background-color:transparent;z-index:5000;text-align:center;}
            #freecssfooter div#fcssholder div{display:none;}
            #freecssfooter div#fcssholder div:first-child{display:block;}
            #freecssfooter div#fcssholder div:first-child a{float:none;margin:0 auto;}
        </style></head>
    <style>
            .card-horizontal {
                display: flex;
                flex: 1 1 auto;
            }
        </style>
    <body>
        <script type="text/javascript">
            (function () {
                var bsa = document.createElement('script');
                bsa.type = 'text/javascript';
                bsa.async = true;
                bsa.src = '../../../../../../../../s3.buysellads.com/ac/bsa.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(bsa);
            })();
        </script>
        <div id="fh5co-wrapper">
            <div id="fh5co-page">
                <header id="fh5co-header-section" class="sticky-banner">
                    <div class="container">
                        <div class="nav-header"><a href="javascript:void(0)" class="js-fh5co-nav-toggle fh5co-nav-toggle dark"><i></i></a>
                            <h1 id="fh5co-logo"><a href=""><i class="icon-airplane"></i>Smart Tourism</a></h1>
                            <nav id="fh5co-menu-wrap" role="navigation">
                                <ul class="sf-menu" id="fh5co-primary-menu">
                                    <li><a href="../pages/Destination.jsp">Home</a></li>
                                    <li><a href="" class="fh5co-sub-ddown">How to Reach</a>
                                        <ul class="fh5co-sub-menu">
                                            <li><a href="cab.jsp">Cab</a></li>
                                            <li><a href="bus.jsp">Bus</a></li>
                                            <li><a href="https://www.irctc.co.in/nget/train-search">Train</a></li> 
                                            <li><a href="https://www.airindia.in/">Flights</a></li>  
                                        </ul>
                                    </li>
                                    <li><a href="uhotel.jsp">Hotels</a></li>
                                    <li class="active"><a href="bookdetails.jsp">Booking Details</a></li>
                                    <li ><a href="bookhistory.jsp">My Booking</a></li>
                                    <li><a href="flight.html">Review</a></li> 
                                    <li><a href="contact.html">Contact</a></li>
                                    <li><a href="logout.jsp">Logout</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>


                <div id="fh5co-tours" class="fh5co-section-gray">
                    <div class="container">
                <%                            
                    String Userid = (String)session.getAttribute("Userid").toString();
                    long vtot = 0, tot = 0;
                    String hotelnm = null;
                    String checkin = null;String checkout = null;
                    String noperson = null;String noroom = null;
                    String checkouttime = null;String hotelrate = null;
                    
                        try 
                        {
                            PreparedStatement pstn11 = con.prepareStatement("select * from hotelbook where Userid=? ORDER BY bid DESC LIMIT 1");
                            pstn11.setString(1, Userid);
                            ResultSet rs1 = pstn11.executeQuery();
                            if (rs1.next()) 
                            {
                                hotelnm = rs1.getString(8);
                                checkin = rs1.getString(3);checkout = rs1.getString(4);
                                noperson = rs1.getString(6);noroom = rs1.getString(5);
                                hotelrate = rs1.getString(9);checkouttime = rs1.getString(7);
                                
                                Date date = new Date();
                                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                                String strDate = formatter.format(date);
                                System.out.println(strDate);
                                
                                SimpleDateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
                                Date date1 = myFormat.parse(checkin);
                                Date date2 = myFormat.parse(checkout);
                                long diff = date2.getTime() - date1.getTime();
                                System.out.println("Days: " + TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS));
                                int day = (int) TimeUnit.DAYS.convert(diff, TimeUnit.MILLISECONDS);
                                System.out.println(day);
                                tot = day*rs1.getInt(5)*rs1.getInt(9);
                %>
                            <div class="card">
                                <div class="card-horizontal">
                                    <div class="img-square-wrapper">
                                        <img class="" src="../pages/hotel1.jpeg" alt="Card image cap" style="height: 110%; width: 80%;">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title" style="color:  #F64E8B;font-size: xx-large;"><b><%=rs1.getString(8)%></b></h4>
                                        <p class="card-text" style="margin-top: -15px;color: black;"><b>Check In :  <%=rs1.getString(3)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Check Out :  <%=rs1.getString(4)%></b></p>
                                        <p class="card-text" style="margin-top: -15px;color: black;"><b>Check In Time : <%=rs1.getString(7)%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Rs.<%=rs1.getString(9)%>/Night</b></p>
                                        <p class="card-text" style="margin-top: -20px;color: black;"><b>No Of Person : <%=rs1.getString(6)%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>No Of Rooms : <%=rs1.getString(5)%></b></p>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <h4 class="card-title" style="color: black;"><b>Basefare : <%=tot%></b></h4>
                                        
                                    </div>
                                </div>
                            </div><br /><br />
                <%
                            }
                        } catch (Exception e) {
                            System.out.println(e);
                        }
                    
                %>
                </div><br />
                <div class="container">
                <%
                        String vehiclename = null;
                        String sourcenm = null;String destinationnm = null;
                        String vehicletype = null;String acnonac = null;
                        String drivernm = null; String contactno = null;
                        long dist = 0;
                        try {
                            PreparedStatement pstn1 = con.prepareStatement("select * from vehiclebooking where contno=? ORDER BY bid DESC LIMIT 1");
                            pstn1.setString(1, Userid);
                            ResultSet rs = pstn1.executeQuery();
                            if (rs.next()) {
                                vehiclename = rs.getString(7);
                                sourcenm = rs.getString(5); destinationnm = rs.getString(6);
                                vehicletype = rs.getString(9); acnonac = rs.getString(8);
                                drivernm = rs.getString(10);  contactno = rs.getString(11);
                                dist = rs.getLong(13)/rs.getLong(12);
                                vtot = rs.getLong(13);
                %>
                            <div class="card">
                                <div class="card-horizontal">
                                    <div class="img-square-wrapper">
                                        <img class="" src="../pages/taxi.jpg" alt="Card image cap" style="height: 110%; width: 80%;">
                                    </div>
                                    <div class="card-body">
                                        <h4 class="card-title" style="color:  #F64E8B;font-size: xx-large;"><b><%=rs.getString(7)%></b></h4>
                                        <p class="card-text" style="margin-top: -25px;color: black;"><b>Source Location :  <%=rs.getString(5)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Destination :  <%=rs.getString(6)%></b></p>
                                        <p class="card-text" style="margin-top: -10px;color: black;"><b>Vehicle Type : <%=rs.getString(9)%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Ac/Non-Ac : <%=rs.getString(8)%></b></p>
                                        <p class="card-text" style="margin-top: -20px;color: black;"><b>Driver Name : <%=rs.getString(10)%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Contact No : <%=rs.getString(11)%></b></p>
                                        <p class="card-text" style="margin-top: -20px;color: black;"><b>Distance : <%=dist%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Rate : <%=rs.getString(12)%>/Km</b></p>
                                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                                        <h4 class="card-title" style="color: black;"><b>Basefare : <%=rs.getString(13)%></b></h4>
                                        <h4 class="card-title" style="color: black;"><b>----------------------------------------------------------------------------------------------</b></h4>
                                        <h4 class="card-title" style="color: black;"><b>Total Amount : <%=vtot+tot%></b></h4>
                                        <a class="btn alert-success" href="compltbk.jsp?hotelnm=<%=hotelnm%>&checkin=<%=checkin%>&checkout=<%=checkout%>&noperson=<%=noperson%>&noroom=<%=noroom%>&hotelrate=<%=hotelrate%>&checkouttime=<%=checkouttime%>&vehiclename=<%=vehiclename%>&sourcenm=<%=sourcenm%>&destinationnm=<%=destinationnm%>&vehicletype=<%=vehicletype%>&acnonac=<%=acnonac%>&drivernm=<%=drivernm%>&contactno=<%=contactno%>&dist=<%=dist%>&vtot=<%=vtot%>&tot=<%=tot%>&finaltot=<%=vtot+tot%>">Complete Booking</a>
                                    </div>
                                </div>
                            </div><br /><br />
                <%
                            }
                        } catch (Exception e) {
                            System.out.println(e);
                        }
                        
                    
                %>
                </div>
                </div>

                <div id="fh5co-testimonial">
                    <div class="container">
                        <div class="row animate-box">
                            <div class="col-md-8 col-md-offset-2 text-center fh5co-heading">
                                <h2>Happy Clients</h2>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="box-testimony animate-box">
                                    <blockquote><span class="quote"><span><i class="icon-quotes-right"></i></span></span>
                                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                                    </blockquote>
                                    <p class="author">John Doe, CEO <a href="">domain.com</a> <span class="subtext">Creative Director</span></p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="box-testimony animate-box">
                                    <blockquote><span class="quote"><span><i class="icon-quotes-right"></i></span></span>
                                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.&rdquo;</p>
                                    </blockquote>
                                    <p class="author">John Doe, CEO <a href="">domain.com</a> <span class="subtext">Creative Director</span></p>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="box-testimony animate-box">
                                    <blockquote><span class="quote"><span><i class="icon-quotes-right"></i></span></span>
                                        <p>&ldquo;Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean.&rdquo;</p>
                                    </blockquote>
                                    <p class="author">John Doe, Founder <a href="">Domain.com</a> <span class="subtext">Creative Director</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <footer>
                    <div id="footer">
                        <div class="container">
                            <div class="row row-bottom-padded-md">
                                <div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
                                    <h3>About Travel</h3>
                                    <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
                                    <h3>Top Flights Routes</h3>
                                    <ul>
                                        <li><a href="">Manila flights</a></li>
                                        <li><a href="">Dubai flights</a></li>
                                        <li><a href="">Bangkok flights</a></li>
                                        <li><a href="">Tokyo Flight</a></li>
                                        <li><a href="">New York Flights</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
                                    <h3>Top Hotels</h3>
                                    <ul>
                                        <li><a href="">Boracay Hotel</a></li>
                                        <li><a href="">Dubai Hotel</a></li>
                                        <li><a href="">Singapore Hotel</a></li>
                                        <li><a href="">Manila Hotel</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
                                    <h3>Interest</h3>
                                    <ul>
                                        <li><a href="">Beaches</a></li>
                                        <li><a href="">Family Travel</a></li>
                                        <li><a href="">Budget Travel</a></li>
                                        <li><a href="">Food &amp; Drink</a></li>
                                        <li><a href="">Honeymoon and Romance</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
                                    <h3>Best Places</h3>
                                    <ul>
                                        <li><a href="">Boracay Beach</a></li>
                                        <li><a href="">Dubai</a></li>
                                        <li><a href="">Singapore</a></li>
                                        <li><a href="">Hongkong</a></li>
                                    </ul>
                                </div>
                                <div class="col-md-2 col-sm-2 col-xs-12 fh5co-footer-link">
                                    <h3>Affordable</h3>
                                    <ul>
                                        <li><a href="">Food &amp; Drink</a></li>
                                        <li><a href="">Fare Flights</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6 col-md-offset-3 text-center">
                                    <p class="fh5co-social-icons"><a href=""><i class="icon-twitter2"></i></a> <a href=""><i class="icon-facebook2"></i></a> <a href=""><i class="icon-instagram"></i></a> <a href=""><i class="icon-dribbble2"></i></a> <a href=""><i class="icon-youtube"></i></a></p>
                                    <p>Copyright <a href="">Module</a>. All Rights Reserved.<br>
                                        Made with <i class="icon-heart3"></i> by <a target="_blank" rel="nofollow noopener" href="">FreeHTML5.co</a> / Demo Images: Unsplash</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="../assets/js/jquery.min.js"></script>
        <script src="../assets/js/jquery.easing.1.3.js"></script>
        <script src="../assets/js/bootstrap.min.js"></script>
        <script src="../assets/js/jquery.waypoints.min.js"></script>
        <script src="../assets/js/sticky.js"></script>
        <script src="../assets/js/jquery.stellar.min.js"></script>
        <script src="../assets/js/hoverIntent.js"></script>
        <script src="../assets/js/superfish.js"></script>
        <script src="../assets/js/jquery.magnific-popup.min.js"></script>
        <script src="../assets/js/bootstrap-datepicker.min.js"></script>
        <script src="../assets/js/classie.js"></script>
        <script src="../assets/js/selectFx.js"></script>
        <script src="../assets/js/main.js"></script>
        <div id="freecssfooter">
            <div id="fcssholder">
                <div id="bsap_2365" class="bsarocks bsap_b893e54e42ad5b76e7b252f59be18e67"></div>
            </div>
        </div>
        <script type="text/javascript">
            var gaProperty = 'UA-120201777-1';
            var disableStr = 'ga-disable-' + gaProperty;
            if (document.cookie.indexOf(disableStr + '=true') > -1) {
                window[disableStr] = true;
            }
            function gaOptout() {
                document.cookie = disableStr + '=true; expires=Thu, 31 Dec 2045 23:59:59 UTC; path=/';
                window[disableStr] = true;
                alert('Google Tracking has been deactivated');
            }
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o), m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '../../../../../../../../www.google-analytics.com/analytics.js', 'ga');
            ga('create', 'UA-120201777-1', 'auto');
            ga('set', 'anonymizeIp', true);
            ga('send', 'pageview');
        </script>
    </body>
</html>