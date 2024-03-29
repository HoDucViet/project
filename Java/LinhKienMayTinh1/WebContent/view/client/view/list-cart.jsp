<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="ISO-8859-1">
        <title>Add to Cart</title>
        <!-- Favicon -->
        <link rel="shortcut icon" href="favicon.ico">
        <c:url value="/view/client/static" var="url"></c:url>

            <!-- Web Fonts -->
            <link rel='stylesheet' type='text/css'
                  href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600&amp;subset=cyrillic,latin'>

            <!-- CSS Global Compulsory -->
            <link rel="stylesheet"
                  href="${url}/plugins/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" href="${url}/css/shop.style.css">

        <!-- CSS Header and Footer -->
        <link rel="stylesheet" href="${url}/css/headers/header-v5.css">
        <link rel="stylesheet" href="${url}/css/footers/footer-v4.css">

        <!-- CSS Implementing Plugins -->
        <link rel="stylesheet" href="${url}/plugins/animate.css">
        <link rel="stylesheet" href="${url}/plugins/line-icons/line-icons.css">
        <link rel="stylesheet"
              href="${url}/plugins/font-awesome/css/font-awesome.min.css">
        <link rel="stylesheet"
              href="${url}/plugins/jquery-steps/css/custom-jquery.steps.css">
        <link rel="stylesheet"
              href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">

        <!-- Style Switcher -->
        <link rel="stylesheet" href="${url}/css/plugins/style-switcher.css">

        <!-- CSS Theme -->
        <link rel="stylesheet" href="${url}/css/theme-colors/default.css"
              id="style_color">

        <!-- CSS Customization -->
        <link rel="stylesheet" href="${url}/css/custom.css">
    </head>
    <body>
        <!-- Subiz -->
        <script>
            (function (s, u, b, i, z) {
                u[i] = u[i] || function () {
                    u[i].t = +new Date();
                    (u[i].q = u[i].q || []).push(arguments);
                };
                z = s.createElement('script');
                var zz = s.getElementsByTagName('script')[0];
                z.async = 1;
                z.src = b;
                z.id = 'subiz-script';
                zz.parentNode.insertBefore(z, zz);
            })(document, window, 'https://widgetv4.subiz.com/static/js/app.js',
                    'subiz');
            subiz('setAccount', 'acqetkhujxyunuatbxzw');
        </script>
        <!-- End Subiz -->
    <body class="header-fixed">
        <div class="wrapper">
            <!--=== Header v5 ===-->
            <div class="header-v5 header-static">
                <!-- Topbar v3 -->
                <jsp:include page="topbar.jsp"></jsp:include>
                    <!-- End Topbar v3 -->

                    <!-- Navbar -->
                <jsp:include page="navbar.jsp"></jsp:include>
                    <!-- End Navbar -->
                </div>
                <!--=== End Header v5 ===-->

                <!--=== Breadcrumbs v4 ===-->
                <div class="breadcrumbs-v4">
                    <div class="container">
                        <span class="page-name">Check Out</span>

                        <ul class="breadcrumb-v4-in">
                            <li><a href="index.html">Home</a></li>
                            <li><a href="">Product</a></li>
                            <li class="active">Shopping Cart</li>
                        </ul>
                    </div>
                    <!--/end container-->
                </div>
                <!--=== End Breadcrumbs v4 ===-->

                <!--=== Content Medium Part ===-->
                <div class="content-md margin-bottom-30">
                    <div class="container">
                        <form class="shopping-cart" action="#">
                            <div>
                                <div class="header-tags">
                                    <div class="overflow-h">
                                        <h2>Shopping Cart</h2>
                                        <p>Review &amp; edit your product</p>
                                        <i class="rounded-x fa fa-check"></i>
                                    </div>
                                </div>
                                <section>
                                    <div class="table-responsive">
                                        <table class="table table-striped">
                                            <thead>
                                                <tr>
                                                    <th>Product</th>
                                                    <th>Price</th>
                                                    <th>Quantity</th>
                                                    <th>Total</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${sessionScope.cart}" var="map">
                                                <tr>
                                                    <c:url value="/Images/${map.value.product.image}" var="imgUrl"></c:url>
                                                        <td class="product-in-table">
                                                            <img class="img-responsive" src="${imgUrl}" alt="">
                                                        <div class="product-it-in">
                                                            <h3>${map.value.product.name}</h3>
                                                            <span>${map.value.product.des}</span>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <fmt:formatNumber value="${map.value.product.price}" pattern="#,##0" />
                                                    </td>
                                                    <td>${map.value.quantity}</td>
                                                    <td class="shop-red">
                                                        <fmt:formatNumber value="${map.value.product.price * map.value.quantity}" pattern="#,##0" />
                                                    </td>
                                                    <td>
                                                        <a href="${pageContext.request.contextPath}/member/cart/remove?pId=${map.value.product.id}">
                                                            <button type="button" class="close">
                                                                <span>&times;</span><span class="sr-only">Close</span>
                                                            </button>
                                                        </a>
                                                    </td>
                                                </tr>
                                            </c:forEach>


                                        </tbody>
                                    </table>
                                </div>
                            </section>




                            <div class="header-tags">
                                <div class="overflow-h">
                                    <h2>Payment</h2>
                                    <p>Select Payment method</p>
                                    <i class="rounded-x fa fa-credit-card"></i>
                                </div>
                            </div>
                            <section>
                                <div class="row">
                                    <div class="col-md-6 md-margin-bottom-50">
                                        <h2 class="title-type">Choose a payment method</h2>
                                        <!-- Accordion -->
                                        <div class="accordion-v2">
                                            <div class="panel-group" id="accordion">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion"
                                                               href="#collapseOne"> <i class="fa fa-credit-card"></i>
                                                                Cash payment
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseOne" class="panel-collapse collapse in">
                                                        <div class="panel-body cus-form-horizontal">
                                                            <div class="form-group">
                                                                <label class="col-sm-4 no-col-space control-label">Customer Name</label>
                                                                <div class="col-sm-8">
                                                                    <input type="text" class="form-control required" name="customer_name" placeholder="">
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label class="col-sm-4 no-col-space control-label">Payment Types</label>
                                                                <div class="col-sm-8">
                                                                    <ul class="list-inline payment-type">
                                                                        <li><i class="fa fa-money"></i> Cash</li>
                                                                    </ul>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion"
                                                               href="#collapseTwo"> <i class="fa fa-paypal"></i> Pay
                                                                with PayPal
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseTwo" class="panel-collapse collapse">
                                                        <div class="content margin-left-10">
                                                            <a href="#"><img
                                                                    src="https://www.paypalobjects.com/webstatic/en_US/i/buttons/PP_logo_h_150x38.png"
                                                                    alt="PayPal"></a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Accordion -->
                                    </div>

                                    <div class="col-md-6">
                                        <h2 class="title-type">Frequently asked questions</h2>
                                        <!-- Accordion -->
                                        <div class="accordion-v2 plus-toggle">
                                            <div class="panel-group" id="accordion-v2">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#accordion-v2"
                                                               href="#collapseOne-v2"> What payments methods can I
                                                                use? </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseOne-v2" class="panel-collapse collapse in">
                                                        <div class="panel-body">Pay by cash or online payments.</div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" class="collapsed"
                                                               data-parent="#accordion-v2" href="#collapseTwo-v2">
                                                                Can I use gift card to pay for my purchase? </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseTwo-v2" class="panel-collapse collapse">
                                                        <div class="panel-body">You can use gift card to get discount
                                                            .</div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" class="collapsed"
                                                               data-parent="#accordion-v2" href="#collapseThree-v2">
                                                                Will I be charged when I place my order? </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseThree-v2" class="panel-collapse collapse">
                                                        <div class="panel-body">Ordering is completely free.</div>
                                                    </div>
                                                </div>
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" class="collapsed"
                                                               data-parent="#accordion-v2" href="#collapseFour-v2">
                                                                How long will it take to get my order? </a>
                                                        </h4>
                                                    </div>
                                                    <div id="collapseFour-v2" class="panel-collapse collapse">
                                                        <div class="panel-body">From 3 to 5 days depending on your geographical location.</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- End Accordion -->
                                    </div>
                                </div>
                            </section>

                            <div class="coupon-code">
                                <div class="row">

                                    <div class="col-sm-6 col-sm-offset-3">
                                        <ul class="list-inline total-result">
                                            <li>
                                                <h4>Tạm tính:</h4>
                                                <c:set var="total" value="${0}" />
                                                <c:forEach items="${sessionScope.cart}" var="map">
                                                    <c:set var="total" value="${total + map.value.quantity * map.value.product.price}" />
                                                </c:forEach>
                                                <div class="total-result-in">
                                                    <span class="text-right">đ <fmt:formatNumber value="${total}" pattern="#,##0" /></span>
                                                </div>

                                            
                                            <li>
                                                <h4>Phí vận chuyển:</h4>
                                                <div class="total-result-in">
                                                    <span class="text-right">đ 0</span>
                                                </div>
                                            </li>
                                            <li class="divider"></li>
                                            <li class="total-price">
                                                <h4>Total:</h4>
                                                <div class="total-result-in">
                                                    <span class="text-right">đ <fmt:formatNumber value="${total}" pattern="#,##0" /></span>
                                                </div>
                                            </li>
                                            <li class="payment-button">
                                                <a href="${pageContext.request.contextPath}/member/order" class="btn btn-primary btn-block">Thanh toán</a>
                                            </li>
                                        </ul>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <!--/end container-->
            </div>
            <!--=== End Content Medium Part ===-->

            <!--=== Shop Suvbscribe ===-->

            <!--=== End Shop Suvbscribe ===-->

            <!--=== Footer v4 ===-->
            <jsp:include page="footer.jsp"></jsp:include>
                <!--=== End Footer v4 ===-->
            </div>
            <!--/wrapper-->

            <!-- JS Global Compulsory -->
            <script src="${url}/plugins/jquery/jquery.min.js"></script>
        <script src="${url}/plugins/jquery/jquery-migrate.min.js"></script>
        <script src="${url}/plugins/bootstrap/js/bootstrap.min.js"></script>
        <!-- JS Implementing Plugins -->
        <script src="${url}/plugins/back-to-top.js"></script>
        <script src="${url}/plugins/smoothScroll.js"></script>
        <script src="${url}/plugins/jquery-steps/build/jquery.steps.js"></script>
        <script
        src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script
        src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.validate.min.js"></script>
        <!-- JS Customization -->
        <script src="${url}/js/custom.js"></script>
        <!-- JS Page Level -->
        <script src="${url}/js/shop.app.js"></script>
        <script src="${url}/js/forms/page_login.js"></script>
        <script src="${url}/js/plugins/stepWizard.js"></script>
        <script src="${url}/js/forms/product-quantity.js"></script>
        <script>
            jQuery(document).ready(function () {
                App.init();
                Login.initLogin();
                App.initScrollBar();
                StepWizard.initStepWizard();
                StyleSwitcher.initStyleSwitcher();
            });
        </script>

        <!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/sky-forms-ie8.js"></script>
<![endif]-->
        <!--[if lt IE 10]>
    <script src="${url}/plugins/sky-forms-pro/skyforms/js/jquery.placeholder.min.js"></script>
<![endif]-->

    </body>

</body>
</html>