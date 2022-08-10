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
    <title>${name}</title>
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
<div class="page-heading" id="top">

</div>

<!-- ***** Product Area Starts ***** -->
<section class="section" id="product">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="left-images">
                    <img src="${pageContext.request.contextPath}/VIEW/assets/images/${image}" alt=""
                         style="max-width:100%;max-height:100%;">
                </div>
            </div>
            <div class="col-lg-4">
                <div class="right-content">
                    <h4>${name}</h4>
                    <span class="price" id="price">${price}</span>
                    <ul class="stars">
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                        <li><i class="fa fa-star"></i></li>
                    </ul>
                    <span>Type: ${type}</span>
                    <div class="quote">
                        <i class="fa fa-quote-left"></i>
                        <p>${description}</p>
                    </div>
                    <form id="form-submit" method="get" action="add-cart">
                        <div class="quantity-content">
                            <div class="left-content">
                                <h6>Số lượng:</h6>
                            </div>
                            <div class="right-content">
                                <div class="quantity buttons_added">

                                    <input type="hidden" name="id" value="${id}">
                                    <input id="add" type="button" value="-" class="minus">
                                    <input name="quantity" id="count" type="number" step="1" min="1" max="" value="1"
                                           onchange="totalprice();" title="Qty" class="input-text qty text" size="4"
                                           pattern="" inputmode="">
                                    <input id="del" type="button" value="+" class="plus">


                                </div>
                            </div>
                        </div>
                        <div class="total">
                            <h4 class="text-success" id="total">Tổng giá: ${price} VNĐ</h4>
                            <div class="main-border-button">
                                <a onclick="sendForm()"> <i class="fa fa-shopping-cart" aria-hidden="true"></i></a>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Product Area Ends ***** -->

<!-- ***** Footer Start ***** -->
<!-- ***** Footer Start ***** -->
<jsp:include page="footer.jsp"></jsp:include>


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
<script src="${pageContext.request.contextPath}/VIEW/assets/js/quantity.js"></script>

<!-- Global Init -->
<script src="${pageContext.request.contextPath}/VIEW/assets/js/custom.js"></script>

<script>

    var sendForm = function (){
        document.getElementById("form-submit").submit();
    }
    var totalprice = function () {
        let count = document.getElementById("count").value;
        let price = document.getElementById("price").textContent;
        let total = count * price;
        document.getElementById("total").innerHTML = "Tổng giá: " + total + " VNĐ";
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
