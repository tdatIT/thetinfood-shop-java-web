<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: tiendat
  Date: 06/08/2022
  Time: 00:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <!-- ***** Logo Start ***** -->
                    <a class="navbar-brand" href="trang-chu">
                        <img src="${pageContext.request.contextPath}/VIEW/assets/images/thetinlogo.png" width="150"
                             height="70" alt="">
                    </a>
                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="scroll-to-section"><a href="trang-chu" class="active">Trang Chủ</a></li>
                        <li class="scroll-to-section"><a href="danh-sach-san-pham?type=1">Đồ đông lạnh</a></li>
                        <li class="scroll-to-section"><a href="danh-sach-san-pham?type=2">Đồ tươi</a></li>
                        <li class="scroll-to-section"><a href="danh-sach-san-pham?type=3">Khác</a></li>
                        <li class="submenu">
                            <a href="javascript:;">Dịch vụ</a>
                            <ul>
                                <li><a href="shipping">Giao hàng</a></li>
                                <li><a href="lien-he">Liên lạc</a></li>
                            </ul>
                        </li>
                        <li class="scroll-to-section"><a href="gio-hang">
                            <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                            <c:if test="${sessionScope.noItems eq null}">
                                <span class="badge badge-dark quantity-cart">0</span>
                            </c:if>
                            <c:if test="${sessionScope.noItems ne null}">
                                <span class="badge badge-dark quantity-cart">${sessionScope.noItems}</span>
                            </c:if>
                        </a>
                        </li>
                        <c:if test="${sessionScope.user_session  eq null}">
                            <li class="scroll-to-section">
                                <a href="dang-nhap">
                                    <i class="fa fa-sign-in" aria-hidden="true"></i>Đăng nhập
                                </a>
                            </li>
                        </c:if>
                        <c:if test="${sessionScope.user_session ne null}">
                            <li class="submenu">
                                <a href="javascript:;">${sessionScope.user_session}</a>
                                <ul>
                                    <li><a href="quan-ly">Quản lý</a></li>
                                    <li><a href="dang-xuat">Thoát</a></li>
                                </ul>
                            </li>
                        </c:if>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->

