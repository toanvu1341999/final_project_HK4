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
                        <!--create-cept-->
                        <div class="container">
                            <!-- The Modal -->
                            <div class="modal" id="myModal">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <!-- Modal body -->
                                        <div class="modal-body">
                                            <form class="needs-validation " novalidate action="/suplierpay/Create" object="${toancreate}" method="post">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h2 class="text-center">Create supplierpay</h2>
                                                    </div>
                                                    <hr>
                                                        <div class="panel-body">
                                                            <div class="row">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="date">Date:</label>
                                                                        <input type="date" id="date" field="${date}" required  value="${date}" class="form-control input-sm" autocomplete="off"  name="date"  min="2020-01-01" max="2021-12-31" onblur="KiemTra_Ngay(this.value, 'Them');">
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="suplierid">suplier</label>
                                                                        <input required type="text" id="suplierid" placeholder="enter customer.." name="suplierid" field="${suplierid}" class="form-control">
                                                                            <div class="valid-feedback">Invalid</div>
                                                                            <div class="invalid-feedback">Please enter customer name</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="address">Address:</label>
                                                                        <input type="text" id="address" placeholder="enter address.." name="address" field="${address}" class="form-control" required>
                                                                            <div class="valid-feedback">Invalid</div>
                                                                            <div class="invalid-feedback">please enter address</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="submitter">submitter:</label>
                                                                        <input type="text" id="submitter" name="submitter" placeholder="enter submitter.." field="${submitter}" class="form-control input-sm" required>
                                                                            <div class="valid-feedback">Invalid</div>
                                                                            <div class="invalid-feedback">please enter the submitter</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group ">
                                                                        <label>Price:</label>
                                                                        <div class="input-group mb-3">
                                                                            <input type="number" id="price" placeholder="enter price" name="price" field="${price}" class="form-control input-sm" required>
                                                                                <span class="btn btn-primary" type="text">VND</span>
                                                                        </div>
                                                                        <div class="valid-feedback">Invalid</div>
                                                                        <div class="invalid-feedback">please enter the amount</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <label for="explain">explain:</label>
                                                                        <textarea rows="2" class="form-control" id="explain" name="explain" field="${explain}"></textarea>
                                                                        <div class="valid-feedback">Invalid</div>
                                                                        <div class="invalid-feedback">Please enter the content</div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-md-6">
                                                                    <div class="form-group ">
                                                                        <label for="major">major:</label>
                                                                        <input type="text" id="major" name="major" field="${major}" value="pay for the purchase"class="form-control input-sm" required readonly/>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="voter">voter:</label>
                                                                <select id="voter" name="voter" field="${voter}"class="form-control input-sm" required>
                                                                    <option value="Staff">Staff</option>
                                                                    <option value="Admin">admin</option>
                                                                    <option value="Trung">Trung</option>
                                                                </select>

                                                                <div class="invalid-feedback">please choose receiver...</div>
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
                                        <form class="needs-validation " novalidate action="/suplierpay/edit" object="${cs}" method="post">
                                            <input type="hidden" field="${id}" />
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h2 class="text-center">Edit suplierpay</h2>
                                                </div>
                                                <hr>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="date">Date:</label>
                                                                <input type="date" id="date" required value="${cs.date}" class="form-control input-sm" autocomplete="off" name="date" min="2021-01-01 " max="2021-12-31" onblur="KiemTra_Ngay(this.value, 'Them');">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="suplierid">Client:</label>
                                                                <input required type="text" id="suplierid" name="suplierid" value="${cs.suplierid}" class="form-control">
                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">Please enter customer name</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="address">Address:</label>
                                                                <input type="text" id="address" name="address" value="${cs.getAddress()}" class="form-control" required>
                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">please enter address</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group ">
                                                                <label for="price">Price:</label>
                                                                <div class="input-group mb-3">
                                                                    <input type="text" id="price" placeholder="enter price" name="price" value="${cs.price}" class="form-control input-sm" required>
                                                                        <span class="btn btn-primary" type="text">VND</span>
                                                                </div>
                                                                <div class="valid-feedback">Invalid</div>
                                                                <div class="invalid-feedback">please enter the amount</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="submitter">Submitter:</label>
                                                                <input type="text" id="submitter" name="submitter" value="${cs.submitter}" class="form-control input-sm" required>
                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">please enter the submitter</div>
                                                            </div>
                                                        </div>

                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="explain">Explain:</label>
                                                                <input type="text" id="explain" name="explain" value="${cs.explain}" class="form-control" required>
                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">Please enter the content</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group ">
                                                                <label for="major">Major:</label>
                                                                <select id="major" name="major" value="${cs.major}" class="form-control input-sm" required>
                                                                    <option value="" selected="">Please choose...</option>
                                                                    <option value="Other Autumn" >Other Autumn</option>
                                                                    <option value="Debt collection">Debt collection</option>
                                                                </select>
                                                                <div class="valid-feedback">Invalid</div>
                                                                <div class="invalid-feedback">Please choose your profession...</div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="voter">Voter:</label>
                                                        <select id="voter" name="voter" value="${cs.voter}" class="form-control input-sm" required>
                                                            <option value="${cs.voter}">nhân viên</option>
                                                            <option value="${cs.voter}">admin</option>
                                                            <option value="${cs.voter}">Trung</option>
                                                        </select>

                                                        <div class="invalid-feedback">please choose receiver...</div>
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
                                <a href="/suplierpay/doCreate"></a>
                                <button type="submit" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
                                    <i class="fal fa-plus-circle"></i> Create New</button>
                                <a  href="#">  <button type="button" class="btn btn-success btn-sm" accesskey="U" onclick="XuLy_XuatExcel();"><i class="fal fa-inbox-in"></i> import Excel</button></a>
                            </div>
                            <br>
                                <table id="example" class="table table-striped table-bordered" style="width:100%">
                                    <thead>
                                        <tr>
                                            <th>Stt</th>
                                            <th>Date</th>
                                            <th>Client</th>
                                            <th>Price</th>
                                            <th>Major</th>
                                            <th>Voter</th>
                                            <th>delete</th>
                                            <th>in</th>
                                        </tr>

                                    </thead>
                                    <tbody> 

                                        <c:forEach items="${suplist}" var="c">
                                            <tr>
                                                <td>
                                                    <c:out value="${c.getId()}" />
                                                </td>
                                                <td>
                                                    <c:out value="${c.getDate()}" />
                                                </td>
                                                <td>
                                                    <a href="/suplierpay/doEdit/${c.getId()} " data-toggle="modal" data-target="#myModal2"> 
                                                        <c:out value="${c.getSuplierid()}" /></a>  |
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
                                                    <c:out value="${c.getVoter()}" />
                                                </td>
                                                <td>

                                                    <a href="/suplierpay/delete/${c.getId()}" onclick="return confirm('Are you sure you want to delete this item?');" data-method="post" data-method-id="delete_2" data-trans-button-cancel="Cancel" data-trans-button-confirm="Delete" data-trans-title="Are you sure you want to do this?" class="btn btn-danger" style="cursor:pointer;" onclick="$(this).find( & quot; form & quot; ).submit();">
                                                        <i class="fas fa-trash" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                        <form data-method-id="delete_2" action="#" method="POST" name="delete_item" style="display:none">
                                                            <input type="hidden" name="_method" value="post" autocomplete="off">
                                                        </form>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a href="#">
                                                        <i class="fal fa-inbox-in" data-toggle="tooltip" data-placement="top" title="In"></i>
                                                    </a>
                                                </td>
                                            </tr>
                                        </c:forEach>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <th>Stt</th>
                                            <th>Date</th>
                                            <th>Client</th>
                                            <th>Price</th>
                                            <th>Major</th>
                                            <th>Voter</th>
                                            <th>delete</th>
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