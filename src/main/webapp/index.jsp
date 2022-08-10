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
                            <span>Cung cấp thực phẩm đông lạnh chế biến sẵn &amp; thực phẩm tươi</span>
                            <div class="main-border-button">
                                <a href="#">Sản phẩm</a>
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
                                        <h4>Thực phẩm tươi</h4>
                                        <span>An toàn - sạch</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Thực phẩm tươi</h4>
                                            <p>Được nhập trong ngày đãm bảo chất lượng</p>
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
                                        <h4>Thực Phẩm Đông Lạnh</h4>
                                        <span>Đa dạng sản phẩm của CP</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Thực Phẩm Đông Lạnh</h4>
                                            <p>Trải nghiệm hương vị như ở KFC, Jolibee ngon như ở quán</p>
                                            <div class="main-border-button">
                                                <a href="danh-sach-san-pham?type=1">Xem thêm</a>
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
                                        <h4>Giao Hàng Tận Nơi</h4>
                                        <span>Miễn phí giao hàng</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Miễn Phí Giao Hàng</h4>
                                            <p>Khách hàng được miễn phí vận chuyển trong 2km</p>
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
                                        <h4>Phục vụ đám tiệc</h4>
                                        <span>Giảm giá khi đặt số lượng lớn</span>
                                    </div>
                                    <div class="hover-content">
                                        <div class="inner">
                                            <h4>Phục vụ đám tiệc</h4>
                                            <p>Có chính sách ưu đãi khi KH đặt với số lượng lớn</p>
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
                    <h2>Thực phẩm chế biến sẳn</h2>
                    <span>Các sản phẩm gồm: Cánh gà chiên giòn, Bò viên, Cá viên...</span>
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
                    <h2>Đồ tươi sống</h2>
                    <span>Các sản phẩm như rau, thịt, trứng, cá...</span>
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
                    <h2>Sản phẩm khác</h2>
                    <span>Ngoài các sản phẩm thực phẩm</span>
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
                    <h2>Về TheTin Food</h2>
                    <span>Cửa hàng chúng tôi có nhiều năm trong việc phân phối các sản phẩm chế biến sản củng như tươi sống, chuyên nhập sản phẩm từ các nhà cung cấp có uy tính như CP, CoopFood</span>
                    <div class="quote">
                        <i class="fa fa-quote-left"></i>
                        <p>Mang đến nhưng món ăn mang hương vị như các cửa hàng nỗi tiếng mà ở tận nhà củng có thể
                            thưởng thức</p>
                    </div>
                    <p>Chủ cửa hàng là anh Nguyễn Thế Tín người luôn biết quan tâm đến khách hàng, có kinh nghiệm làm
                        việc trong việc lựa chọn sản phẩm theo thị hiếu người tiêu dùng, sản phẩm luôn được bán với mức
                        giá vừa phải đãm bảo chất lượng sản phẩm. Mục tiêu hàng đầu là bảo vệ sức khỏe người tiêu
                        dùng</p>
                    <p>Nếu bạn có ý kiến đóng góp hãy liên lạc shop qua facebook củng như zalo để chúng tôi có thể tiếp
                        nhận</p>
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
                                <span>Đối tác cung cấp</span>
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
                                <span>Đối tác cung cấp</span>
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
                    <h2>Nếu bạn muốn đặt hàng cho đám tiệc hãy để lại số điện thoại chúng tối sẽ phản hồi</h2>
                    <span>Chúng tôi sẽ liên lạc với bạn sớm nhất để bàn về số lượng củng như ưu đãi</span>
                </div>
                <form id="subscribe" action="" method="get">
                    <div class="row">
                        <div class="col-lg-5">
                            <fieldset>
                                <input name="name" type="text" id="name" placeholder="Tên" required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-5">
                            <fieldset>
                                <input name="email" type="text" id="email" placeholder="Số điện thoại" required="">
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
                            <li>Địa chỉ<br><span>Càng Long, Trà Vinh, Việt Nam</span></li>
                            <li>SĐT:<br><span>19001010</span></li>
                            <li>MB-BANK:<br><span>90909999 - Nguyen The Tin</span></li>
                        </ul>
                    </div>
                    <div class="col-6">
                        <ul>
                            <li>Giờ làm việc<br><span>07:30 AM - 9:30 PM Trong tuần</span></li>
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
                        <li><a href="#">Càng Long, Trà Vinh, Việt Nam</a></li>
                        <li><a href="#">hexashop@company.com</a></li>
                        <li><a href="#">1900-1010-12</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-3">
                <h4>Sản phẩm</h4>
                <ul>
                    <li><a href="#">Hàng Chế Biến Sẳn</a></li>
                    <li><a href="#">hàng Tươi Sống</a></li>
                    <li><a href="#">Sản Phẩm Khác</a></li>
                </ul>
            </div>
            <div class="col-lg-3">
                <h4>Trang</h4>
                <ul>
                    <li><a href="#">Trang Chủ</a></li>
                    <li><a href="#">Liên Lạc</a></li>
                </ul>
            </div>
            <div class="col-lg-3">
                <h4>Help &amp; Thông tin</h4>
                <ul>
                    <li><a href="#">Dịch Vụ</a></li>
                    <li><a href="#">Giao Hàng</a></li>

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
<script src="${pageContext.request.contextPath}/VIEW/assets/js/accordions.js"></script>
<script src="${pageContext.request.contextPath}/VIEW/assets/js/datepicker.js"></script>
<script src="${pageContext.request.contextPath}/VIEW/assets/js/scrollreveal.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js" integrity="sha512-CEiA+78TpP9KAIPzqBvxUv8hy41jyI3f2uHi7DGp/Y/Ka973qgSdybNegWFciqh6GrN2UePx2KkflnQUbUhNIA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js" integrity="sha512-d8F1J2kyiRowBB/8/pAWsqUl0wSEOkG5KATkVV4slfblq9VRQ6MyDZVxWl2tWd+mPhuCbpTB4M7uU/x9FlgQ9Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${pageContext.request.contextPath}/VIEW/assets/js/imgfix.min.js"></script>
<script src="${pageContext.request.contextPath}/VIEW/assets/js/slick.js"></script>
<script src="${pageContext.request.contextPath}/VIEW/assets/js/lightbox.js"></script>
<script src="https://unpkg.com/isotope-layout@3/dist/isotope.pkgd.min.js"></script>

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
