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
    <title>Giỏ Hàng</title>
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
<div class="container-fluid">
    <div class="row" style="margin-top: 150px;">
        <aside class="col-lg-9">
            <div class="card">
                <div class="table-responsive">
                    <c:if test="${item_list eq null}">
                        <div class="alert alert-warning" role="alert">
                            Giỏ hàng trống!!! Vui lòng chọn sản phẩm
                        </div>
                    </c:if>
                    <table class="table table-borderless table-shopping-cart">
                        <thead class="text-muted">
                        <tr class="small text-uppercase">
                            <th scope="col">Sản Phẩm</th>
                            <th scope="col" width="120">Số Lượng</th>
                            <th scope="col" width="120">Giá Tiền</th>
                            <th scope="col" class="text-right d-none d-md-block" width="200"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach items="${item_list}" var="item">
                            <tr class="item-product-${item.product.id}">
                                <td>
                                    <figure class="itemside align-items-center">
                                        <div class="aside">
                                            <img src="${pageContext.request.contextPath}/VIEW/assets/images/${item.product.image}"
                                                 class="img-sm">
                                        </div>
                                        <figcaption class="info">
                                            <a href="#" class="title text-dark" data-abc="true">
                                                    ${item.product.name}
                                            </a>
                                            <p class="text-muted small">Còn Hàng</p>
                                        </figcaption>
                                    </figure>
                                </td>
                                <td>
                                    <select class="form-control count_product" data-id="${item.product.id}">
                                        <option selected disabled hidden
                                                class="default-quantity-${item.product.id}">${item.quantity}</option>
                                        <option>1</option>
                                        <option>2</option>
                                        <option>3</option>
                                        <option>4</option>
                                        <option>5</option>
                                    </select>
                                </td>
                                <td>
                                    <div class="price-wrap">
                                        <var class="price-${item.product.id}">${item.product.price}</var>
                                        <br>
                                        <small>1 Sản phẩm </small>
                                    </div>
                                </td>
                                <td class="text-right d-none d-md-block">
                                    <a data-original-title="Save to Wishlist" title="" href="chi-tiet-san-pham?id=${item.product.id}" class="btn btn-light"
                                       data-toggle="tooltip" data-abc="true">
                                        <i class="fa fa-eye"></i>
                                    </a>
                                    <a class="btn btn-light btn-remove" data-abc="true"
                                       data-id="${item.product.id}">Xóa</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </aside>
        <aside class="col-lg-3">
            <div class="card mb-3">
                <div class="card-body">
                    <form>
                        <div class="form-group"><label>Mã giãm giá</label>
                            <div class="input-group"><input type="text" class="form-control coupon" name=""
                                                            placeholder="Voucher code">
                                <span class="input-group-append">
                                    <button class="btn btn-primary btn-apply coupon">Áp dụng</button>
                                </span>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <dl class="dlist-align">
                        <dt>Tổng giá</dt>
                        <dd class="text-right ml-3 total-price">${total_price}</dd>
                    </dl>
                    <dl class="dlist-align">
                        <dt>Giảm giá:</dt>
                        <dd class="text-right text-danger ml-3 discount">0</dd>
                    </dl>
                    <dl class="dlist-align">
                        <dt>Tổng tiền:</dt>
                        <dd class="text-right text-dark b ml-3 payment"><strong>${total_price} VNĐ</strong></dd>
                    </dl>
                    <hr>
                    <button href="#" class="btn btn-out btn-primary btn-square btn-main" data-abc="true"
                            data-toggle="modal" data-target="#staticBackdrop">Đặt Hàng
                    </button>
                    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false"
                         tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="staticBackdropLabel">Thông tin đặt hàng</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form method="post" action="dat-hang">
                                        <input type="text" class="form-control coupon" name=""
                                               placeholder="Tên khách hàng">
                                        <br>
                                        <input type="text" class="form-control coupon" name=""
                                               placeholder="Số điện thoại">
                                        <br>
                                        <textarea class="form-control coupon" name="message" rows="6" id="message"
                                                  placeholder="Địa chỉ" required=""></textarea>
                                        <br>
                                        <button type="submit" id="form-submit" class="btn btn-success btn-main">Đặt
                                            hàng
                                        </button>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Đóng
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <a href="trang-chu" class="btn btn-out btn-success btn-main mt-2" data-abc="true">Quay
                        lại mua sắm</a>
                </div>
            </div>
        </aside>
    </div>
</div>


<!-- ***** Main Banner Area End ***** -->

<jsp:include page="footer.jsp"></jsp:include>
<!-- jQuery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.0/jquery.min.js" integrity="sha512-qp27nuUylUgwBZJHsmm3W7klwuM5gke4prTvPok3X5zi50y3Mo8cgpeXegWWrdfuXyF2UdLWK/WCb5Mv7CKHcA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<!-- Bootstrap -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
        integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
        crossorigin="anonymous"></script>

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

    $(document).ready(function () {
        $('.btn-remove').click(function (e) {
            var $removeBtn = $(this);
            var id = $removeBtn.data('id');

            $.ajax({
                type: "GET",
                url: "del-item",
                data: "id=" + id,
                success: function (data) {
                    $('.item-product-' + id).remove();
                    var value = $('.quantity-cart').text();
                    var newVal = value - 1;
                    $('.quantity-cart').text(newVal);
                }
            })

        })
    })
    $(document).ready(function () {
        $('.count_product').click(function (e) {
            var $inputQuantity = $(this);
            var id_product = $inputQuantity.data('id');
            var quantity_product = $inputQuantity.val();

            $.ajax({
                type: "GET",
                url: "change-quantity",
                data: {id: id_product, quantity: quantity_product},
                success: function(data) {
                    var old_quantity = $('.default-quantity-' + id_product).val();
                    var price = parseFloat($('.price-' + id_product).text());
                    var old_price = old_quantity * price;
                    var new_price = price * quantity_product;
                    var new_total = (parseInt($('.total-price').text()) - old_price) + new_price;
                    $('.total-price').text(new_total);
                    $('.payment').text(parseFloat($('.total-price').text())-$('.discount').val()+" VNĐ");
                    $('.default-quantity-'+id_product).text(quantity_product);
                }
            })


        })
    })
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
    var func_clock = function () {
        const date = new Date();
        let day = date.getDay();
        let month = date.getMonth();
        let time = date.getTime();
        let display = day + "/" + month + " : " + time;
        document.getElementById('clock').innerHTML = display;
    }
</script>
<style>
    body {
        background-color: #eeeeee;
        font-size: 14px;
    }

    .container-fluid {
        margin-top: 40px;

    }

    .card-body {
        -ms-flex: 1 1 auto;
        flex: 1 1 auto;
        padding: 1.40rem
    }

    .img-sm {
        width: 80px;
        height: 80px;
    }

    .itemside .info {
        padding-left: 15px;
        padding-right: 7px;
    }

    .table-shopping-cart .price-wrap {
        line-height: 1.2;
    }

    .table-shopping-cart .price {
        font-weight: bold;
        margin-right: 5px;
        display: block;
    }

    .text-muted {
        color: #969696 !important;
    }

    a {
        text-decoration: none !important;
    }

    .card {
        position: relative;
        display: -ms-flexbox;
        display: flex;
        -ms-flex-direction: column;
        flex-direction: column;
        min-width: 0;
        word-wrap: break-word;
        background-color: #fff;
        background-clip: border-box;
        border: 1px solid rgba(0, 0, 0, .125);
        border-radius: 0px;
    }

    .itemside {
        position: relative;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        width: 100%;
    }

    .dlist-align {
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
    }

    [class*="dlist-"] {
        margin-bottom: 5px;
    }

    .coupon {
        border-radius: 1px;
    }

    .price {
        font-weight: 600;
        color: #212529;
    }

    .btn.btn-out {
        outline: 1px solid #fff;
        outline-offset: -5px;
    }

    .btn-main {
        border-radius: 2px;
        text-transform: capitalize;
        font-size: 15px;
        padding: 10px 19px;
        cursor: pointer;
        color: #fff;
        width: 100%;
    }

    .btn-light {
        color: #ffffff;
        background-color: #F44336;
        border-color: #f8f9fa;
        font-size: 12px;
    }

    .btn-light:hover {
        color: #ffffff;
        background-color: #F44336;
        border-color: #F44336;
    }

    .btn-apply {
        font-size: 11px;
    }
</style>
</body>

</html>

