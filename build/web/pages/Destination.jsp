<!DOCTYPE html>
<html class="no-js">
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
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
                            <h1 id="fh5co-logo"><a href=""><i class="icon-airplane"></i>Travel</a></h1>
                            <nav id="fh5co-menu-wrap" role="navigation">
                                <ul class="sf-menu" id="fh5co-primary-menu">
                                    <li class="active"><a href="">Home</a></li>
                                    <li><a href="#">Destination</a></li>
                                    <li><a href="pages/hotel.html">Hotel</a></li>
                                    <li><a href="pages/car.html">Car</a></li>
                                    <li><a href="pages/blog.html">Blog</a></li>
                                    <li><a href="pages/contact.html">Contact</a></li>
                                    <li><a hrefq="pages/blog.html"> </a></li>
                                    <li><a hrefq="pages/contact.html"> </a></li>
                                    <li><a hreef="pages/blog.html"> </a></li>
                                    <li><a href="pages/contact.html"> </a></li>
                                    <li><a href="logout.jsp">Logout</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </header>
                <div class="fh5co-hero">
                    <div class="fh5co-overlay"></div>
                    <div class="fh5co-cover" data-stellar-background-ratio="0.5" style="background-image:url(../assets/images/cover_bg_3.jpg);">
                        <div class="desc">
                            <div class="container">
                                <div class="row">
                                    <div class="col-sm-5 col-md-5">
                                        <div class="tabulation animate-box">
                                            <ul class="nav nav-tabs" role="tablist">
                                                <li role="presentation" class="active"><a href="#flights" aria-controls="flights" role="tab" data-toggle="tab">By Region</a></li>
                                                <li role="presentation"><a href="#hotels" aria-controls="hotels" role="tab" data-toggle="tab">By Location</a></li>
                                            </ul>
                                            <form action="DestinationResult.jsp" method="post">
                                                <div class="tab-content">
                                                    <div role="tabpanel" class="tab-pane active" id="flights">
                                                        <div class="row">
                                                            <div class="col-sm-12 mt">
                                                                <section>
                                                                    <label>Select Region</label>
                                                                    <select class="cs-select cs-skin-border" name="region">
                                                                        <option>Select Region</option>
                                                                        <option value="East">East India</option>
                                                                        <option value="West">West India</option>
                                                                        <option value="North">North India</option>
                                                                        <option value="South">South India</option>
                                                                    </select>
                                                                </section>
                                                            </div>
                                                            <div class="col-sm-12 mt">
                                                                <section>
                                                                    <label>Select Season</label>
                                                                    <select class="cs-select cs-skin-border" name="location">
                                                                        <option>Select Season</option>
                                                                        <option value="Winnter"  >Winnter</option>
                                                                        <option value="Summer">Summer</option>
                                                                        <option value="Rainy">Rainy</option>
                                                                    </select>
                                                                </section>
                                                            </div>

                                                            <div class="col-xs-12">
                                                                <input type="submit" class="btn btn-primary btn-block" value="Search Location">
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div role="tabpanel" class="tab-pane" id="hotels">
                                                        <div class="row">
                                                            <div class="col-xxs-12 col-xs-12 mt">
                                                                <div class="input-field">
                                                                    <label>City:</label>
                                                                    <input type="text" class="form-control" placeholder="Enter Location" name="city">
                                                                </div>
                                                            </div>
                                                            <div class="col-xs-12">
                                                                <input type="submit" class="btn btn-primary btn-block" value="Search Location">
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="desc2 animate-box">
                                        <div class="col-sm-7 col-sm-push-1 col-md-7 col-md-push-1">
                                            <p>Lorem ipsum dolor sit amet</p>
                                            <h2>Exclusive Limited Time Offer</h2>
                                            <h3>Fly to Hong Kong via Los Angeles, USA</h3>
                                            <span class="price">$599</span></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="fh5co-tours" class="fh5co-section-gray">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-8 col-md-offset-2 text-center heading-section animate-box">
                                <h3>Book A Flight</h3>
                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                            </div>
                        </div>
                        <div class="row row-bottom-padded-md">
                            <div class="col-md-12 animate-box">
                                <h2 class="heading-title">Todays Flight Deal</h2>
                            </div>
                            <div class="col-md-6 animate-box">
                                <div class="row">
                                    <div class="col-md-12">
                                        <h4>Better Deals, More Abilities</h4>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    </div>
                                    <div class="col-md-12">
                                        <h4>Keep up with the news of your airline</h4>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    </div>
                                    <div class="col-md-12">
                                        <h4>In-Flight Experience</h4>
                                        <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6 animate-box"><img class="img-responsive" src="../assets/images/cover_bg_3.jpg" alt="website template image"><a href="" class="flight-book">
                                    <div class="plane-name"><span class="p-flight">United States Airways</span></div>
                                    <div class="desc">
                                        <div class="left">
                                            <h4>HK-MNL</h4>
                                            <span>Dec 20 - Dec29</span></div>
                                        <div class="right"><span class="price"><i class="icon-arrow-down22"></i>$1000</span></div>
                                    </div>
                                </a><a href="" class="flight-book">
                                    <div class="plane-name"><span class="p-flight">Qatar Airways</span></div>
                                    <div class="desc">
                                        <div class="left">
                                            <h4>HK-MNL</h4>
                                            <span>Dec 20 - Dec29</span></div>
                                        <div class="right"><span class="price"><i class="icon-arrow-down22"></i>$790</span></div>
                                    </div>
                                </a><a href="" class="flight-book">
                                    <div class="plane-name"><span class="p-flight">Philippine Airline</span></div>
                                    <div class="desc">
                                        <div class="left">
                                            <h4>MNL-HK</h4>
                                            <span>Dec 20 - Dec29</span></div>
                                        <div class="right"><span class="price"><i class="icon-arrow-down22"></i>$500</span></div>
                                    </div>
                                </a><a href="" class="flight-book">
                                    <div class="plane-name"><span class="p-flight">China Airways</span></div>
                                    <div class="desc">
                                        <div class="left">
                                            <h4>HK-LAS</h4>
                                            <span>Dec 20 - Dec29</span></div>
                                        <div class="right"><span class="price"><i class="icon-arrow-down22"></i>$900</span></div>
                                    </div>
                                </a></div>
                        </div>
                        <div class="row row-bottom-padded-md">
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div><img src="../assets/images/place-1.jpg" alt="website template image" class="img-responsive">
                                    <div class="desc"><span></span>
                                        <h3>New York</h3>
                                        <span>3 nights</span><span class="price">$1,000</span><a class="btn btn-primary btn-outline" href="">Book Now <i class="icon-arrow-right22"></i></a></div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div><img src="../assets/images/place-2.jpg" alt="website template image" class="img-responsive">
                                    <div class="desc"><span></span>
                                        <h3>Philippines</h3>
                                        <span>4 nights</span><span class="price">$1,000</span><a class="btn btn-primary btn-outline" href="">Book Now <i class="icon-arrow-right22"></i></a></div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div><img src="../assets/images/place-3.jpg" alt="website template image" class="img-responsive">
                                    <div class="desc"><span></span>
                                        <h3>Hongkong</h3>
                                        <span>2 nights</span><span class="price">$1,000</span><a class="btn btn-primary btn-outline" href="https://www.free-css.com/free-css-templates">Book Now <i class="icon-arrow-right22"></i></a></div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div><img src="../assets/images/place-4.jpg" alt="website template image" class="img-responsive">
                                    <div class="desc"><span></span>
                                        <h3>New York</h3>
                                        <span>3 nights</span><span class="price">$1,000</span><a class="btn btn-primary btn-outline" href="">Book Now <i class="icon-arrow-right22"></i></a></div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div><img src="../assets/images/place-5.jpg" alt="website template image" class="img-responsive">
                                    <div class="desc"><span></span>
                                        <h3>Philippines</h3>
                                        <span>4 nights</span><span class="price">$1,000</span><a class="btn btn-primary btn-outline" href="">Book Now <i class="icon-arrow-right22"></i></a></div>
                                </div>
                            </div>
                            <div class="col-md-4 col-sm-6 fh5co-tours animate-box" data-animate-effect="fadeIn">
                                <div><img src="../assets/images/place-6.jpg" alt="website template image" class="img-responsive">
                                    <div class="desc"><span></span>
                                        <h3>Hongkong</h3>
                                        <span>2 nights</span><span class="price">$1,000</span><a class="btn btn-primary btn-outline" href="">Book Now <i class="icon-arrow-right22"></i></a></div>
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