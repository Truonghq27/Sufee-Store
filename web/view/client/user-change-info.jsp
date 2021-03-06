<%-- 
    Document   : user-change-info
    Created on : Jul 29, 2020, 10:52:04 AM
    Author     : ADMIN
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="widget/other/header.jsp" flush="true"/>
<jsp:include page="widget/other/navbar.jsp" flush="true"/>

<section id="breadcrumb">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="${pageContext.request.contextPath}/view/client/home-index.jsp">Trang chủ</a></li>
            <li class="active">Đổi thông tin</li>
        </ul>
    </div>
</section>

<section class="section">
    <div class="container">
        <aside class="col-md-3">
            <div class="avt">
                <img class="img-avt" src="<%=request.getContextPath()%>/view/client/uploads/images/Customers/${customer.avatar}" alt="Ảnh đại diện cá nhân" />
                <div class="">
                    <div class="">Tài khoản của</div>
                    <strong>${customer.fullname}</strong>
                </div>

            </div>
            <ul class="item-ul">
                <li class="item-a is-active">
                    <a href="edit-profile.htm" title="Đổi thông tin người dùng">
                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http//www3.org/2000/svg">
                            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"> </path>
                        </svg>
                        <span>Thông tin tài khoản</span>
                    </a>
                </li>
                <li class="item-a ">
                    <a href="<%=request.getContextPath()%>/change-password.htm" title="Đổi mật khẩu người dùng">
                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http//www3.org/2000/svg">
                            <path d="M19 2H5c-1.11 0-2 .9-2 2v14c0 1.1.89 2 2 2h4l3 3 3-3h4c1.1 0 2-.9 2-2V4c0-1.1-.9-2-2-2zm-6 16h-2v-2h2v2zm2.07-7.75l-.9.92C13.45 11.9 13 12.5 13 14h-2v-.5c0-1.1.45-2.1 1.17-2.83l1.24-1.26c.37-.36.59-.86.59-1.41 0-1.1-.9-2-2-2s-2 .9-2 2H8c0-2.21 1.79-4 4-4s4 1.79 4 4c0 .88-.36 1.68-.93 2.25z"> </path>
                        </svg>
                        <span>Đổi mật khẩu</span>
                    </a>
                </li>
                <li class="item-a ">
                    <a href="${pageContext.request.contextPath}/wishlists.htm?customerId=${InfoCustomer.customerId}" title="Danh sách yêu thích">
                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http//www3.org/2000/svg">
                            <path d="M12 21.35l-1.45-1.32C5.4 15.36 2 12.28 2 8.5 2 5.42 4.42 3 7.5 3c1.74 0 3.41.81 4.5 2.09C13.09 3.81 14.76 3 16.5 3 19.58 3 22 5.42 22 8.5c0 3.78-3.4 6.86-8.55 11.54L12 21.35z" > </path>
                        </svg>
                        <span>Sản phảm yêu thích</span>
                    </a>
                </li>
                <li class="item-a ">
                    <a href="${pageContext.request.contextPath}/gio-hang.htm?customerId=${InfoCustomer.customerId}" title="Đơn hàng">
                        <svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 24 24" height="1em" width="1em" xmlns="http//www3.org/2000/svg">
                            <path d="M13 12h7v1.5h-7zm0-2.5h7V11h-7zm0 5h7V16h-7zM21 4H3c-1.1 0-2 .9-2 2v13c0 1.1.9 2 2 2h18c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 15h-9V6h9v13z" > </path>
                        </svg>
                        <span>Quản lý đơn hàng</span>
                    </a>
                </li>
            </ul>
        </aside>
        <div style="flex: 1 1 0%;display: block;">
            <h3 class="tt">Thông tin cá nhân</h3>
            <div class="col-md-9 formtt">
                <form action="edit-profile.htm" method="POST" role="form" enctype="multipart/form-data">
                    <div class="col-md-8 formtt">
                        <div class="form-cc">
                            <div class="form-label">
                                <label class="lb" for="CustomerFullname">Họ tên</label>
                            </div>
                            <div class="form-input">
                                <input type="text" class="input" id="fullname" name="fullname" value="${customer.fullname}" />
                            </div>
                        </div>
                        <div class="form-cc">
                            <div class="form-label">
                                <label class="lb" for="CustomerPhone">Số điện thoại</label>
                            </div>
                            <div class="form-input">
                                <input type="text" class="input" id="phone" name="phone" value="${customer.phone}" />
                            </div>
                        </div>

                        <div class="form-cc">
                            <div class="form-label">
                                <label class="lb" for="CustomerPhone">Email</label>
                            </div>
                            <div class="form-input">
                                <input type="text" disabled="" style="border-color: rgb(250, 250, 250);" class="input" id="email" name="email" value="${customer.email}" />
                            </div>
                        </div>
                        <div class=" form-cc">
                            <div class="form-label">
                                <label class="lb" for="CustomerBirthday">Ngày sinh</label>
                            </div>
                             <div class="form-input">
                                <fmt:formatDate value="${customer.birthday}" pattern="dd/MM/yyyy" var="myBirthday" />
                                <input type="text"  class="input" id="birthday"  name="birthday" value="${myBirthday}"/>
                            </div>
                        </div>
                        <div class=" form-cc">
                            <div class="form-label">
                                <label class="lb" for="CustomerBirthday">Giới tính</label>
                            </div>
                            <div class="form-input">
                                <c:choose>
                                    <c:when test="${customer.gender == 1}">
                                        <input type="radio"  id="gender" name="gender" value="1" checked=""/>
                                        <label>Nam</label>
                                        <input type="radio"  id="gender" name="gender" value="0" />
                                        <label>Nữ</label>
                                    </c:when>
                                    <c:when test="${customer.gender == 0}">
                                        <input type="radio"  id="gender" name="gender" value="1" />
                                        <label>Nam</label>
                                        <input type="radio"  id="gender" name="gender" value="0" checked="" />
                                        <label>Nữ</label>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                        <div class="form-cc ">
                            <div class="form-label">
                                <label class="lb" for="CustomerAddress">Địa chỉ</label>
                            </div>
                            <div class="form-input">
                                <input type="text" class="input" id="customerAddress" name="customerAddress" value="${customer.customerAddress}" />
                            </div>
                        </div>
                        <div class="form-cc">
                            <div class="form-label"></div>
                            <button type="submit" class="btn-submit">Cập nhật</button>
                        </div>
                    </div>
                    <div class="col-md-1 formtt">
                        <div class=form-cc>
                            <div class="avt">
                                <div class="form-input ">
                                    <img class="avatar-uploader_avatar-image" src="<%=request.getContextPath()%>/view/client/uploads/images/Customers/${customer.avatar}" id="previewAvatar"  />
                                    <input class="avatar-uploader_file-input"  type="file" id="avatar" name="avatar"/>
                                </div>
                            </div>
                        </div>
                        <div class="form-cc">
                            <div class="form-label"></div>
                            <div>
                                <label style="" class="btn-upload" for="avatar">Chọn Ảnh</label>
                            </div>
                        </div>
                    </div>
                </form>

            </div>
        </div>    
    </div>
</section>
<jsp:include page="widget/footer.jsp" flush="true"/>
<c:if test="${not empty error}">
    <script>
        (function ($) {
            $.notify({
                title: '<strong>Lỗi :</strong>',
                message: '${error}',
                delay: 4000
            }, {
                type: 'danger',
                allow_dismiss: false
            });
        })(jQuery);
    </script>
</c:if>
