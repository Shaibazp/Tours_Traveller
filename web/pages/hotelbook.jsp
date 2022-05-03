<%@page import="java.text.DecimalFormat"%>
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
    <meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
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
                                    <li><a href="bookdetails.jsp">Booking Details</a></li>
                                    <li><a href="hgallary.jsp">Gallary</a></li>
                                    <li><a href="viewreview.jsp">Review</a></li>
                                    <li><a href="contact.jsp">Contact</a></li>
                                    <li><a href="logout.jsp">Logout</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>
                <div id="fh5co-tours" class="fh5co-section-gray">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 animate-box">
                                <h2 class="heading-title">Travel Booking guide to book a perfect hotel</h2>
                            </div>
                            <%//                    String id = request.getParameter("id");
                                String htname = null;
                                String hid = request.getParameter("hid");
                                String hrate = (String)session.getAttribute("hrate").toString();
                                System.out.println(hrate);
                                float ratet = Float.parseFloat(hrate);
                                DecimalFormat df = new DecimalFormat("#.#");
                                //session.setAttribute("destination", desc);
                                try {
                                    
                                    PreparedStatement pstn1 = con.prepareStatement("select * from hotels where hid=? ");
                                    pstn1.setString(1, hid);
                                    ResultSet rs = pstn1.executeQuery();
                                    while (rs.next()) {
                                        htname = rs.getString(2);
                                        session.setAttribute("hotelnm", htname);
                                        session.setAttribute("hotelrate", rs.getString(16));
                                        String location = rs.getString(3);
                                        byte[] imgData = rs.getBytes(10);
                                        String encode = Base64.getEncoder().encodeToString(imgData);
                                        request.setAttribute("imgbase", encode);

                                        byte[] imgData2 = rs.getBytes(11);
                                        String encode2 = Base64.getEncoder().encodeToString(imgData2);
                                        request.setAttribute("imgbase2", encode2);
                            %>
                            <div class="col-md-6 animate-box" >
                                <p style="color: black;font-size: x-large;"><b><%=rs.getString(2)%></b></p>
                                <p style="color: black;margin-top: -5%;"><%=(String)session.getAttribute("ratingstar").toString()%> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><%=df.format(ratet)%>/5&nbsp;<%=(String)session.getAttribute("ratingvalue").toString()%>&nbsp;(<%=(String)session.getAttribute("rcount").toString()%>)</b></p>
                                <p style="color: black;margin-top: -3%;"><%=rs.getString(6)%></p>
                                <p style="color: black;margin-top: -2%;"><b><%=rs.getString(12)%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><%=rs.getString(13)%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><%=rs.getString(15)%></b></p>
                                <p style="color: black;margin-top: -2%;"><b><%=rs.getString(14)%></b></b></p>
                                <p style="color: black;"></p>
                                <p style="color: black;"><%=rs.getString(9)%></p>
                            </div>
                            <div class="col-md-6 animate-box"><img class="img-responsive" src="data:image/jpeg;base64,${imgbase}" alt="website template image">
                            </div>

                            <%
                                    }
                                } catch (Exception e) {
                                    System.out.println(e);
                                }
                            %>
                        </div><br /><br />
                        <div class="container">
                            <style>
                                table, th, td {
                                    border: solid black;
                                }
                            </style>
                            <form action="hotelbk.jsp" method="post">
                                <table style="width:100%">
                                    <tr >
                                        <td><label>&nbsp;Check In&nbsp;&nbsp;</label><input type="date" name="checkindt" ></td>

                                        <td><label>&nbsp;Check Out&nbsp;&nbsp;</label><input type="date" name="checkoutdt"></td>
                                        <td><label>No. of Room</label>
                                            <select class="cs-select cs-skin-border" name="roomno">
                                                <option value="1"  >1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4"  >4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7"  >7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select></td>
                                        <td><label>No. of Person</label>
                                            <select class="cs-select cs-skin-border" name="noperson">
                                                <option value="1"  >1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4"  >4</option>
                                                <option value="5">5</option>
                                                <option value="6">6</option>
                                                <option value="7"  >7</option>
                                                <option value="8">8</option>
                                                <option value="9">9</option>
                                                <option value="10">10</option>
                                            </select></td>
                                            <td><label>&nbsp;Check In Time&nbsp;&nbsp;</label><input type="time" name="bktime" ></td>
                                        <td><button class="btn alert-success">Book</button>
                                        </td>
                                    </tr>
                                </table>
                            </form>
                        </div><br />
                        <div class="container">
                            <p style="color: black;"><b>Hotel Facilities</b><br />Radisson offers a sparkling outdoor pool, well-equipped fitness centre and relaxing spa. The hotel features state-of-the-art audio-visual equipment and well-equipped spaces for business meetings. The hotel has 24-hour front desk tour desk, concierge service, currency exchange, ATM and free Wi-Fi for the convenience of guests.</p>
                            <p style="color: black;"><b>Room Facilities</b><br />The hotel features 261 rooms and suites with lavish amenities like spa-inspired bathrooms and idyllic garden view. The categories of rooms are- Superior, Premium, Business Class and suites are- Executive, Deluxe and Presidential. Other amenities are minibar, coffee/tea maker, electronic safe, sofa, iron, bathrobe and slippers.</p>
                            <p style="color: black;"><b>Dining</b><br />The Great Kabab Factory offers North Indian and Mughlai cuisine, Neung Roi offers Thai cuisine, NYC offers North Indian, Continental and Italian cuisine, R-The Lounge is caf for light eat, The Orb has finger food and Continental cuisine and Savannah Bar offers finger food with sparkling liquor to sip on.</p>
                            <p style="color: black;"><b>Hotel policies</b><br />Couples are welcome<br />Guests can check in using any local or outstation ID proof (PAN card not accepted).<br />As a complimentary benefit, your stay is now insured by Acko.<br />This hotel is serviced under the trade name of <%=htname%> as per quality standard</p>
                            <p style="color: black;"><b></b></p>

                        </div>
                        <br><br>
                        <div class="row row-bottom-padded-md">
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div>
                                    <img src="data:image/jpeg;base64,${imgbase}" alt="website template image" class="img-responsive">
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div>
                                    <img src="data:image/jpeg;base64,${imgbase2}" alt="website template image" class="img-responsive">
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div><img src="data:image/jpeg;base64,${imgbase}" alt="website template image" class="img-responsive">
                                    
                                </div>
                            </div>
                        </div>
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