<%@page import="org.json.JSONArray"%>
<%-- <%@page import="servlets.ApiCalls"%> --%>
<%@page import="org.json.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
  
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Dashboard</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="assets/styles/css/themes/lite-purple.min.css">
    <link rel="stylesheet" href="assets/styles/vendor/perfect-scrollbar.css">
    <link rel="stylesheet" href="assets/styles/vendor/datatables.min.css">
	<link rel="stylesheet" href="assets/styles/vendor/dropzone.min.css">
	<link rel="stylesheet" href="assets/styles/vendor/sweetalert2.min.css">
</head>

<body>

<div class="main-header">
		<div class="logo px-2" style="width:152px;height:50px">
			<img src="/superus_Black.png" alt="" class="w-100">
		</div>


		<div style="margin: auto"></div>

		<div class="header-part-right">
			<!-- Grid menu Dropdown -->
			<div class="dropdown"></div>
			<div class="dropdown">
				<div class="user colalign-self-end">
					<img src="./assets/images/74235.png" id="userDropdown" alt=""
						data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">

					<div class="dropdown-menu dropdown-menu-right"
						aria-labelledby="userDropdown">
						<div class="dropdown-header">
							<i class="i-Lock-User mr-1"></i> User Profile
						</div>
						<a class="dropdown-item" href="ChangePassword.jsp">Change
							Password</a> <a class="dropdown-item" href="index.jsp">Sign out</a>
					</div>
				</div>
			</div>
		</div>

	</div>

<div class="col-12 mx-auto">
         
                    <div class="card mb-12">
                        <div class="card-body">
                            <div class="card-title text-center">Device List</div>
                            <p> <a href="#" style="color:white"  onclick="verifyModalContent4" data-toggle="modal" data-target="#verifyModalContent4">
                            			<button type="button" class="btn btn-primary float-right m-0" >
                                            <span class="ul-btn__icon"><i class="i-Gear-2"></i></span>
                                           <span class="ul-btn__text">Add Device</span>
                                        </button></a></p>
							<br>
							  <div class="tab-content">
								<div class="tab-pane active" id="about">
								<table id="zero_configuration_table" class="display table table-striped table-bordered" style="width:100%">
									<thead>
										<tr>
											<th scope="col">Device Name</th>
											<th scope="col">Mac Address</th>
											<th scope="col">Last Image</th>
											<th scope="col">Actions</th>
										</tr>
									</thead>
									<tbody>
									
											<tr>
												<td>Device one
												</td>
												<td>12:12:12:12:12
												</td>
												<td>
													<a data-toggle="modal" data-target="#templatePreview" href="#"
													onclick=LatestImagePath><img
														src=LatestImagePath"
														height="250px" width="250px" />
													</a>
												</td>
												<td>
													<a class="dropdown-item ul-widget__link--font" data-toggle="modal"  data-whatever="@mdo">
														<i class="i-Data-Save"> </i>
															Update Image
													</a>  
												</td>
											</tr>
											<!-- <td></td>
											<td></td>
											
											<td>
												<a data-toggle="modal" data-target="#templatePreview" href="#"
													onclick=LatestImagePath><img
														src=LatestImagePath"
														height="250px" width="250px" /></a>
											</td>
											<td>
												<a class="dropdown-item ul-widget__link--font" data-toggle="modal"  data-whatever="@mdo">
													<i class="i-Data-Save"> </i>
														Update Image
												</a>  
											</td> -->			
									</tbody>
								</table>
									<form class="needs-validation" id="customerForm" method="post" autocomplete="off" novalidate>
									
									</form>
                                </div>
                           </div>
						</div>
					</div>
				</div>
				<div class="modal fade" id="templatePreview" tabindex="-1"
					role="dialog" aria-labelledby="templatePreview" aria-hidden="true">
					<div class="modal-dialog modal-dialog-centered" role="document">
						<div class="modal-content">

							<div class="modal-body">

								<img src="" height="auto" id="ShowImage" width="auto"  />
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary"
									data-dismiss="modal">Close</button>

							</div>
						</div>
					</div>
				</div>
		<div class="modal fade" id="verifyModalContent4" tabindex="-1" role="dialog" aria-labelledby="verifyModalContent4" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<form action="" class="needs-validation" id="addDevice"  novalidate>
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="verifyModalContent_title">Add Device</h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
						<div class="form-row">
									<div class="col-md-6 mb-3">
										<label for="validationCustom01">Device Name <span class="required" style="color:red">*</span></label>
										<input type="text" class="form-control" id="short_name" placeholder="ESL name" maxlength="25" required>
										
										<div class="invalid-feedback">
												Please Enter Name
										</div>
									</div>
									<div class="col-md-6 mb-3">
									<label for="validationCustomUsername">Mac Address <span class="required" style="color:red">*</span></label>
										<div class="input-group">
											<input type="text" class="form-control" id="MAC_Address" placeholder="Mac Address" aria-describedby="inputGroupPrepend" maxlength="17" required>
											<div class="invalid-feedback">
												Please Enter Mac Address.
											</div>
										</div>
									</div>
									<div class="col-md-12 mb-3">
										<label for="validationCustom02">Description <span class="required" style="color:red">*</span></label>
										<input type="text" class="form-control" id="esl_description" placeholder="Description" maxlength="200" required>
										<div class="invalid-feedback">
												Please Enter Description
										</div>
									</div>																	
								</div>	
								
								
								<div class="form-row">
								<div class="col-md-6 mb-3">
										<label for="validationCustom01">Device IP <span class="required" style="color:red">*</span></label>
										<input type="text" class="form-control" id="short_name" placeholder="ESL name" maxlength="25" required>
										
										<div class="invalid-feedback">
												Please Enter Device IP
										</div>
									</div>
								</div>
								<button class="btn btn-primary" type="submit">Submit form</button>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" onclick="clearData()" data-dismiss="modal">Close</button>
						</div>
					</div>
				</form>
			</div>
		</div>
		<%@ include file="html/jsTags.html" %>	
</body>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="assets/js/bootstrap-selectpicker.js"></script>
<script src="assets/js/jquery.serializejson.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
</html> 