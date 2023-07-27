<!DOCTYPE html >
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache">
<meta http-equiv="Expires" content="sat, 01 Dec 2001 00:00:00 GMT">
<title>tecno-tab | home</title>
<!--   <link href="static/css/bootstrap.min.css" rel="stylesheet">
<link href="static/css/style.css" rel="stylesheet">-->
 <link rel="stylesheet"
        	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
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
	    <!-- font awesome link-->
	    <link
	      rel="stylesheet"
	      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	    />
	    <link rel="stylesheet" href="css/style.css" />
        <script
        	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script
        	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
  <!-- 	<div role="navigation">
		<div class="navbar navbar-inverse">
			<a href="/welcome" class="navbar-brand">Tecno-Tab</a>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li><a href="/login">Login</a></li>
					<li><a href="/register">New Registration</a></li>
					<li><a href="/show-users">All Users</a></li>
				</ul>
			</div>
		</div>
	</div> 
	
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><i class="fa-solid fa-square-h h3"></i> Hotel Reservation</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon">
      	
      </span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/login">Login</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/register">Registration</a>
        </li>
        
      </ul>
    </div>
  </div>
</nav>-->
<nav class="navbar navbar-expand-lg navbar-light">
        <div class="container-fluid">

        <a class="navbar-brand ms-3" href="#">
            <img src="./images/logo.png" alt="" width="35" height="35" class="d-inline-block align-text-top me-2">
            Hotel Reservation
        </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse " id="navbarSupportedContent">
            <ul class="navbar-nav  mb-2 mb-lg-0 ms-auto">
              <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="/welcome">Home</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Rooms
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                	<c:forEach var="cat" items="${category }">
                		 <li><a class="dropdown-item" href="/room-welcome?id=${cat.id }">${cat.name }</a></li>
                	</c:forEach>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/about">About Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/contact">Contact Us</a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/login">Login</a>
              </li>
              
            </ul>
           
          </div>
        </div>
      </nav>

	<c:choose>
		<c:when test="${mode=='MODE_HOME' }">
		 <div class="home">
        	<img src="./images/home.jpg" alt="">
      	</div>
      	<div class="home-card">
        	<h1>The perfect blend of <br><span>luxury</span> and <span>relaxation</span></h1>
        	<p>
        	The plush rooms, world-class amenities, ambient fine-dining restaurants and grand banquets make it the destination to be for the esteemed guests of the city.</p>
      	</div>

	     <div class="contact-footer text-center py-5">
	        <h3 class="mb-3">New Hotel</h3>
	        <h6>2144/19, Old AB Road, Abcd Corner, Pune - 416705</h6>
	        <h6><i class="fa-solid fa-phone"></i> 0211 265878 <span><i class="fa-solid fa-envelope ms-4"></i> reservations@MyHotel.com</span></h6>
	     </div>
	     <div class="welcome-desc p-5">
        <h2 class="text-center my-4">Welcome To Our Hotel</h2>
        <div class="row">
          <div class="col-md-6 p-4">
            <h5 class="mb-3">UPSCALE LIFESTYLE HOTEL FOR URBAN TRAVELLERS</h5>
            <p>Experience the charm, well-suited for business and leisure travel. Explore open, relaxed spaces at our downtown hotel, close to airport. Well-appointed rooms offer large windows and in room amenities. Explore open, relaxed spaces at our downtown hotel, close to airport. Experience wellness and varied cuisine, set in serenity.</p>
          </div>
          <div class="col-md-6 p-4 text-center">
            <img class="ms-5" src="./images/hotel1.jpg" alt="" width="350" height="auto">
          </div>
        </div>
      </div>
      <div class="services text-center py-3">
        <div class="row my-4">
          <h3 class="mb-4">Services</h3>
          <div class="col-3">
            <i class="fs-1 fa-solid fa-wifi mb-3"></i>
            <h6>Free WIFI</h6>
          </div>
          <div class="col-3">
            <i class="fs-1 fa-solid fa-square-parking mb-3"></i>
            <h6>Free Parking</h6>
          </div>
          <div class="col-3">
            <i class="fs-1 fa-solid fa-fan mb-3"></i>
            <h6>Air Conditioning</h6>
          </div>
          <div class="col-3">
            <i class="fs-1 fa-solid fa-bell-concierge mb-3"></i>
            <h6>Room Service</h6>
          </div>
        </div>
      </div>
			

		</c:when>
		
		<c:when test="${mode=='MODE_ABOUT' }">
<div class="p-5">
      <h1 class="text-center about pb-2 mb-5">About Us</h1>
      <div class="row">
        <div class="col-md-6 p-4">
          <h4 class="mb-3">Best Business hotel in City</h4>
          <p>
            We are known as best business hotel in City, stands out from all the other hotels as it is known for hosting a perfect stay along with the best hospitality. We strive to make every visit more pleasurable and
            memorable for all our guests.
            <br />
            Hotel Vrishali Executive is 6 mins (2.2 Km) away from Kolhapur
            Railway Station, 5 mins (2.1 Km) from Kolhapur Bus Stand, and 17
            mins (8.9 Km) away from Kolhapur Airport.
            <br />
            Hotel Vrishali Executive not only looks after the leisure travellers
            but also the business travellers as we take care of the privacy,
            comfort and business needs in a relaxed atmosphere.Experience the
            charm, well-suited for business and leisure travel. Explore open,
            relaxed spaces at our downtown hotel, close to airport. <br>
            Well-appointed rooms offer large windows and in room amenities.
            Explore open, relaxed spaces at our downtown hotel, close to
            airport. Experience wellness and varied cuisine, set in serenity.
          </p>
        </div>
        <div class="col-md-6 text-center">
          <img
            class=""
            src="./images/hotel2.jpg"
            alt=""
            width="400"
            height="auto"
          />
        </div>
      </div>
    </div>
	<div class="contact-footer text-center py-5">
	      <h3 class="mb-3">New Hotel</h3>
	      <h6>2144/19, Old AB Road, Abcd Corner, Pune - 416705</h6>
	      <h6>
	        <i class="fa-solid fa-phone"></i> 0211 265878
	        <span
	          ><i class="fa-solid fa-envelope ms-4"></i>
	          reservations@MyHotel.com</span
	        >
	      </h6>
	    </div>
	
	    <div class="footer text-center">
	      <h6>Copyright ©Hotel Reservation System 2023. All rights reserved.</h6>
	    </div>

		</c:when>
		
		
		
		
		<c:when test="${mode=='MODE_CONTACT' }">
		<div class="p-5">
      <h1 class="text-center about pb-2 mb-5">Contact Us</h1>
      <img src="./images/hotel4.jpg"  width="100%" alt="">
    </div>

    <div class="contact-footer text-center py-5">
      <h3 class="mb-3">New Hotel</h3>
      <h6>2144/19, Old AB Road, Abcd Corner, Pune - 416705</h6>
      <h6>
        <i class="fa-solid fa-phone"></i> 0211 265878
        <span
          ><i class="fa-solid fa-envelope ms-4"></i>
          reservations@MyHotel.com</span
        >
      </h6>
    </div>
    <div class="row">
        <div class="col-md-12">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d242118.17048756388!2d73.69780599627852!3d18.524544737940385!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc2bf2e67461101%3A0x828d43bf9d9ee343!2sPune%2C%20Maharashtra!5e0!3m2!1sen!2sin!4v1689496730879!5m2!1sen!2sin" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>
        
    </div>


    <div class="footer text-center">
      <h6>Copyright ©Hotel Reservation System 2023. All rights reserved.</h6>
    </div>

		</c:when>

		<c:when test="${mode=='MODE_REGISTER' }">
			 <div class="background-image"></div>
      <div class="register-form p-3 text-center">
        <i class="fa-solid fa-square-h h3"></i>
        
        <h3 class="d-inline-block text-center py-2">User Registration</h3>
          <form class="p-3" method="POST" action="save-user">
            <div class="row">
            <div class="col-md-6 col-sm-12">
                <div class="mb-4">
                  <input
                    type="text"
                    placeholder="Enter User Name *"
                    class="form-control py-2"
                    id="exampleInputName"
                    required
                    name="username"
                    value="${user.username }"
                  />
                </div>
                <div class="mb-4">
                  <input
                    type="password"
                    placeholder="Enter Password *"
                    class="form-control py-2"
                    id="exampleInputpassword"
                    required
                    name="password"
                    value="${user.password }"
                  />
                </div>
                <div class="mb-4">
                  <input
                    type="password"
                    placeholder="Confirm Password *"
                    class="form-control py-2"
                    id="exampleInputpassword2"
                    name="confirm"
                    required
                  />
                </div>
                <div class="mb-4">
                  <input
                    type="email"
                    placeholder="Enter Email Id *"
                    class="form-control py-2"
                    id="exampleInputEmail"
                    required
                    name="emailid"
                    value="${user.emailid }"
                  />
                </div>
                <div class="mb-4">
                  <input
                    type="number"
                    placeholder="Enter Mobile No. *"
                    class="form-control py-2"
                    id="exampleInputMobile"
                    required
                    name="mobileno"
                    value="${user.mobileno }"
                  />
                </div>
              
            </div>
            <div class=" col-md-6 col-sm-12">
              
                <div class="mb-4">
                  <input
                    type="text"
                    placeholder="Enter Name *"
                    class="form-control py-2"
                    id="exampleInputName"
                    required
                    name="name"
                    value="${user.name }"
                  />
                </div>
                <div class="mb-4">
                  <input
                    type="text"
                    placeholder="Enter Address *"
                    class="form-control py-2"
                    id="exampleInputAddress"
                    required
                    name="address"
                    value="${user.address }"
                  />
                </div>
                <div class="mb-4">
                  <input
                    type="text"
                    placeholder="Enter City *"
                    class="form-control py-2"
                    id="exampleInputCity"
                    required
                    name="city"
                    value="${user.city }"
                  />
                </div>
                <div class="mb-4">
                  <input
                    type="text"
                    placeholder="Enter State *"
                    class="form-control py-2"
                    id="exampleInputState"
                    required
                    name="state"
                    value="${user.state }"
                  />
                </div>
                <div class="mb-4">
                  <input
                    type="number"
                    placeholder="Enter Pincode *"
                    class="form-control py-2"
                    id="exampleInputPincode"
                    required
                    name="pincode"
                    value="${user.pincode }"
                  />
                </div>
            </div>
            </div>
            <div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Register" />
			</div>
        
          </form>
      </div>
    </div>
		</c:when>
		<c:when test="${mode=='ALL_USERS' }">
			<div class="container text-center" id="tasksDiv">
				<h3>All Users</h3>
				<hr>
				<div class="table-responsive">
					<table class="table table-striped table-bordered">
						<thead>
							<tr>
								<th>Id</th>
								<th>UserName</th>
								<th>First Name</th>
								<th>LastName</th>
								<th>Age</th>
								<th>Delete</th>
								<th>Edit</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="user" items="${users }">
								<tr>
									<td>${user.id}</td>
									<td>${user.username}</td>
									<td>${user.firstname}</td>
									<td>${user.lastname}</td>
									<td>${user.age}</td>
									<td><a href="/delete-user?id=${user.id }"><span
											class="glyphicon glyphicon-trash"></span></a></td>
									<td><a href="/edit-user?id=${user.id }"><span
											class="glyphicon glyphicon-pencil"></span></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</c:when>

		

		<c:when test="${mode=='MODE_LOGIN' }">
			<div class="background-image"></div>
      <div class="p-4 login-form">
        <div class="row">
          <div class="col-md-6 col-sm-12 loginform-desc">
             
            <i class="fa-solid fa-square-h h3"></i>
            <h3 class=" d-inline-block"> <b>Hotel Reservation</b></h3>
            <h5 class="my-md-4">Join Us Now !!!</h5>
            <i class="fa-solid fa-hand-holding-dollar"></i>
            <span><b>10% off</b> on first  booking</span> <br>
            <i class="fa-solid fa-gift"></i>
            <span>Get <b>extra reward</b>- book from our website</span><br>
            
            <i class="fa-sharp fa-solid fa-hourglass-half me-2"></i>
            <span class="ms-1"><b>Limited offers</b> , Hurry up</span>
            <br>
            <h6 class="text-center pt-md-5">Not a Member ?</h6>
            <a class="text-decoration-none p-1 px-4" href="/register">Register Now</a>
          </div>
          <div class="col-md-6 col-sm-12 text-center">
            <form class="p-md-5" method="POST" action="/login-user">
              <div class="d-flex justify-content-center mb-4">
                <div class="px-3">
                  <input class="rdo-btn"
                    type="radio"
                    id="admin"
                    name="name"
                    value="Admin"
                  />
                  <label for="admin">Admin</label>
                </div>
                <div class="px-3">
                  <input class="rdo-btn"
                    type="radio"
                    id="user"
                    name="name"
                    value="User"
                  />
                  <label for="user">User</label><br />
                </div>
              </div>

              <div class="mb-4">
                <input
                  type="text"
                  placeholder="Enter User Name *"
                  class="form-control py-2"
                  id="exampleInputName"
                  name="username"
                  required
                />
              </div>
              <div class="mb-4">
                <input
                  type="password"
                  placeholder="Enter Password *"
                  class="form-control py-2"
                  id="exampleInputpassword"
                  name="password"
                  required
                />
              </div>
			<div class="form-group ">
				<input type="submit" class="btn btn-primary" value="Login" />
			</div>
			
			<c:if test="${not empty error }">
				<div class= "alert alert-danger">
					<c:out value="${error }"></c:out>
					</div>
			</c:if>
					
             
            </form>
          </div>
        
        </div>
      </div>

		</c:when>
			<c:when test="${mode=='MODE_ROOM_WELCOME' }">
				<c:forEach var="r" items="${room }">
				<div class="container">
			        <div class="row room mt-4">
			          <div class="col-md-4">
			   			<c:choose>
							<c:when test="${r.category.id == 1}">
			            		<img src="./images/room1.jpg" alt="">
			            	</c:when>
			            	<c:when test="${r.category.id == 2}">
			            		<img src="./images/room2.jpg" alt="">
			            	</c:when>
			            	<c:when test="${r.category.id == 3}">
			            		<img src="./images/room3.jpg" alt="">
			            	</c:when>
			            </c:choose>
			          </div>
			          <div class="col-md-8">
			            <h4>${r.category.name}</h4>
			            <p class="text-muted">${r.details }</p>
			             <ul class="text-muted">
			                <li>High-speed internet access</li>
			                <li>Luxury bathrooms</li>
			                <li>40 inch TV</li>
			             </ul><br>
			             <div class="d-flex justify-content-between">
			              <h6>Price : Rs.${r.charges}/-</h6>
			             <a class="text-decoration-none" href="/login"><button class="form-btn " type="button">Please login to booking</button></a>
			             </div>
			             
			          </div>
			        </div>
			      </div>
			      </c:forEach>
			</c:when>
	</c:choose>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS 
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>-->
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