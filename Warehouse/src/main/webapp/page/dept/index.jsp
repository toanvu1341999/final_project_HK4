<%-- 
    Document   : index
    Created on : Jun 23, 2021, 8:27:03 PM
    Author     : Toan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" /> 
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
                <link rel="stylesheet" href="https://cdn.datatables.net/1.10.24/css/dataTables.bootstrap4.min.css">
                    <script src="https://cdn.datatables.net/1.10.24/js/jquery.dataTables.min.js"></script>
                    <script src="https://cdn.datatables.net/1.10.24/js/dataTables.bootstrap4.min.js"></script>
                    <link rel="stylesheet" href="https://pro.fontawesome.com/releases/v5.10.0/css/all.css" integrity="sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p" crossorigin="anonymous" />
                    <title>Receipts</title>
                    <script>
                        $(document).ready(function () {
                            $('#example').DataTable();
                        });
                    </script>
                    </head>
                    <body>
                        <!--modal-->
                        <!--create-dept-->
                        <div class="container">
                            <!-- The Modal -->
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form class="needs-validation " novalidate action="/dept/Create" object="${toancreate}" method="post">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h2 class="text-center">Create Dept</h2>
                                                    </div>
                                                    <hr>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="date">Ngày thu:</label>
                                                                        <input type="date" id="date" field="${date}" required  value="${date}" class="form-control input-sm" autocomplete="off"  name="date"  min="2021-01-01" max="2021-12-31" onblur="KiemTra_Ngay(this.value, 'Them');">
                                                                    </div>
                                                                </div>                        
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="object">Khách hàng:</label>
                                                                        <input required type="text" id="object" name="object" field="${object}" class="form-control" placeholder="enter object...">
                                                                            <div class="valid-feedback">hợp lệ</div>
                                                                            <div class="invalid-feedback">Nhập tên khách hàng</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="address">Địa chỉ:</label>
                                                                        <input type="text" id="address" name="address" field="${address}" class="form-control" placeholder="enter address" required>
                                                                            <div class="valid-feedback">hợp lệ</div>
                                                                            <div class="invalid-feedback">Nhập địa chỉ</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label>Người nộp:</label>
                                                                        <input type="text" id="submitter" name="submitter" field="${submitter}" placeholder="enter submitter " class="form-control" required>
                                                                            <div class="valid-feedback">hợp lệ</div>
                                                                            <div class="invalid-feedback">Nhập người nộp</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group ">
                                                                        <label for="price">Số tiền:</label>
                                                                        <input type="text" id="price" name="price" field="${price}" placeholder="enter price" class="form-control"  required>

                                                                            <span class="input-group-text">VND</span>

                                                                            <div class="valid-feedback">hợp lệ</div>
                                                                            <div class="invalid-feedback">Nhập số tiền</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="explain">Diễn giải:</label>
                                                                        <input type="text" id="explain" name="explain" field="${explain}" placeholder="enter explain" class="form-control" required>
                                                                            <div class="valid-feedback">hợp lệ</div>
                                                                            <div class="invalid-feedback">Nhập nội dung </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="major">Nghiệp vụ:</label>
                                                                        <input type="text" name="major" field="${major}" value="thu nợ"  class="form-control input-sm" readonly>

                                                                            <div class="valid-feedback">hợp lệ</div>
                                                                            <div class="invalid-feedback">vui lòng chọn nghiệp vụ...</div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="payer">Người thu:</label>
                                                                <select id="payer" name="payer" field="${payer}"class="form-control input-sm" required>
                                                                    <option value=""  selected="">Vui lòng chọn...</option>
                                                                    <option value="Nhân viên">nhân viên</option>
                                                                    <option value="admin">admin</option>
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
                                        <!-- Modal footer -->
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--end modal-->
                        <!--end-create-->
                        <!--eidt-->
                        <div class="modal" id="myModal2">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <!-- Modal body -->
                                    <div class="modal-body">
                                        <form class="needs-validation " novalidate action="/receipts/edit" object="${cs}" method="post">
                                            <input type="hidden" field="${id}" />
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h2 class="text-center">Edit receipt</h2>
                                                </div>
                                                <hr>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="date">Ngày thu:</label>
                                                                <input type="date" id="date" required value="${cs.date}" class="form-control input-sm" autocomplete="off" name="date" min="2021-01-01 " max="2021-12-31" onblur="KiemTra_Ngay(this.value, 'Them');">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="object">Khách hàng:</label>
                                                                <input required type="text" id="object" name="object" value="${cs.object}" class="form-control">
                                                                    <div class="valid-feedback">hợp lệ</div>
                                                                    <div class="invalid-feedback">Nhập tên khách hàng</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="address">Địa chỉ:</label>
                                                                <input type="text" id="address" name="address" value="${cs.getAddress()}" class="form-control" required>
                                                                    <div class="valid-feedback">hợp lệ</div>
                                                                    <div class="invalid-feedback">Nhập địa chỉ</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group ">
                                                                <label for="price">Số tiền:</label>
                                                                <input type="text" id="price" name="price" value="${cs.price}" class="form-control input-sm" required>
                                                                    <span class="input-group-text">VND</span>
                                                                    <div class="valid-feedback">hợp lệ</div>
                                                                    <div class="invalid-feedback">Nhập số tiền</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="submitter">Người nộp:</label>
                                                                <input type="text" id="submitter" name="submitter" value="${cs.submitter}" class="form-control input-sm" required>
                                                                    <div class="valid-feedback">hợp lệ</div>
                                                                    <div class="invalid-feedback">Nhập người nộp</div>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="explain">Diễn giải:</label>
                                                                <input type="text" id="explain" name="explain" value="${cs.explain}" class="form-control" required>
                                                                    <div class="valid-feedback">hợp lệ</div>
                                                                    <div class="invalid-feedback">Nhập nội dung </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group ">
                                                                <label for="major">Nghiệp vụ:</label>
                                                                <select id="major" name="major" value="${cs.major}" class="form-control input-sm" required>
                                                                    <option value="" selected="">Vui lòng chọn...</option>
                                                                    <option value="TEST">Test</option>
                                                                    <option value="Thu khác" >Thu khác</option>
                                                                    <option value="Thu nợ">Thu nợ</option>
                                                                </select>
                                                                <div class="valid-feedback">hợp lệ</div>
                                                                <div class="invalid-feedback">vui lòng chọn nghiệp vụ...</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="collector">Người thu:</label>
                                                        <select id="collector" name="collector" value="${cs.collector}" class="form-control input-sm" required>
                                                            <!--                                    <option value=""  selected="">Vui lòng chọn...</option>-->
                                                            <option value="${cs.collector}">nhân viên</option>
                                                            <option value="${cs.collector}">admin</option>
                                                            <option value="${cs.collector}">Trung</option>
                                                        </select>

                                                        <div class="invalid-feedback">vui lòng chọn người thu...</div>
                                                    </div>
                                                    <div>
                                                        <input type="submit" class="btn btn-success  btn-btn-padding " value="Update" />
                                                    </div>

                                            </div>
                                        </form>
                                    </div>
                                    <!-- Modal footer -->
                                </div>
                            </div>
                        </div>
                        <!--endedit-->
                        <!--table search-->
                        <div class="container">
                            <div class="pull-right">
                                <a href="/dept/doCreate"></a>
                                <button type="submit" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                    <i class="fal fa-plus-circle"></i> Create Dept</button>
                                <a  href="#">  <button type="button" class="btn btn-success btn-sm" accesskey="U" onclick="XuLy_XuatExcel();"><i class="fal fa-inbox-in"></i> X<u>u</u>ất Excel</button></a>
                            </div>
                            <br>
                                <table id="example" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Stt</th>
                                            <th>Ngày</th>
                                            <th>Khách Hàng</th>
                                            <th>Số tiền </th>
                                            <th>nghiệp vụ</th>
                                            <th>người lập phiếu</th>
                                            <th>xóa</th>
                                            <th>in</th>
                                        </tr>

                                    </thead>
                                    <tbody> 

                                        <c:forEach items="${listdept}" var="c">
                                            <tr>
                                                <td>
                                                    <c:out value="${c.getId()}" />
                                                </td>
                                                <td>
                                                    <c:out value="${c.getDate()}" />
                                                </td>
                                                <td>

                                                    <c:out value="${c.getObject()}" />  |
                                                    <c:out value="${c.getSubmitter()}" /> -
                                                    <c:out value="${c.getAddress()}" /> 
                                                    <span style="color: #00a65a !important; font-style: italic;">( <c:out value="${c.getExplain()}"  />)</span> 
                                                </td>
                                                <td>
                                                    <c:out value="${c.getPrice()}" />
                                                </td>

                                                <td>
                                                    <c:out value="${c.getMajor()}" />
                                                </td>
                                                <td>
                                                    <c:out value="${c.getPayer()}" />
                                                </td>
                                                <td>

                                                    <a href="/dept/delete/${c.getId()}" onclick="return confirm('Are you sure you want to delete this item?');" data-method="post" data-method-id="delete_2" data-trans-button-cancel="Cancel" data-trans-button-confirm="Delete" data-trans-title="Are you sure you want to do this?" class="btn btn-danger" style="cursor:pointer;" onclick="$(this).find( & quot; form & quot; ).submit();">
                                                        <i class="fas fa-trash" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                        <form data-method-id="delete_2" action="#" method="POST" name="delete_item" style="display:none">
                                                            <input type="hidden" name="_method" value="post" autocomplete="off">
                                                        </form>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="#">
                                                        <a href="/dept/doEdit/${c.getId()}" data-toggle="modal" data-target="#myModal2">update</a>
                                                        <i class="fal fa-inbox-in" data-toggle="tooltip" data-placement="top" title="In"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Stt</th>
                                            <th>Ngày</th>
                                            <th>Khách Hàng</th>
                                            <th>Số tiền </th>
                                            <th>nghiệp vụ</th>
                                            <th>người lập phiếu</th>
                                            <th>xóa</th>
                                            <th>in</th>
                                        </tr>
                                    </tfoot>
                                </table>
                        </div>
                        <!--endtable-->
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