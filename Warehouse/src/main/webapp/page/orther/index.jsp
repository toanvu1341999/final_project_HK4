<%-- 
    Document   : index
    Created on : Jun 23, 2021, 8:27:03 PM
    Author     : Toan
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">
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
                                            <form class="needs-validation " novalidate action="/orther/Create" object="${toancreate}" method="post">
                                                <div class="panel panel-primary">
                                                    <div class="panel-heading">
                                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                        <h2 class="text-center">Create Other</h2>

                                                    </div>
                                                    <hr>

                                                        <div class="row">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="date">Date:</label>
                                                                    <input type="date" field="${date}" required  value="${date}" class="form-control input-sm" autocomplete="off"  name="date"  min="2020-01-01" max="2021-12-31" onblur="KiemTra_Ngay(this.value, 'Them');">
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="client">Client:</label>
                                                                    <input required type="text"  placeholder="enter client.." name="client" field="${client}" class="form-control">
                                                                        <div class="valid-feedback">Invalid</div>
                                                                        <div class="invalid-feedback">Please enter customer name</div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="address">Address:</label>
                                                                    <input type="text"  placeholder="enter address.." name="address" field="${address}" class="form-control" required>
                                                                        <div class="valid-feedback">Invalid</div>
                                                                        <div class="invalid-feedback">please enter address</div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="submitter">submitter:</label>
                                                                    <input type="text"  name="submitter" placeholder="enter submitter.." field="${submitter}" class="form-control input-sm" required>
                                                                        <div class="valid-feedback">Invalid</div>
                                                                        <div class="invalid-feedback">please enter the submitter</div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group ">
                                                                    <label>Price:</label>
                                                                    <div class="input-group mb-3">
                                                                        <input type="number"  placeholder="enter price" name="price" field="${price}" class="form-control input-sm" required>
                                                                            <span class="btn btn-primary" type="text">VND</span>
                                                                    </div>

                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">please enter the amount</div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <label for="explain">explain:</label>
                                                                    <textarea rows="2" required class="form-control" placeholder="enter explain.." name="explain" field="${explain}"></textarea>
                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">Please enter the content</div>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-6">
                                                                <div class="form-group ">
                                                                    <label for="major">major:</label>
                                                                    <select name="major" field="${major}" class="form-control input-sm" required>
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
                                                            <label for="voter">Manager:</label>
                                                            <input name="voter" field="${voter}" value="Admin" class="form-control" readonly />
                                                            
<!--                                                            <select  name="voter" field=""class="form-control input-sm" required>
                                                                <option value="Staff">Staff</option>
                                                                <option value="Admin">admin</option>
                                                                <option value="Trung">Trung</option>
                                                            </select>-->

                                                            <!--<div class="invalid-feedback">please choose receiver...</div>-->
                                                        </div>
                                                        <div>
                                                            <input type="submit" class="btn btn-success  btn-btn-padding " value="Save"/>
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
                        <div class="modal" id="myModal3">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <!-- Modal body -->
                                    <div class="modal-body">

                                        <form class="needs-validation " novalidate  method="post">
                                            <input type="hidden" id="idupdate"  name="nameid" />
                                            <div class="panel panel-primary">
                                                <div class="panel-heading">
                                                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                    <h2 class="text-center">Edit other</h2>
                                                </div>
                                                <hr>

                                                    <div class="row">
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="date">Date:</label>
                                                                <input type="date" id="dateupdate"  required   class="form-control input-sm" autocomplete="off"  name="date"  min="2020-01-01" max="2021-12-31" onblur="KiemTra_Ngay(this.value, 'Them');">
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="client">Client:</label>
                                                                <input required type="text" id="clientupdate" placeholder="enter customer.." name="customerid"  class="form-control">
                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">Please enter customer name</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="address">Address:</label>
                                                                <input type="text" id="addressupdate"  placeholder="enter address.." name="address"  class="form-control" required>
                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">please enter address</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="submitter">submitter:</label>
                                                                <input type="text" id="submitterupdate" name="submitter" placeholder="enter submitter.."  class="form-control input-sm" required>
                                                                    <div class="valid-feedback">Invalid</div>
                                                                    <div class="invalid-feedback">please enter the submitter</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group ">
                                                                <label>Price:</label>
                                                                <div class="input-group mb-3">
                                                                    <input type="number" id="priceupdate"  placeholder="enter price" name="price"  class="form-control input-sm" required>
                                                                        <span class="btn btn-primary" type="text">VND</span>
                                                                </div>
                                                                <div class="valid-feedback">Invalid</div>
                                                                <div class="invalid-feedback">please enter the amount</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group">
                                                                <label for="explain">explain:</label>
                                                                <textarea rows="2" id="explainupdate" class="form-control" placeholder="enter explain.."  name="explain"  required></textarea>
                                                                <div class="valid-feedback">Invalid</div>
                                                                <div class="invalid-feedback">Please enter the content</div>
                                                            </div>
                                                        </div>
                                                        <div class="col-md-6">
                                                            <div class="form-group ">
                                                                <label for="major">major:</label>
                                                                <input type="text" id="majorupdate" name="major"  value="Debt collection"class="form-control input-sm" required readonly/>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="form-group">
                                                        <label for="voter">voter:</label>
                                                        <input id="voterupdate" name="voter" class="form-control input-sm" readonly />
<!--                                                        <select id="voterupdate" name="voter" class="form-control input-sm" required>
                                                            <option value="Staff">Staff</option>
                                                            <option value="Admin">admin</option>
                                                            <option value="Trung">Trung</option>
                                                        </select>-->

                                                        <!--<div class="invalid-feedback">please choose receiver...</div>-->
                                                    </div>
                                                    <div>
                                                        <input type="submit" class="btn btn-success   btn-btn-padding " onclick="doUpdate();return false;" value="Update"/>
                                                        <input type="submit" class="btn btn-secondary" data-dismiss="modal" value="close"/>
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
                                <a href="/orther/doCreate"></a>
                                <button type="submit" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
                                    <i class="fal fa-plus-circle"></i> Tạo phiếu thu</button>
                                <a  href="#">  <button type="button" class="btn btn-success btn-sm" accesskey="U" onclick="XuLy_XuatExcel();"><i class="fal fa-inbox-in"></i> X<u>u</u>ất Excel</button></a>
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
                                            <th>update</th>
                                            <th>in</th>
                                        </tr>

                                    </thead>
                                    <tbody> 

                                        <c:forEach items="${ortherlist}" var="c">
                                            <tr>
                                                <td>
                                                    <c:out value="${c.getId()}" />
                                                </td>
                                                <td>
                                                    <c:out value="${c.getDate()}" />
                                                </td>
                                                <td>
                                                     
                                                        <c:out value="${c.getClient()}" /> |
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

                                                    <a href="/orther/delete/${c.getId()}" onclick="return confirm('Are you sure you want to delete this item?');" data-method="post" data-method-id="delete_2" data-trans-button-cancel="Cancel" data-trans-button-confirm="Delete" data-trans-title="Are you sure you want to do this?" class="btn btn-danger" style="cursor:pointer;" onclick="$(this).find( & quot; form & quot; ).submit();">
                                                        <i  class="fas fa-trash" data-toggle="tooltip" data-placement="top" title="Delete"></i>
                                                        <form data-method-id="delete_2" action="#" method="POST" name="delete_item" style="display:none">
                                                            <input type="hidden" name="_method" value="post" autocomplete="off">
                                                        </form>
                                                    </a>
                                                </td>
                                                <td>
                                                    <a class="btn btn-primary" data-toggle="modal" data-target="#myModal3" id="trung" onclick="update(${c.getId()})" >
                                                        <i  class="fas fa-edit"></i>                                      
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
                         function update(id)
                        {
                            $.get("/orther/" + id, function (data, status) {
                                console.log(data);
                                $("#clientupdate").val(data.client);
                                $("#dateupdate").val(data.date);
                                $("#majorupdate").val(data.major);
                                $("#addressupdate").val(data.address);
                                $("#explainupdate").val(data.explain);
                                $("#priceupdate").val(data.price);
                                $("#submitterupdate").val(data.submitter);
                                $("#idupdate").val(data.id);
                                $("#voterupdate").val(data.voter);
                            });
                        }
                        function doUpdate()
                        {
//                            String kiemtrai = $("#idupdate").val();
//                            String idupadte = "";
//                            if(kiemtrai != null){
//                                idupadte = kiemtrai;
//                            }
                                
                            console.log($("#idupdate").val());
                            $.ajax({
                                url: '/orther/edit',
                                method: 'POST',
                                traditional: true,
                                data: {
                                    haid: $("#idupdate").val(),
                                    client: $("#clientupdate").val(),
                                    price: $("#priceupdate").val(),
                                    explain: $("#explainupdate").val(),
                                    address: $("#addressupdate").val(),
                                    date: $("#dateupdate").val(),
                                    submitter: $("#submitterupdate").val(),
                                    major: $("#majorupdate").val(),
                                    voter:  $("#voterupdate").val(),
                                },
                                success: function (data) {
                                  location.reload();
                                },
                                error: function (request, status, error) {
                                    alert("The request failed: " + request.responseText);
                                }
                            });
                        }
                        
                        
                        
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