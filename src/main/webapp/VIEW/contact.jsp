<%--
  Created by IntelliJ IDEA.
  User: tiendat
  Date: 05/08/2022
  Time: 18:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam+Pro&display=swap" rel="stylesheet">
    <title>Liên Lạc</title>
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
<jsp:include page="header.jsp"></jsp:include>
<!-- ***** Header Area End ***** -->

<!-- ***** Main Banner Area Start ***** -->
<div class="page-heading about-page-heading" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="inner-content">
                    <h2>Liên lạc</h2>
                    <span>TheTin Food cung cấp sản phẩm đông lạnh - tươi sống</span>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ***** Main Banner Area End ***** -->

<!-- ***** Contact Area Starts ***** -->
<div class="contact-us">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div id="map">

                    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d982.3619123241745!2d106.20476008806311!3d9.979831599551895!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31a013a802374353%3A0x2289f6f1401b8956!2zUUw1MywgVFQuIEPDoG5nIExvbmcsIEPDoG5nIExvbmcsIFRyw6AgVmluaCwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1659698152390!5m2!1svi!2s" width="100%" height="400px" frameborder="0" style="border:0" allowfullscreen></iframe>
                    <!-- You can simply copy and paste "Embed a map" code from Google Maps for any location. -->

                </div>
            </div>
            <div class="col-lg-6">
                <div class="section-heading">
                    <h2>Bạn cần lời nhắn với chúng tôi!</h2>
                    <span>Hãy nhập thông tin liên hệ và lời nhắn, chúng tôi sẽ liên lạc với bạn.</span>
                </div>
                <form id="contact" action="report" method="post">
                    <div class="row">
                        <div class="col-lg-6">
                            <fieldset>
                                <input name="name" type="text" id="name" placeholder="Tên của bạn" required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-6">
                            <fieldset>
                                <input name="email" type="text" id="email" placeholder="Email" required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-12">
                            <fieldset>
                                <textarea name="message" rows="6" id="message" placeholder="Lời nhắn với chúng tôi..." required=""></textarea>
                            </fieldset>
                        </div>
                        <div class="col-lg-12">
                            <fieldset>
                                <button type="submit" id="form-submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button></fieldset>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ***** Contact Area Ends ***** -->

<div class="subscribe">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="section-heading">
                    <h2>Nếu bạn muốn đặt hàng cho đám tiệc hãy để lại số  điện thoại chúng tối sẽ phản hồi</h2>
                    <span>Chúng tôi sẽ liên lạc với bạn sớm nhất để bàn về số lượng củng như ưu đãi</span>
                </div>
                <form id="subscribe" action="lien-he" method="post">
                    <div class="row">
                        <div class="col-lg-5">
                            <fieldset>
                                <input name="name" type="text" placeholder="Tên" required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-5">
                            <fieldset>
                                <input name="c_phone" type="text"  placeholder="Số điện thoại" required="">
                            </fieldset>
                        </div>
                        <div class="col-lg-2">
                            <fieldset>
                                <button type="submit" class="main-dark-button"><i class="fa fa-paper-plane"></i></button>
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

<!-- ***** Footer Start ***** -->
<jsp:include page="footer.jsp"></jsp:include>

<!-- jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.0/jquery.min.js" integrity="sha512-qp27nuUylUgwBZJHsmm3W7klwuM5gke4prTvPok3X5zi50y3Mo8cgpeXegWWrdfuXyF2UdLWK/WCb5Mv7CKHcA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

<!-- Plugins -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js" integrity="sha512-cmWevKhVdrmcSQujnTmu7/vx8+vZHZaB/31156dH0QB456wDedM+ec2tIP36ktso0LoW0IksvbL/5seNqAPvOQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.8.0/js/bootstrap-datepicker.min.js" integrity="sha512-cOGL6gI01KK2Bws211W8S3COhzrorBbzKvLPWYOVtSEYet3yG1fzJrimtwh8rUyvMy9qjgY2e7Rt6IwyaiX1Mg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script><script src="${pageContext.request.contextPath}/VIEW/assets/js/scrollreveal.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js" integrity="sha512-CEiA+78TpP9KAIPzqBvxUv8hy41jyI3f2uHi7DGp/Y/Ka973qgSdybNegWFciqh6GrN2UePx2KkflnQUbUhNIA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js" integrity="sha512-d8F1J2kyiRowBB/8/pAWsqUl0wSEOkG5KATkVV4slfblq9VRQ6MyDZVxWl2tWd+mPhuCbpTB4M7uU/x9FlgQ9Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="${pageContext.request.contextPath}/VIEW/assets/js/imgfix.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.0/slick.js" integrity="sha512-AcdgayNJFgi9/3XG5u9GgVXZSLpJKsv3TB+K+RYUgy7gZV3ZaufCy3CxT9YIvFmHhi9X4ixx1HFFRXfO68Cofg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.10.0/js/lightbox.js" integrity="sha512-T4q98huxHUnqwRkmpQ6hPlb2XBzGVAVhhb18CF2aB2UYfRHg0XfKq3/TJgWGI4Qek3pZSbuXn57zcecbuC8z7Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.isotope/3.0.4/isotope.pkgd.js" integrity="sha512-t3uZr9npfaXgQdC/JqVbnYzxR6wM/GQ8iBjuBeJLgA/F1gAuWuuieV5JIEsd+mbbEsWuWj5Bh8q112Oc2gBb0A==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- Global Init -->
<script src="${pageContext.request.contextPath}/VIEW/assets/js/custom.js"></script>

<script>

    $(function() {
        var selectedClass = "";
        $("p").click(function(){
            selectedClass = $(this).attr("data-rel");
            $("#portfolio").fadeTo(50, 0.1);
            $("#portfolio div").not("."+selectedClass).fadeOut();
            setTimeout(function() {
                $("."+selectedClass).fadeIn();
                $("#portfolio").fadeTo(50, 1);
            }, 500);

        });
    });

</script>

</body>

</html>

