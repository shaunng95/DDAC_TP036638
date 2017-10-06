<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Site Title-->
    <title>Home</title>
    <meta name="format-detection" content="telephone=no">
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta charset="utf-8">
    <script src="/cdn-cgi/apps/head/3ts2ksMwXvKRuG480KNifJ2_JNM.js"></script><link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <!-- Stylesheets-->
    <link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,900">
    <link rel="stylesheet" href="css/style.css">
		<!--[if lt IE 10]>
    <div style="background: #212121; padding: 10px 0; box-shadow: 3px 3px 5px 0 rgba(0,0,0,.3); clear: both; text-align:center; position: relative; z-index:1;"><a href="https://windows.microsoft.com/en-US/internet-explorer/"><img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today."></a></div>
    <script src="js/html5shiv.min.js"></script>
		<![endif]-->
</head>
<body>
    <!-- Page-->
    <div class="page text-center">
      <!-- Page Header-->
      <header class="page-header context-dark" style="background: no-repeat url('images/background-01-1920x900.jpg') center; background-size: cover;">
        <!-- RD Navbar-->
        <div class="rd-navbar-wrap">
          <nav class="rd-navbar rd-navbar-float" data-layout="rd-navbar-fixed" data-sm-layout="rd-navbar-fixed" data-md-device-layout="rd-navbar-static" data-lg-layout="rd-navbar-static" data-lg-device-layout="rd-navbar-static" data-sm-stick-up-offset="1px" data-md-stick-up-offset="1px" data-lg-stick-up-offset="60px">
            <div class="rd-navbar-collapse-toggle" data-rd-navbar-toggle=".rd-navbar-top-panel"><span></span></div>
            <div class="rd-navbar-inner">
              <!-- RD Navbar Panel-->
              <div class="rd-navbar-panel">
                <!-- RD Navbar Toggle-->
                <button class="rd-navbar-toggle" data-rd-navbar-toggle=".rd-navbar-nav-wrap"><span></span></button>
                <!-- RD Navbar Brand-->
                <div class="rd-navbar-brand"><a class="reveal-inline-block brand-name" href="index.html"><img class="img-responsive center-block" src="images/logo-dark-233x55.png" width="233" height="55" alt=""></a></div>
              </div>
              <div class="rd-navbar-nav-wrap">
                <!-- RD Navbar Nav-->
                <ul class="rd-navbar-nav">
                  <li class="active"><a href="index.aspx">Home</a></li>
                  <li><a href="#"><asp:Label ID="Label1" runat="server"></asp:Label> Account</a>
                    <!-- RD Navbar Dropdown-->
                    <ul class="rd-navbar-dropdown">
                      <li><a href="login.aspx">Login</a></li>
                      <li><a href="register.aspx">Register</a></li>
                    </ul>
                  </li>
                  <li><a href="faq.aspx">FAQ</a></li>
                </ul>
              </div>
            </div>
          </nav>
        </div>
        <div class="shell shell-wide section-70 section-md-90">
          <div class="range range-xs-middle range-xs-justify text-md-left">
            <div class="cell-md-7 section-md-60 section-lg-140 view-animate fadeInLeftSm delay-02">
              <h2 class="text-ubold text-capitalize"><span class="big" style="text-transform: initial;">Come & Fly with Us</span></h2>
              <p class="offset-top-20 offset-md-top-30 big text-width-720">With Ukraine Airlines, flying can never be more convenient.</p>
            </div>
            <div class="cell-xl-4 cell-lg-5 cell-md-6 text-left">
              <div class="responsive-tabs text-md-left nav-custom-dark view-animate fadeInUpSmall" data-type="horizontal">
                <!-- Responsive-tabs-->
                <ul class="nav-custom-tabs resp-tabs-list">
                  <li class="nav-item"><span class="icon mdi mdi-airplane"></span><span>Flights</span></li>            
                </ul>
                <div class="resp-tabs-container nav-custom-tab nav-custom-wide">
                  <div>
                    <form runat="server" class="small">
                      <div class="range">
                        <div class="cell-md-12">
                          <div class="form-group radio-inline-wrapper">
                            <label class="radio-inline">
                              <input name="input-group-radio" value="radio-1" type="radio" checked>Round Trip
                            </label>
                            <label class="radio-inline">
                              <input name="input-group-radio" value="radio-2" type="radio">One Way
                            </label>
                            <label class="radio-inline">
                              <input name="input-group-radio" value="radio-3" type="radio">Multi-city
                            </label>
                          </div>
                        </div>
                        <div class="range offset-top-24">
                          <div class="cell-sm-6">
                            <div class="form-group">
                              <label class="form-group-label">From</label>
                              <!--Select 2-->
                              <select id="country_from" name="country_from" class="form-control select-filter" runat="server" data-minimum-results-for-search="Infinity">
                                <option>United States</option>
                                <option>Malaysia</option>
                                <option>Singapore</option>
                                <option>Ukraine</option>
                                <option>Australia</option>
                                <option>India</option>
                                <option>United Kingdom</option>
                              </select>
                            </div>
                            <div class="form-group">
                            </div>
                          </div>
                          <div class="cell-sm-6 offset-top-15 offset-sm-top-0">
                            <div class="form-group">
                              <label class="form-group-label">To</label>
                              <!--Select 2-->
                              <select id="country_to" name="country_to" class="form-control select-filter" runat="server"  data-minimum-results-for-search="Infinity">
                                <option>Malaysia</option>
                                <option>Singapore</option>
                                <option>Ukraine</option>
                                <option>Australia</option>
                                <option>India</option>
                                <option>United Kingdom</option>
                                <option>United States</option>
                              </select>
                            </div>
                            <div class="form-group">
                            </div>
                          </div>
                        </div>                        
                          <div class="range offset-top-15">
                          <div class="cell-sm-6">
                            <div class="form-group">
                              <label class="form-group-label">Departure</label>
                              <asp:TextBox id="datedepart" name="datedepart" class="form-control" type="text" data-time-picker="date" runat="server"></asp:TextBox>
                            </div>
                          </div>
                          <div class="cell-sm-6 offset-top-15 offset-sm-top-0">
                            <div class="form-group">
                              <label class="form-group-label">Return</label>
                              <asp:TextBox id="datereturn" name="datereturn" class="form-control" type="text" data-time-picker="date" runat="server"></asp:TextBox>
                            </div>
                          </div>
                        </div>
                        <div class="range offset-top-15">
                          <div class="cell-sm-6">
                            <div class="form-group">
                              <label class="form-group-label">Cabin Class</label>
                              <!--Select 2-->
                              <select id="cabinclass" name="cabinclass" class="form-control select-filter" runat="server" data-minimum-results-for-search="Infinity">
                                <option>Economy</option>
                                <option>Business</option>
                                <option value="3">First</option>
                              </select>
                            </div>
                          </div>
                          <div class="cell-sm-6 offset-top-15 offset-sm-top-0">
                            <div class="range">
                              <div class="cell-sm-6">
                                <div class="form-group">
                                  <label class="form-group-label">Seats</label>
                                  <asp:TextBox class="form-control form-control-gray" runat="server" id="seat" type="text" name="seat"></asp:TextBox>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <div class="range-xs-justify range-xs-middle range offset-top-20 text-center text-xs-left">
                          <div class="cell-xs-6">
                          </div>
                          <div class="cell-lg-clear-flex cell-xs-6 text-xs-right offset-top-15 offset-xs-top-0">
                            <asp:button class="btn btn-info btn-sm button-inset-30 btn-naira btn-naira-up" runat="server" id="search_btn" name="search_btn" OnClick="search" Text="Search Flight"></asp:button>
                          </div>
                        </div>
                      </div>
                    </form>
                  </div>
            </div>
          </div>
        </div>
      </header>
      <!-- Page Content-->
      <main class="page-content">
        <section class="section-80 section-md-120 bg-gray-lighter">
          <div class="wow fadeInUp shell shell-wide text-left">
            <h2 class="text-center text-ubold">Fly Around the World</h2>
            <hr class="divider divider-80 divider-info">
            <!-- Owl Carousel-->
            <div class="offset-top-50 offset-lg-top-90 owl-nav-variant-1 owl-dots-lg owl-carousel" data-nav="true" data-items="1" data-sm-items="2" data-lg-items="3" data-margin="30" data-mouse-drag="false">
                    <!-- Thumbnail-->
                    <div class="thumbnail-variant-1">
                      <div><img class="img-responsive center-block" src="images/home-01-270x360.jpg" width="270" height="360" alt=""></div>
                      <div class="caption">
                        <h4 class="text-ubold">Venice</h4>
                        <p class="offset-top-2 text-italic text-gray">Italy</p>
                        <p class="offset-top-10 offset-lg-top-10">Beautiful city famous for its canals.</p>
                        <p class="offset-top-10 offset-lg-top-10">Perfect setting for a magical Valentines break.</p>
                      </div>
                    </div>
                    <!-- Thumbnail-->
                    <div class="thumbnail-variant-1">
                      <div><img class="img-responsive center-block" src="images/home-02-270x360.jpg" width="270" height="360" alt=""></div>
                      <div class="caption">
                        <h4 class="text-ubold">Budva</h4>
                        <p class="offset-top-2 text-italic text-gray">Montenegro</p>
                        <p class="offset-top-10 offset-lg-top-10">Relax at one of the many beautiful beaches.</p>
                        <p class="offset-top-10 offset-lg-top-10">Enjoy the sights of grandoise architecture.</p>
                      </div>
                    </div>
                    <!-- Thumbnail-->
                    <div class="thumbnail-variant-1">
                      <div><img class="img-responsive center-block" src="images/home-03-270x360.jpg" width="270" height="360" alt=""></div>
                      <div class="caption">
                        <h4 class="text-ubold">London</h4>
                        <p class="offset-top-2 text-italic text-gray">England</p>
                        <p class="offset-top-10 offset-lg-top-10">Enjoy the wonderful view on Thames River.</p>
                        <p class="offset-top-10 offset-lg-top-10">Indulge in the eight Royal Parks.</p>
                      </div>
                    </div>
            </div>
          </div>
        </section>
      </main>
      <!-- Page Footer-->
      <footer class="page-footer-widget">
        <div class="shell shell-wide text-sm-left">
          <div class="range section-60 section-md-90">
            <div class="cell-sm-6 cell-lg-3">
              <h5 class="text-bold">Contact Us</h5>
              <hr class="divider divider-50 divider-primary divider-sm-left offset-top-12">
              <div class="offset-top-30 p">
                <div class="unit unit-horizontal unit-spacing-15 text-left">
                  <div class="unit-left"><span class="text-info icon icon-sm mdi mdi-map-marker"></span></div>
                  <div class="unit-body"><a class="text-gray" href="#">2130 Fulton Street, San Diego,<br class="veil reveal-lg-block">CA 94117-1080 USA</a></div>
                </div>
                <div class="unit unit-horizontal unit-spacing-15 offset-top-10 text-left">
                  <div class="unit-left"><span class="text-info icon icon-sm mdi mdi-phone"></span></div>
                  <div class="unit-body"><a class="text-gray" href="callto:#">1-800-1234-567</a></div>
                </div>
                <div class="unit unit-horizontal unit-spacing-15 offset-top-10 text-left">
                  <div class="unit-left"><span class="text-info icon icon-sm mdi mdi-email-open"></span></div>
                  <div class="unit-body"><a class="text-gray" href="/cdn-cgi/l/email-protection#6340"><span class="__cf_email__" data-cfemail="82ebece4edc2e6e7efedeeebece9acedf0e5">[email&#160;protected]</span></a></div>
                </div>
              </div>
            </div>
            <div class="cell-sm-6 cell-lg-3">
              <div class="inset-xl-right-65">
                <h5 class="text-bold">Newsletter</h5>
                <hr class="divider divider-50 divider-primary divider-sm-left offset-top-12">
                <p class="offset-top-30">Sign up to our newsletter and be the first to know about latest news, special offers, events, and discounts.</p>
                <!-- RD Mailform-->
                <form class="text-sm-left offset-top-24 rd-mailform" data-form-output="form-output-global" data-form-type="subscribe" method="post" action="bat/rd-mailform.php">
                  <div class="form-group form-group-sm">
                    <label class="form-label" for="subscribe-email-footer">Enter your e-mail...</label>
                    <input class="form-control" id="subscribe-email-footer" type="email" name="email" data-constraints="@Required @Email">
                  </div>
                  <button class="btn btn-info btn-xxs btn-naira btn-naira-up" type="submit"><span class="icon fa-envelope-o"></span><span>Subscribe</span></button>
                </form>
              </div>
            </div>
            <div class="cell-sm-6 cell-lg-3 offset-top-40 offset-lg-top-0">
              <h5 class="text-bold">Twitter Feed</h5>
              <hr class="divider divider-50 divider-primary divider-sm-left offset-top-12">
              <div class="offset-top-20 offset-md-top-40">
                <!-- RD Twitter Feed-->
                <div class="text-left offset-top-26 twitter" data-twitter-username="templatemonster">
                  <div class="twitter-item" data-twitter-type="tweet">
                    <div data-tweet="text"></div>
                  </div>
                  <div class="twitter-item" data-twitter-type="tweet">
                    <div data-tweet="text"></div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="shell shell-wide page-footer-min text-md-left">
          <p>&#169; <span id="copyright-year"></span> All Rights Reserved. Terms of Use and <a href="privacy.html">Privacy Policy
              <!-- {%FOOTER_LINK}--></a>
          </p>
        </div>
      </footer>
    </div>
    <!-- Global Mailform Output-->
    <div class="snackbars" id="form-output-global"></div>
    <!-- PhotoSwipe Gallery-->
    <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="pswp__bg"></div>
      <div class="pswp__scroll-wrap">
        <div class="pswp__container">
          <div class="pswp__item"></div>
          <div class="pswp__item"></div>
          <div class="pswp__item"></div>
        </div>
        <div class="pswp__ui pswp__ui--hidden">
          <div class="pswp__top-bar">
            <div class="pswp__counter"></div>
            <button class="pswp__button pswp__button--close" title="Close (Esc)"></button>
            <button class="pswp__button pswp__button--share" title="Share"></button>
            <button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button>
            <button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button>
            <div class="pswp__preloader">
              <div class="pswp__preloader__icn">
                <div class="pswp__preloader__cut">
                  <div class="pswp__preloader__donut"></div>
                </div>
              </div>
            </div>
          </div>
          <div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap">
            <div class="pswp__share-tooltip"></div>
          </div>
          <button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button>
          <button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button>
          <div class="pswp__caption">
            <div class="pswp__caption__cent"></div>
          </div>
        </div>
      </div>
    </div>
    <!-- Java script-->
    <script>!function(e,t,r,n,c,a,l){function i(t,r){return r=e.createElement('div'),r.innerHTML='<a href="'+t.replace(/"/g,'&quot;')+'"></a>',r.childNodes[0].getAttribute('href')}function o(e,t,r,n){for(r='',n='0x'+e.substr(t,2)|0,t+=2;t<e.length;t+=2)r+=String.fromCharCode('0x'+e.substr(t,2)^n);return i(r)}try{for(c=e.getElementsByTagName('a'),l='/cdn-cgi/l/email-protection#',n=0;n<c.length;n++)try{(t=(a=c[n]).href.indexOf(l))>-1&&(a.href='mailto:'+o(a.href,t+l.length))}catch(e){}for(c=e.querySelectorAll('.__cf_email__'),n=0;n<c.length;n++)try{(a=c[n]).parentNode.replaceChild(e.createTextNode(o(a.getAttribute('data-cfemail'),0)),a)}catch(e){}}catch(e){}}(document);</script><script src="js/core.min.js"></script>
    <script src="js/script.js"></script>
  <script type="text/javascript">
 var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-7078796-5']);
  _gaq.push(['_trackPageview']);
  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'https://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
  </script>
</body>
</html>
