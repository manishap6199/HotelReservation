<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Hotel Reservation</title>

    <!-- Google font link(Montserrat) -->
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100&display=swap"
      rel="stylesheet"
    />
    <!-- font awesome link-->
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
    />

    <!-- bootstrap css link -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link rel="stylesheet" href="css/style.css" />
    <script
            src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
  </head>
  <body>
    <!-- navbar start -->

    <div class="row">
      <div
        class=" bg-danger col-auto col-md-4 col-lg-3 min-vh-100 d-flex sidebar-out"
      >
        <div class="p-4 sidebar">
          <a
            href="dashboard.html"
            class="d-flex d-sm-inline align-items-center text-decoration-none"
          >
            <i class="fa-solid fa-square-h h3 h-logo"></i>

            <span class="fs-4 d-none d-sm-inline">Hotel Reservation </span>
          </a>
          <hr class="d-none d-sm-block" />
          <ul class="nav nav-pills flex-column mt-4 mt-sm-0" id="menu">
            <li class="nav-item py-sm-0  submenu-link <c:if test="${mode=='MODE_ADMIN_HOME' }"> active </c:if>">
              <a href="/adminhome" class="nav-link">
                <i class="fs-5 fa-solid fa-gauge"></i>
                <span class="fs-d ms-1 d-none d-sm-inline">Dashboard</span>
              </a>
            </li>
            <li class="nav-item py-sm-0 submenu-link <c:if test="${mode=='MODE_ADMIN_CATEGORY' || mode=='MODE_ADMIN_CATEGORY_UPDATE' }">active</c:if>" >
              <a href="/admincategory" class="nav-link">
                <i class="fs-5 fa-sharp fa-solid fa-table-list"></i
                ><span class="fs-d ms-2 d-none d-sm-inline">Category</span>
              </a>
            </li>
            <li class="nav-item py-sm-0 submenu-link <c:if test="${mode=='MODE_ADMIN_ROOM' || mode=='MODE_ADMIN_ROOM_UPDATE'}"> active </c:if>">
              <a href="/adminroom" class="nav-link">
                <i class="fs-5 fa-solid fa-pencil"></i
                ><span class="fs-d ms-2 d-none d-sm-inline">Add Rooms</span>
              </a>
            </li>

            <li class="nav-item py-sm-0 submenu-link <c:if test="${mode=='MODE_ADMIN_BOOKING' }"> active </c:if>">
              <a href="/adminbooking" class="nav-link">
                <i class="fs-5 fa-solid fa-book"></i
                ><span class="fs-d ms-2 d-none d-sm-inline "> Booking </span>
              </a>
            </li>
            <li class="nav-item py-sm-0 submenu-link <c:if test="${mode=='MODE_ADMIN_USERS' }"> active </c:if>">
              <a href="/adminusers" class="nav-link">
                <i class="fs-5 fa-solid fa-users"></i
                ><span class="fs-d ms-2 d-none d-sm-inline ">Users </span>
              </a>
            </li>
           
            <hr class="d-none d-sm-block" />
            <li class="nav-item py-sm-0 logout">
              <a href="/logout" class="nav-link">
                <i class="fs-5 fa-solid fa-arrow-right-from-bracket"> </i>
                <span class="fs-d ms-2 d-none d-sm-inline">Logout</span>
              </a>
            </li>
          </ul>
        </div>
      </div>
      
    <!-- navbar end -->
		<c:choose>
		<c:when test="${mode=='MODE_ADMIN_HOME' }">
      <div class="col-auto col-md-8 col-lg-9 container-fluid">
        <div class="d-flex justify-content-between px-3 header">
          <h1></h1>
          <h1 class="text-center">Admin Dashboard</h1>
          <h6><i class="fs-5 fa-solid fa-user mx-1 pt-3"></i>Admin</h6>
        </div>
            <div class="container content mt-2 pt-5">
            
                <div class="row row-cols-1 row-cols-md-12 g-4 text-center">
					<div class="alert alert-primary" role="alert">
					  <h1>!! HOTEL RESERVATION !!</h1>
					  <h3>Welcome Admin</h3>
					</div>
            	</div>
          </div>
      </div>
      </c:when>
      
      <c:when test="${mode=='MODE_ADMIN_CATEGORY' }">
      <div class="col-auto col-md-8 col-lg-9 container-fluid">
        <div class="d-flex justify-content-between px-3 header">
          <h1></h1>
          <h1 class="text-center">Room Category</h1>
          <h6><i class="fs-5 fa-solid fa-user mx-1 pt-3"></i>Admin</h6>
        </div>

        <div class="container content category pt-5">
         
            <form class="row row-cols-lg-auto g-3" method="POST" action="save-category">
               <label class="h5 pt-1">Add Category : </label>
                <div class="col">
                    <input type="text" class="form-control" id="inline-form-website" name="name">
                </div>
            
                <div class="form-group ">
					<input type="submit" class="btn btn-primary submit-btn" value="Add" />
				</div>
            </form>
            <table class="table mt-3">
                <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Category</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="cat" items="${category }">
					<tr>
						<th scope="row">${cat.id }</th>
	                    <td>${cat.name }</td>
	                    <td><a href="/update-category?id=${cat.id }" class="btn btn-warning">
	                    	Update</a>
						<a href="/delete-category?id=${cat.id }" class="btn btn-danger">
							Delete</a></td>
					</tr>
				</c:forEach>
                </tbody>
              </table>
        </div>
      </div>
      </c:when>
      
      <c:when test="${mode=='MODE_ADMIN_CATEGORY_UPDATE' }">
      <div class="col-auto col-md-8 col-lg-9 container-fluid">
        <div class="d-flex justify-content-between px-3 header">
          <h1></h1>
          <h1 class="text-center">Room Category</h1>
          <h6><i class="fs-5 fa-solid fa-user mx-1 pt-3"></i>Admin</h6>
        </div>

        <div class="container content category pt-5">
         
            <form class="row row-cols-lg-auto g-3" method="POST" action="update-category">
               <label class="h5 pt-1">Add Category : </label>
                <div class="col">
                    <input type="text" class="form-control" id="inline-form-website" name="name" value="${cat.name }">
                </div>
                    <input type="hidden" class="form-control" name="id" value="${cat.id }">
            
                <div class="form-group ">
					<input type="submit" class="btn btn-primary submit-btn" value="Update" />
				</div>
            </form>
            <table class="table mt-3">
                <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Category</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="cat" items="${category }">
					<tr>
						<th scope="row">${cat.id }</th>
	                    <td>${cat.name }</td>
	                    <td><a href="/update-category?id=${cat.id }" class="btn btn-warning">
	                    	Update</a>
						<a href="/delete-category?id=${cat.id }" class="btn btn-danger">
							Delete</a></td>
					</tr>
				</c:forEach>
                </tbody>
              </table>
        </div>
      </div>
      </c:when>
      
      
      
      <c:when test="${mode=='MODE_ADMIN_ROOM' }">
      <div class="col-auto col-md-8 col-lg-9 container-fluid">
        <div class="d-flex justify-content-between px-3 header">
          <h1></h1>
          <h1 class="text-center">Room</h1>
          <h6><i class="fs-5 fa-solid fa-user mx-1 pt-3"></i>Admin</h6>
        </div>

        <div class="container content category pt-5">
         
         	<div class="card p-3 text-center" >
            <form class="row row-cols-lg-auto g-3 text-center" method="POST" action="save-room">
				<div class="col-6">
               		<label class="h5 pt-1">Room Number : </label>
				</div>
                <div class="col-6">
                    <input type="text" class="form-control" id="inline-form-website" name="number">
                </div>
                <br />
                <div class="col-6">
                	<label class="h5 pt-1">Room Type : </label>
                </div>
                <div class="col-6">
	                <select class="form-select" aria-label="Default select example" name="catid">
					  <option selected value="">Open this select menu</option>
					  <c:forEach var="cat" items="${category }">
					  	<option value="${cat.id}">${cat.name }</option>
					  </c:forEach>
					</select>
				</div>
            	<div class="col-6">
                	<label class="h5 pt-1">Room Description : </label>
                </div>
                <div class="col-6">
                	<textarea class="form-control" name="description" placeholder="Leave a discription here" id="floatingTextarea2" style="height: 100px"></textarea>
                </div>
                
				<div class="col-6">
               		<label class="h5 pt-1">Room Charges : </label>
				</div>
                <div class="col-6">
                    <input type="text" class="form-control" id="inline-form-website" name="charges">
                </div>
                <div class="form-group text-center col-12">
					<input type="submit" class="btn btn-primary submit-btn" value="Add" />
					<input type="reset" class="btn btn-primary submit-btn" value="Clear" />
				</div>
            </form>
            </div>
            <table class="table mt-3">
                <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Number</th>
                    <th scope="col">Type</th>
                    <th scope="col">Charges</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="data" items="${room }">
					<tr>
						<th scope="row">${data.id }</th>
	                    <td>${data.number }</td>
	                    <td>${data.category.name }</td>
	                    <td>${data.charges }</td>
	                    <td>${data.status }</td>
	                    <td><a href="/update-room?id=${data.id }" class="btn btn-warning">
	                    	Update</a>
						<a href="/delete-room?id=${data.id }" class="btn btn-danger">
							Delete</a></td>
					</tr>
				</c:forEach>
                </tbody>
              </table>
        </div>
      </div>
      </c:when>
      
      
      <c:when test="${mode=='MODE_ADMIN_ROOM_UPDATE' }">
      <div class="col-auto col-md-8 col-lg-9 container-fluid">
        <div class="d-flex justify-content-between px-3 header">
          <h1></h1>
          <h1 class="text-center">Room Update</h1>
          <h6><i class="fs-5 fa-solid fa-user mx-1 pt-3"></i>Admin</h6>
        </div>

        <div class="container content category pt-5">
         
         	<div class="card p-3 text-center" >
            <form class="row row-cols-lg-auto g-3 text-center" method="POST" action="update-room">
            	<input type="hidden" class="form-control" name="id" value="${r.id }">
				<div class="col-6">
               		<label class="h5 pt-1">Room Number : </label>
				</div>
                <div class="col-6">
                    <input type="text" class="form-control" id="inline-form-website" name="number" value="${r.number }">
                </div>
                <br />
                <div class="col-6">
                	<label class="h5 pt-1">Room Type : </label>
                </div>
                <div class="col-6">
	                <select class="form-select" aria-label="Default select example" name="catid" >
					  <option selected value="">Open this select menu</option>
					  <c:forEach var="c" items="${category }">
					  	<option value="${c.id}" ${c.id == r.category.id ? 'selected' : ''} >${c.name }</option>
					  </c:forEach>
					</select>
				</div>
				
            	<div class="col-6">
                	<label class="h5 pt-1">Room Description : </label>
                </div>
                <div class="col-6">
                	<textarea class="form-control" name="description" placeholder="Leave a discription here" style="height: 100px">${r.details }</textarea>
                </div>
                
				<div class="col-6">
               		<label class="h5 pt-1">Room Charges : </label>
				</div>
                <div class="col-6">
                    <input type="text" class="form-control" id="inline-form-website" name="charges" value="${r.charges }">
                </div>
                <div class="form-group text-center col-12">
					<input type="submit" class="btn btn-primary submit-btn" value="Update" />
					<input type="reset" class="btn btn-primary submit-btn" value="Clear" />
				</div>
            </form>
            </div>
            <table class="table mt-3">
                <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Number</th>
                    <th scope="col">Type</th>
                    <th scope="col">Charges</th>
                    <th scope="col">Status</th>
                    <th scope="col">Action</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="data" items="${room }">
					<tr>
						<th scope="row">${data.id }</th>
	                    <td>${data.number }</td>
	                    <td>${data.category.name }</td>
	                    <td>${data.charges }</td>
	                    <td>${data.status }</td>
	                    <td><a href="/update-room?id=${data.id }" class="btn btn-warning">
	                    	Update</a>
						<a href="/delete-room?id=${data.id }" class="btn btn-danger">
							Delete</a></td>
					</tr>
				</c:forEach>
                </tbody>
              </table>
        </div>
      </div>
      </c:when>
      
      
      <c:when test="${mode=='MODE_ADMIN_BOOKING' }">
      <div class="col-auto col-md-8 col-lg-9 container-fluid">
        <div class="d-flex justify-content-between px-3 header">
          <h1></h1>
          <h1 class="text-center">Booking</h1>
          <h6><i class="fs-5 fa-solid fa-user mx-1 pt-3"></i>Admin</h6>
        </div>

        <div class="container content category pt-5">
            <table class="table mt-3">
                <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">CheckIn</th>
                    <th scope="col">CheckOut</th>
                    <th scope="col">User</th>
                    <th scope="col">Room</th>
                    <th scope="col">Card Details</th>
                    <th scope="col">Amount</th>
                    
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="b" items="${booking }">
					<tr>
						<th scope="row">${b.id }</th>
	                    <td>${b.fromDate }</td>
	                    <td>${b.toDate }</td>
	                    <td>${b.user.username }</td>
	                    <td>${b.room.number } - ${b.room.category.name}</td>
	                    <td>Name : ${b.cardName} - Number:${b.cardNumber}</td>
	                    <td>${b.amount }</td>
					</tr>
				</c:forEach>
                </tbody>
              </table>
        </div>
      </div>
      </c:when>
      
      <c:when test="${mode=='MODE_ADMIN_USERS' }">
      <div class="col-auto col-md-8 col-lg-9 container-fluid">
        <div class="d-flex justify-content-between px-3 header">
          <h1></h1>
          <h1 class="text-center">Users</h1>
          <h6><i class="fs-5 fa-solid fa-user mx-1 pt-3"></i>Admin</h6>
        </div>

        <div class="container content category pt-5">
            <table class="table mt-3">
                <thead>
                  <tr>
                    <th scope="col">Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Address</th>
                    <th scope="col">City</th>
                    <th scope="col">Email Id</th>
                    <th scope="col">Mobile No</th>
                    <th scope="col">Username</th>
                  </tr>
                </thead>
                <tbody>
                <c:forEach var="u" items="${users }">
					<tr>
						<th scope="row">${u.id }</th>
	                    <td>${u.name }</td>
	                    <td>${u.address }</td>
	                    <td>${u.city }</td>
	                    <td>${u.emailid }</td>
	                    <td>${u.mobileno }</td>
	                    <td>${u.username }</td>
	                    
					</tr>
				</c:forEach>
                </tbody>
              </table>
        </div>
      </div>
      </c:when>
      
      
 
      </c:choose>
    </div>
			<script th:inline="javascript">
                window.onload = function() {

                    var msg = "${message}";
                    
                    if (msg == "Save Success") {
        				Command: toastr["success"]("Item added successfully!!")
        			} else if (msg == "Delete Success") {
        				Command: toastr["success"]("Item deleted successfully!!")
        			} else if (msg == "Delete Failure") {
        			    Command: toastr["error"]("Some error occurred, couldn't delete item")
        			} else if (msg == "Edit Success") {
        				Command: toastr["success"]("Item updated successfully!!")
        			}

        			toastr.options = {
                          "closeButton": true,
                          "debug": false,
                          "newestOnTop": false,
                          "progressBar": true,
                          "positionClass": "toast-top-right",
                          "preventDuplicates": false,
                          "showDuration": "300",
                          "hideDuration": "1000",
                          "timeOut": "5000",
                          "extendedTimeOut": "1000",
                          "showEasing": "swing",
                          "hideEasing": "linear",
                          "showMethod": "fadeIn",
                          "hideMethod": "fadeOut"
                        }
        	    }
            </script>


    <script
      src="https://code.jquery.com/jquery-3.6.4.min.js"
      integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8="
      crossorigin="anonymous"
    ></script>

    <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"
    ></script>

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"
      crossorigin="anonymous"
    ></script>
  </body>
</html>