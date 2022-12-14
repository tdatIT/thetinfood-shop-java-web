<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro&display=swap" rel="stylesheet">

    <title>TheTin Food</title>
    <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/VIEW/assets/images/thetinlogo.png">

    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/VIEW/assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/VIEW/assets/css/font-awesome.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/VIEW/assets/css/style-shop.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/VIEW/assets/css/owl-carousel.css">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/VIEW/assets/css/lightbox.css">
    <!--

    TemplateMo 571 Hexashop

    https://templatemo.com/tm-571-hexashop

    -->
</head>

<body>

<!-- ***** Preloader Start ***** -->
<div id="preloader">
    <div class="jumper">
        <div></div>
        <div></div>
        <div></div>
    </div>
</div>
<!-- ***** Preloader End ***** -->


<!-- ***** Header Area Start ***** -->
<jsp:include page="/VIEW/header.jsp"></jsp:include>
<!-- ***** Header Area End ***** -->

<!-- ***** Main Banner Area Start ***** -->
<div class="main-banner" id="top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6">
                <div class="left-content">
                    <div class="thumb">
                        <div class="inner-content">
                            <h4>TheTin Food</h4>
                            <span>Cung c???p th???c ph???m ????ng l???nh ch??? bi???n s???n &amp; th???c ph???m t????i</span>
                            <div class="main-border-button">
                                <a href="#">S???n ph???m</a>
                            </div>
                        </div>
                        <img src="${pageContext.request.contextPath}/VIEW/assets/images/baner-left.png" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="right-content">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="right-first-image">
                                <div class="thumb">
                                    <div class="inner-content">
                                        <h4>Th???c ph???m t????i</h4>
                                        <span>An to??n - s???ch</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Th???c ph???m t????i</h4>
                                            <p>???????c nh???p trong ng??y ????m b???o ch???t l?????ng</p>
                                            <div class="main-border-button">
                                                <a href="danh-sach-san-pham?type=2">Xem</a>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/VIEW/assets/images/product1.png">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="right-first-image">
                                <div class="thumb">
                                    <div class="inner-content">
                                        <h4>Th???c Ph???m ????ng L???nh</h4>
                                        <span>??a d???ng s???n ph???m c???a CP</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Th???c Ph???m ????ng L???nh</h4>
                                            <p>Tr???i nghi???m h????ng v??? nh?? ??? KFC, Jolibee ngon nh?? ??? qu??n</p>
                                            <div class="main-border-button">
                                                <a href="danh-sach-san-pham?type=1">Xem th??m</a>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/VIEW/assets/images/product2.png">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="right-first-image">
                                <div class="thumb">
                                    <div class="inner-content">
                                        <h4>Giao H??ng T???n N??i</h4>
                                        <span>Mi???n ph?? giao h??ng</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Mi???n Ph?? Giao H??ng</h4>
                                            <p>Kh??ch h??ng ???????c mi???n ph?? v???n chuy???n trong 2km</p>
                                            <div class="main-border-button">
                                                <a href="shipping">Xem</a>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/VIEW/assets/images/shipper.png">
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="right-first-image">
                                <div class="thumb">
                                    <div class="inner-content">
                                        <h4>Ph???c v??? ????m ti???c</h4>
                                        <span>Gi???m gi?? khi ?????t s??? l?????ng l???n</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Ph???c v??? ????m ti???c</h4>
                                            <p>C?? ch??nh s??ch ??u ????i khi KH ?????t v???i s??? l?????ng l???n</p>
                                            <div class="main-border-button">
                                                <a href="contact">Xem</a>
                                            </div>
                                        </div>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/VIEW/assets/images/party.png">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** Main Banner Area End ***** -->

<!-- ***** Men Area Starts ***** -->
<section class="section" id="men">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h2>Th???c ph???m ch??? bi???n s???n</h2>
                    <span>C??c s???n ph???m g???m: C??nh g?? chi??n gi??n, B?? vi??n, C?? vi??n...</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="men-item-carousel">
                    <div class="owl-men-item owl-carousel">
                        <c:forEach items="${type1}" var="product">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="chi-tiet-san-pham?id=${product.id}"><i
                                                    class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/VIEW/assets/images/${product.image}"
                                         alt="" style="height: 100%;">
                                </div>
                                <div class="down-content">
                                    <h4>${product.name}</h4>
                                    <span class="text-success float-right">${product.price} VND</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-eye"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Men Area Ends ***** -->

<!-- ***** Women Area Starts ***** -->
<section class="section" id="women">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h2>????? t????i s???ng</h2>
                    <span>C??c s???n ph???m nh?? rau, th???t, tr???ng, c??...</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="men-item-carousel">
                    <div class="owl-men-item owl-carousel">
                        <c:forEach items="${type2}" var="product">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="chi-tiet-san-pham?id=${product.id}"><i
                                                    class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/VIEW/assets/images/${product.image}"
                                         alt="" style="height: 100%;">
                                </div>
                                <div class="down-content">
                                    <h4>${product.name}</h4>
                                    <span class="text-success float-right">${product.price} VND</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-eye"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Women Area Ends ***** -->

<!-- ***** Kids Area Starts ***** -->
<section class="section" id="kids">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="section-heading">
                    <h2>S???n ph???m kh??c</h2>
                    <span>Ngo??i c??c s???n ph???m th???c ph???m</span>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="men-item-carousel">
                    <div class="owl-men-item owl-carousel">
                        <c:forEach items="${type3}" var="product">
                            <div class="item">
                                <div class="thumb">
                                    <div class="hover-content">
                                        <ul>
                                            <li><a href="chi-tiet-san-pham?id=${product.id}"><i
                                                    class="fa fa-eye"></i></a></li>
                                        </ul>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/VIEW/assets/images/${product.image}"
                                         alt="" style="height: 100%;">
                                </div>
                                <div class="down-content">
                                    <h4>${product.name}</h4>
                                    <span class="text-success float-right">${product.price} VND</span>
                                    <ul class="stars">
                                        <li><i class="fa fa-eye"></i></li>
                                    </ul>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Kids Area Ends ***** -->

<!-- ***** Explore Area Starts ***** -->
<section class="section" id="explore">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="left-content">
                    <h2>V??? TheTin Food</h2>
                    <span>C???a h??ng ch??ng t??i c?? nhi???u n??m trong vi???c ph??n ph???i c??c s???n ph???m ch??? bi???n s???n c???ng nh?? t????i s???ng, chuy??n nh???p s???n ph???m t??? c??c nh?? cung c???p c?? uy t??nh nh?? CP, CoopFood</span>
                    <div class="quote">
                        <i class="fa fa-quote-left"></i>
                        <p>Mang ?????n nh??ng m??n ??n mang h????ng v??? nh?? c??c c???a h??ng n???i ti???ng m?? ??? t???n nh?? c???ng c?? th???
                            th?????ng th???c</p>
                    </div>
                    <p>Ch??? c???a h??ng l?? anh Nguy???n Th??? T??n ng?????i lu??n bi???t quan t??m ?????n kh??ch h??ng, c?? kinh nghi???m l??m
                        vi???c trong vi???c l???a ch???n s???n ph???m theo th??? hi???u ng?????i ti??u d??ng, s???n ph???m lu??n ???????c b??n v???i m???c
                        gi?? v???a ph???i ????m b???o ch???t l?????ng s???n ph???m. M???c ti??u h??ng ?????u l?? b???o v??? s???c kh???e ng?????i ti??u
                        d??ng</p>
                    <p>N???u b???n c?? ?? ki???n ????ng g??p h??y li??n l???c shop qua facebook c???ng nh?? zalo ????? ch??ng t??i c?? th??? ti???p
                        nh???n</p>
                    <div class="main-border-button">
                        <a href="lien-he">Xem</a>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="right-content">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="leather">
                                <h4>CJ FOOD VietNam</h4>
                                <span>?????i t??c cung c???p</span>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="first-image">
                                <img src="${pageContext.request.contextPath}/VIEW/assets/images/Cjfood.png" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="second-image">
                                <img src="${pageContext.request.contextPath}/VIEW/assets/images/cpfood.png" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="types">
                                <h4>CP FOOD</h4>
                                <span>?????i t??c cung c???p</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Explore Area Ends ***** -->


<!-- ***** Subscribe Area Starts ***** -->
<div class="subscribe">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="section-heading">
                    <h2>N???u b???n mu???n ?????t h??ng cho ????m ti???c h??y ????? l???i s??? ??i???n tho???i ch??ng t???i s??? ph???n h???i</h2>
                    <span>Ch??ng t??i s??? li??n l???c v???i b???n s???m nh???t ????? b??n v??? s??? l?????ng c???ng nh?? ??u ????i</span>
                </div>
                <form id="subscribe" action="" method="get">
                    <div class="row">
                        <div class="col-lg-5">
                            <fieldset>
                                <input name="name" type="text" id="name" placeholder="T??n" required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-5">
                            <fieldset>
                                <input name="email" type="text" id="email" placeholder="S??? ??i???n tho???i" required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-2">
                            <fieldset>
                                <button type="submit" id="form-submit" class="main-dark-button"><i
                                        class="fa fa-paper-plane"></i></button>
                            </fieldset>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-lg-4">
                <div class="row">
                    <div class="col-6">
                        <ul>
                            <li>?????a ch???<br><span>C??ng Long, Tr?? Vinh, Vi???t Nam</span></li>
                            <li>S??T:<br><span>19001010</span></li>
                            <li>MB-BANK:<br><span>90909999 - Nguyen The Tin</span></li>
                        </ul>
                    </div>
                    <div class="col-6">
                        <ul>
                            <li>Gi??? l??m vi???c<br><span>07:30 AM - 9:30 PM Trong tu???n</span></li>
                            <li>Email:<br><span>info@company.com</span></li>
                            <li>Social Media:<br><span><a href="#">Facebook</a>, <a href="#">Instagram</a></span></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** Subscribe Area Ends ***** -->

<!-- ***** Footer Start ***** -->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="first-item">
                    <div class="logo">
                        <img src="${pageContext.request.contextPath}/VIEW/assets/images/logo-footer.png"
                             alt="hexashop ecommerce templatemo" style="height: 80px; width:220px ;">
                    </div>
                    <ul>
                        <li><a href="#">C??ng Long, Tr?? Vinh, Vi???t Nam</a></li>
                        <li><a href="#">hexashop@company.com</a></li>
                        <li><a href="#">1900-1010-12</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <h4>S???n ph???m</h4>
                <ul>
                    <li><a href="#">H??ng Ch??? Bi???n S???n</a></li>
                    <li><a href="#">h??ng T????i S???ng</a></li>
                    <li><a href="#">S???n Ph???m Kh??c</a></li>
                </ul>
            </div>
            <div class="col-lg-3">
                <h4>Trang</h4>
                <ul>
                    <li><a href="#">Trang Ch???</a></li>
                    <li><a href="#">Li??n L???c</a></li>
                </ul>
            </div>
            <div class="col-lg-3">
                <h4>Help &amp; Th??ng tin</h4>
                <ul>
                    <li><a href="#">D???ch V???</a></li>
                    <li><a href="#">Giao H??ng</a></li>

                </ul>
            </div>

        </div>
    </div>
</footer>


<!-- jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.0/jquery.min.js" integrity="sha512-qp27nuUylUgwBZJHsmm3W7klwuM5gke4prTvPok3X5zi50y3Mo8cgpeXegWWrdfuXyF2UdLWK/WCb5Mv7CKHcA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

<!-- Plugins -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js" integrity="sha512-cmWevKhVdrmcSQujnTmu7/vx8+vZHZaB/31156dH0QB456wDedM+ec2tIP36ktso0LoW0IksvbL/5seNqAPvOQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js" integrity="sha512-cOGL6gI01KK2Bws211W8S3COhzrorBbzKvLPWYOVtSEYet3yG1fzJrimtwh8rUyvMy9qjgY2e7Rt6IwyaiX1Mg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${pageContext.request.contextPath}/VIEW/assets/js/scrollreveal.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js" integrity="sha512-CEiA+78TpP9KAIPzqBvxUv8hy41jyI3f2uHi7DGp/Y/Ka973qgSdybNegWFciqh6GrN2UePx2KkflnQUbUhNIA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js" integrity="sha512-d8F1J2kyiRowBB/8/pAWsqUl0wSEOkG5KATkVV4slfblq9VRQ6MyDZVxWl2tWd+mPhuCbpTB4M7uU/x9FlgQ9Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${pageContext.request.contextPath}/VIEW/assets/js/imgfix.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.0/slick.js" integrity="sha512-AcdgayNJFgi9/3XG5u9GgVXZSLpJKsv3TB+K+RYUgy7gZV3ZaufCy3CxT9YIvFmHhi9X4ixx1HFFRXfO68Cofg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/js/lightbox.js" integrity="sha512-T4q98huxHUnqwRkmpQ6hPlb2XBzGVAVhhb18CF2aB2UYfRHg0XfKq3/TJgWGI4Qek3pZSbuXn57zcecbuC8z7Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.4/isotope.pkgd.js" integrity="sha512-t3uZr9npfaXgQdC/JqVbnYzxR6wM/GQ8iBjuBeJLgA/F1gAuWuuieV5JIEsd+mbbEsWuWj5Bh8q112Oc2gBb0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- Global Init -->
<script src="${pageContext.request.contextPath}/VIEW/assets/js/custom.js"></script>

<script>

    $(function () {
        var selectedClass = "";
        $("p").click(function () {
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
            $("#portfolio div").not("." + selectedClass).fadeOut();
            setTimeout(function () {
                $("." + selectedClass).fadeIn();
                $("#portfolio").fadeTo(50, 1);
            }, 500);

        });
    });

</script>

</body>
</html>
