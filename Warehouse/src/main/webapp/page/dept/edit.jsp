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
        
        <div class="section-bg-1">
            <div class="container">
                <form class="needs-validation" novalidate action="/dept/edit" name="${de}" method="post">
                     <input type="hidden"  field="${id}"/>
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h2 class="text-center">Edit receipt</h2>
                        </div>
                        <hr>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="date">Ngày thu:</label>
                                        <input type="datetime-local" id="date" value="${de.date}" required  class="form-control input-sm" autocomplete="off"  name="date"  min="2021-01-01T00:00:00" max="2021-12-31T23:59:59" onblur="KiemTra_Ngay(this.value, 'Them');">
                                    </div>
                                </div>                        
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="object">Khách hàng:</label>
                                    <input required type="text" id="object" name="object" value="${de.object}" class="form-control">
                                    <div class="valid-feedback">hợp lệ</div>
                                    <div class="invalid-feedback">Nhập tên khách hàng</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="address">Địa chỉ:</label>
                                    <input type="text" id="address" name="address" value="${de.address}" class="form-control" required>
                                    <div class="valid-feedback">hợp lệ</div>
                                    <div class="invalid-feedback">Nhập địa chỉ</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="submitter">Người nộp:</label>
                                    <input type="text" id="submitter" name="submitter" value="${de.submitter}" class="form-control" required>
                                    <div class="valid-feedback">hợp lệ</div>
                                    <div class="invalid-feedback">Nhập người nộp</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group ">
                                    <label for="price">Số tiền:</label>
                                    <input type="text" id="price" name="price" value="${de.price}" class="form-control" required>

                                    <span class="input-group-text">VND</span>

                                    <div class="valid-feedback">hợp lệ</div>
                                    <div class="invalid-feedback">Nhập số tiền</div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="explain">Diễn giải:</label>
                                    <input type="explain" id="explain" name="explain" value="${de.explain}" class="form-control" required>
                                    <div class="valid-feedback">hợp lệ</div>
                                    <div class="invalid-feedback">Nhập nội dung </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="major">Nghiệp vụ:</label>
                                    <select id="major" name="major" value="${de.major}" class="form-control input-sm" disabled>
                                        <option value="" selected="">Thu nợ</option>
                                        <option value="TEST">Test</option>
                                        <option value="Thu Khac" >Thu khác</option>
                                        <option value="thu nợ">Thu nợ</option>
                                      </select>
                                    <div class="valid-feedback">hợp lệ</div>
                                    <div class="invalid-feedback">vui lòng chọn nghiệp vụ...</div>
                                </div>
                            </div>
                            </div>
                            <div class="form-group">
                                <label for="payer">Người thu:</label>
                                <select id="payer" name="payer" value="${de.payer}"class="form-control input-sm" required>
                                    <option value=""  selected="">Vui lòng chọn...</option>
                                    <option value="Nhân viên">nhân viên</option>
                                    <option value="admin">admin</option>
                                    <option value="Trung">Trung</option>
                                </select>

                                <div class="invalid-feedback">vui lòng chọn người thu...</div>
                            </div>
                            <div>
                                <input type="submit" class="btn btn-success  btn-btn-padding " value="update"/>
                            </div>
                        </div>
                    </div>
                </form>


            </div>
        </div>
    </body>
    <script>
        // Disable form submissions if there are invalid fields
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                // Get the forms we want to add validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
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
