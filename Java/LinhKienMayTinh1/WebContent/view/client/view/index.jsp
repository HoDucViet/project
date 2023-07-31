<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<c:url value="/view/client/static" var="url"></c:url>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>VIỆT COMPUTER </title>
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
              href="${url}/plugins/scrollbar/css/jquery.mCustomScrollbar.css">
        <link rel="stylesheet"
              href="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.css">
        <link rel="stylesheet"
              href="${url}/plugins/revolution-slider/rs-plugin/css/settings.css">

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
            var price = 300000;
            var formattedPrice = new Intl.NumberFormat('vi-VN', {style: 'currency', currency: 'VND'}).format(price);

            console.log(formattedPrice); // Kết quả: "300.000 ₫"

        </script>
        <!-- End Subiz -->
    <body class="header-fixed">
        <div class="wrapper">
            <!--=== Header v5 ===-->
            <div class="header-v5 header-static">
                <!-- Topbar v3 -->
                <jsp:include page="/view/client/view/topbar.jsp"></jsp:include>
                    <!-- End Topbar v3 -->

                    <!-- Navbar -->
                <jsp:include page="/view/client/view/navbar.jsp"></jsp:include>
                    <!-- End Navbar -->
                </div>
                <!--=== End Header v5 ===-->

                <!--=== Slider ===-->
                <div class="tp-banner-container">
                    <div class="tp-banner">
                        <ul>
                            <li data-transition="fade">
                                <img src="${url}/img/pc.jpg" alt="Background" />
                        </li>
                    </ul>
                    <div class="tp-bannertimer tp-bottom"></div>
                </div>
            </div>

            <!--=== End Slider ===-->

            <!--=== Product Content ===-->
            <div class="container content-md">

                <div class="heading heading-v1 margin-bottom-20">
                    <h2>Sản phẩm nổi bật</h2>
                </div>

                <!--=== Illustration v2 ===-->
                <div class="illustration-v2 margin-bottom-60">

                    <ul class="list-inline owl-slider">
                        <c:forEach items="${pwelcome}" var="p" varStatus="loop">
                            <c:url value="/Images/${p.image}" var="imgUrl"></c:url>

                                <li class="item">
                                    <div class="product-img" style="text-align: center;">
                                        <a href="${pageContext.request.contextPath}/product/detail?id=${p.id}">
                                        <img width="150" height="150" src="${imgUrl}" alt="">
                                    </a>
                                    <a class="add-to-cart" href="${pageContext.request.contextPath}/product/detail?id=${p.id}">
                                        <i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
                                    </a>
                                </div>
                                <div class="product-description product-description-brd">
                                    <div class="overflow-h margin-bottom-5">
                                        <div class="pull-left">
                                            <h4 class="title-price">
                                                <a href="${pageContext.request.contextPath}/product/detail?id=${p.id}">
                                                    ${p.name}
                                                </a>
                                            </h4>
                                            <span class="gender text-uppercase">${p.category.name}</span>
                                            <span class="gender">${p.des}</span>
                                        </div>
                                        <div class="product-price" style="text-align: left;">
                                            <fmt:formatNumber value="${p.price}" pattern="#,##0"/>
                                        đ</div>


                                    </div>
                                    <ul class="list-inline product-ratings">
                                        <li><i class="rating-selected fa fa-star"></i></li>
                                        <li><i class="rating-selected fa fa-star"></i></li>
                                        <li><i class="rating-selected fa fa-star"></i></li>
                                        <li><i class="rating-selected fa fa-star"></i></li>
                                        <li><i class="rating-selected fa fa-star-half"></i></li>
                                    </ul>
                                </div>
                            </li>

                            <c:if test="${loop.index % 4 == 3}">
                            </ul>
                            <ul class="list-inline owl-slider">
                            </c:if>
                        </c:forEach>


                    </ul>
                </div>


                <!--=== End Illustration v2 ===-->


                <div class="heading heading-v1 margin-bottom-40">
                    <h2>Sản phẩm mới nhất</h2>
                </div>

                <!--=== Illustration v2 ===-->
                <div class="illustration-v2 margin-bottom-60">

                    <ul class="list-inline owl-slider">
                        <c:forEach items="${pwelcome}" var="p" varStatus="loop">
                            <c:url value="/Images/${p.image}" var="imgUrl"></c:url>

                                <li class="item">
                                    <div class="product-img" style="text-align: center;">
                                        <a href="${pageContext.request.contextPath}/product/detail?id=${p.id}">
                                        <img width="150" height="150" src="${imgUrl}" alt="">
                                    </a>
                                    <a class="add-to-cart" href="${pageContext.request.contextPath}/product/detail?id=${p.id}">
                                        <i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng
                                    </a>
                                </div>
                                <div class="product-description product-description-brd">
                                    <div class="overflow-h margin-bottom-5">
                                        <div class="pull-left">
                                            <h4 class="title-price">
                                                <a href="${pageContext.request.contextPath}/product/detail?id=${p.id}">
                                                    ${p.name}
                                                </a>
                                            </h4>
                                            <span class="gender text-uppercase">${p.category.name}</span>
                                            <span class="gender">${p.des}</span>
                                        </div>
                                        <div class="product-price" style="text-align: left;">
                                            <fmt:formatNumber value="${p.price}" pattern="#,##0"/>
                                        đ</div>


                                    </div>
                                    <ul class="list-inline product-ratings">
                                        <li><i class="rating-selected fa fa-star"></i></li>
                                        <li><i class="rating-selected fa fa-star"></i></li>
                                        <li><i class="rating-selected fa fa-star"></i></li>
                                        <li><i class="rating-selected fa fa-star"></i></li>
                                        <li><i class="rating-selected fa fa-star-half"></i></li>
                                    </ul>
                                </div>
                            </li>

                            <c:if test="${loop.index % 4 == 3}">
                            </ul>
                            <ul class="list-inline owl-slider">
                            </c:if>
                        </c:forEach>


                    </ul>
                </div>


                <!--=== End Illustration v2 ===-->
            </div>
            <!--=== End Product Content ===-->

            <div class="container">
                <!--=== Product Service ===-->
                <div class="row margin-bottom-60">
                    <div class="col-md-4 product-service md-margin-bottom-30">
                        <div class="product-service-heading">
                            <i class="fa fa-truck"></i>
                        </div>
                        <div class="product-service-in">
                            <h3>Free Delivery</h3>
                        </div>
                    </div>
                    <div class="col-md-4 product-service md-margin-bottom-30">
                        <div class="product-service-heading">
                            <i class="icon-earphones-alt"></i>
                        </div>
                        <div class="product-service-in">
                            <h3>Customer Service</h3>
                        </div>
                    </div>
                    <div class="col-md-4 product-service">
                        <div class="product-service-heading">
                            <i class="icon-refresh"></i>
                        </div>
                        <div class="product-service-in">
                            <h3>Free Returns</h3>
                        </div>
                    </div>
                </div>
                <!--/end row-->
                <!--=== End Product Service ===-->

            </div>
            <!--/end cotnainer-->
            <!--=== Sponsors ===-->
            <div class="container content">


                <ul class="list-inline owl-slider-v2" style="text-align: center;">
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/logitech.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/intel.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/AMD.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/acer.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/asus.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/samsung.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/crucial.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/AMD.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/acer.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                    <li class="item" style="display: inline-block; width: 100px; height: 100px; margin: 10px; border-radius: 50%; overflow: hidden;border: 0;;">
                        <img src="${url}/img/asus.png" alt="" style="width: 100%; height: 100%; object-fit: contain; border-radius: 50%; ">
                    </li>
                </ul>




                <!--/end owl-carousel-->
            </div>
            <!--=== End Sponsors ===-->
            <!--=== Footer v4 ===-->
            <jsp:include page="/view/client/view/footer.jsp"></jsp:include>
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
        <script src="${url}/plugins/jquery.parallax.js"></script>
        <script src="${url}/plugins/owl-carousel/owl-carousel/owl.carousel.js"></script>
        <script
        src="${url}/plugins/scrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script
        src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.tools.min.js"></script>
        <script
        src="${url}/plugins/revolution-slider/rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
        <!-- JS Customization -->
        <script src="${url}/js/custom.js"></script>
        <!-- JS Page Level -->
        <script src="${url}/js/shop.app.js"></script>
        <script src="${url}/js/plugins/owl-carousel.js"></script>
        <script src="${url}/js/plugins/revolution-slider.js"></script>
        <script>
            jQuery(document).ready(function () {
                App.init();
                App.initScrollBar();
                App.initParallaxBg();
                OwlCarousel.initOwlCarousel();
                RevolutionSlider.initRSfullWidth();
            });
        </script>
        <!--[if lt IE 9]>
    <script src="${url}/plugins/respond.js"></script>
    <script src="${url}/plugins/html5shiv.js"></script>
    <script src="${url}/js/plugins/placeholder-IE-fixes.js"></script>
<![endif]-->

    </body>
</body>
</html>