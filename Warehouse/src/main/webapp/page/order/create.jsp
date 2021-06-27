<%-- 
    Document   : create
    Created on : Jun 23, 2021, 9:29:00 PM
    Author     : Toan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <!--<link rel="stylesheet" href="Style.css">-->
    </head>
    <body>

        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
            Create
        </button>

        <!-- Modal -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-body">


                        <form class="needs-validation " novalidate action="/receipts/Create" object="${toancreate}" method="post">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <h2 class="text-center">Create receipt</h2>
                                </div>
                                <hr>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label for="date">Ngày thu:</label>
                                                <input type="date" id="date" field="${date}" required  value="${date}" class="form-control input-sm" autocomplete="off"  name="date"  min="2020-01-01" max="2021-12-31" onblur="KiemTra_Ngay(this.value, 'Them');">
                                            </div>
                                        </div>
                                        <div class="col-md-8">
                                            <div class="form-group">
                                                <label for="object">Khách hàng:</label>
                                                <input required type="text" id="object" name="object" field="${object}" class="form-control">
                                                <div class="valid-feedback">hợp lệ</div>
                                                <div class="invalid-feedback">Nhập tên khách hàng</div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="address">Địa chỉ:</label>
                                                <input type="text" id="address" name="address" field="${address}" class="form-control" required>
                                                <div class="valid-feedback">hợp lệ</div>
                                                <div class="invalid-feedback">Nhập địa chỉ</div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="submitter">Người nộp:</label>
                                                <input type="text" id="submitter" name="submitter" field="${submitter}" class="form-control input-sm" required>
                                                <div class="valid-feedback">hợp lệ</div>
                                                <div class="invalid-feedback">Nhập người nộp</div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group ">
                                                <label>Số tiền:</label>
                                                <input type="text" id="price" name="price" field="${price}" class="form-control input-sm" required>

                                                <span class="input-group-text">VND</span>

                                                <div class="valid-feedback">hợp lệ</div>
                                                <div class="invalid-feedback">Nhập số tiền</div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="explain">Diễn giải:</label>
                                                <input type="text" id="explain" name="explain" field="${explain}" class="form-control" required>
                                                <div class="valid-feedback">hợp lệ</div>
                                                <div class="invalid-feedback">Nhập nội dung </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group ">
                                                <label for="major">Nghiệp vụ:</label>
                                                <select id="major" name="major" field="${major}" class="form-control input-sm" required>
                                                    <option value="" selected="">Vui lòng chọn...</option>
                                                    <option value="ThuKhac" >Thu khác</option>
                                                    <option value="Thu nợ">Thu nợ</option>
                                                </select>
                                                <div class="valid-feedback">hợp lệ</div>
                                                <div class="invalid-feedback">vui lòng chọn nghiệp vụ...</div>
                                            </div>
                                        </div>
                                        <!--                                <div class="row">
                                                                            <div class="col md 6">
                                                                                <label class="pading-righht" for="payment">Hình thức thanh toán: </label>
                                                                            </div>
                                                                            <div class="form-check-inline">
                                                                                <label class="form-check-label">
                                                                                    <input name="payment" type="radio" value="tiền mặt" />tiền mặt
                                                                                    <input name="payment" type="radio" value="thanh toán thẻ " />thanh toán thẻ                                       
                                                                                </label>
                                                                            </div>
                                        
                                                                        </div>-->

                                    </div>
                                    <div class="form-group">
                                        <label for="collector">Người thu:</label>
                                        <select id="collector" name="collector" field="${collector}"class="form-control input-sm" required>
                                            <option value=""  selected="">Vui lòng chọn...</option>
                                            <option value="Nhân viên">nhân viên</option>
                                            <option value="Admin">admin</option>
                                            <option value="Trung">Trung</option>
                                        </select>

                                        <div class="invalid-feedback">vui lòng chọn người thu...</div>
                                    </div>
                                    <div>
                                        <input type="submit" class="btn btn-success  btn-btn-padding " value="Save"/>
                                    </div>
                                </div>
                            </div>
                        </form>


                    </div>

                </div>
            </div>
        </div>
    </body>
    <script>
        // Disable form submissions if there are invalid fields
        (function () {
            'use strict';
            window.addEventListener('load', function () {
                // Get the forms we want to add validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function (form) {
                    form.addEventListener('submit', function (event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();
    </script>
</html>
