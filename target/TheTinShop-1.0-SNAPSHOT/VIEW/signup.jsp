<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>Đăng ký tài khoản</title>
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
<div class="subscribe page-heading" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">

                <form id="subscribe" action="dang-ky" method="post">
                    <div class="row">
                        <div class="col-lg-4">

                        </div>
                        <div class="col-lg-4" style="border: 1px solid">
                            <div style="margin: 5px">
                                <c:if test="${notify eq false}">
                                    <div class="alert alert-warning" role="alert">
                                       Đăng ký thất bại kiểm tra lại dữ liệu !
                                    </div>
                                </c:if>
                                <c:if test="${notify eq true}">
                                    <div class="alert alert-success" role="alert">
                                        Đăng ký thành công vui lòng đăng nhập !
                                    </div>
                                    <a href="dang-nhap" class="btn btn-primary">Đăng nhập</a>
                                </c:if>
                                <h4>Đăng ký tài khoản</h4>
                                <fieldset>
                                    <input name="name" type="text" placeholder="Tên" required="">
                                </fieldset>
                                <br>
                                <fieldset>
                                    <input name="username" type="text" placeholder="Tài khoản" required="">
                                </fieldset>
                                <br>
                                <fieldset>
                                    <input id="pass" name="pass" type="password" placeholder="Mật khẩu" required=""
                                           onkeyup='check();'>
                                </fieldset>
                                <br>
                                <fieldset>
                                    <input id="re-pass" name="re-pass" type="password"
                                           placeholder="Xác nhận mật khẩu" required="" onkeyup='check();'>
                                </fieldset>
                                <span id='message'></span>
                                <br>
                                <fieldset>
                                    <button type="submit" id="form-submit" class="main-dark-button float-right"><i
                                            class="fa fa-check" aria-hidden="true"></i></button>
                                </fieldset>
                            </div>

                        </div>
                        <div class="col-lg-4">

                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
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
    var check = function () {
        if (document.getElementById('pass').value ==
            document.getElementById('re-pass').value) {
            document.getElementById('message').style.color = 'green';
            document.getElementById('message').innerHTML = 'Mật khẩu khớp';
        } else {
            document.getElementById('message').style.color = 'red';
            document.getElementById('message').innerHTML = 'Mật khẩu không khớp';
        }
    }
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

