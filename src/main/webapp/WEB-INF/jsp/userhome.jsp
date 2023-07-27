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
                <a class="nav-link active" aria-current="page" href="/userhome">Welcome ${username}</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                  Rooms
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                	<c:forEach var="cat" items="${category }">
                		 <li><a class="dropdown-item" href="/room-user?id=${cat.id }">${cat.name }</a></li>
                	</c:forEach>
                </ul>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="/logout">Logout</a>
              </li>
              
            </ul>
           
          </div>
        </div>
      </nav>

      
      
      <c:choose>
		<c:when test="${mode=='MODE_USER' }">
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
		
		<c:when test="${mode=='MODE_ROOM_USER' }">
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
			             <a class="text-decoration-none" href="/roombook?id=${r.id}"><button class="form-btn " type="button">Book</button></a>
			             </div>
			             
			          </div>
			        </div>
			      </div>
			      </c:forEach>
			</c:when>
			
			<c:when test="${mode=='MODE_ROOM_BOOK' }">
			<div class="container">
        <div class="booking-form my-4 p-4">
          <h4 class="text-center mb-3">Fill the form to complete Booking</h4>
          <form method="POST" action="roombook">
          	<input type="hidden" name="id" value="${room.id}" />
            <div class="mb-3 d-flex justify-content-between">
              <label>Name: </label>
              <input type="text"  class="form-control" id="exampleInputName" value="${user.username}" disabled>
            </div>
            <div class="mb-3 d-flex justify-content-between">
              <label>Email Id: </label>
              <input type="email"  class="form-control" id="exampleInputEmail" value="${user.emailid}" disabled>
            </div>
            <div class="mb-3 d-flex justify-content-between">
              <label>Mobile No: </label>
              <input type="number"  class="form-control" id="exampleInputMobile" value="${user.mobileno}" disabled>
            </div>

            <div class="mb-3 d-flex justify-content-between book-date-picker">
              <div class="d-flex justify-content-between">
                <label class="me-4">Check-In: </label>
                <input type="date" id="checkin" required name="checkin" class="form-control ms-2" min="${mindate}">  
              </div>
              <div class="d-flex justify-content-between">
                <label class="me-5">Check-Out:</label>
                <input type="date" id="checkout" required name="checkout" class="form-control" onchange="handler()">  
              </div>
            </div>

            <div class="mb-3 d-flex justify-content-between">
              <div class="d-flex justify-content-between">
                <label class="me-5">Adults: </label>
                <select class="form-control ms-3" required>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                </select>
              </div>
              <div class="d-flex justify-content-between">
                <label class="me-5">Children: </label>
                <select class="form-control ms-3" required>
                  <option value="1">1</option>
                  <option value="2">2</option>
                  <option value="4">4</option>
                  <option value="3">3</option>
                </select>
              </div>
            </div>
            <div class="mb-3 d-flex justify-content-between">
              <label>Total Amount: </label>
              <input type="text" id="charges" name="charges" readonly value="${room.charges}" class="form-control" >
            </div>
            <div class="payment text-center">
              <h5>Payment Method</h5>
              <div class="d-flex justify-content-center mt-3 mb-4">
                <div class="px-3 d-flex justify-content-between">
                  <input class="rdo-btn2"
                    type="radio"
                    id="admin"
                    name="user-login"
                    value="Admin"
                    required
                  />
                  <img src="./images/payment-cards.png" width="200" height="30px" alt="">
                </div>
                
              </div>
            </div>
            <div class="mb-3 d-flex justify-content-between">
              <label>Name On Card: </label>
              <input type="text" name="cardName" class="form-control" id="exampleInputCardName" required>
            </div>
            <div class="mb-3 d-flex justify-content-between">
              <label>Card Number: </label>
              <input type="number" name="cardNumber" class="form-control" id="exampleInputCardNumber" required>
            </div>
            <div class="mb-3 d-flex justify-content-between">
              <label>MM/YY: </label>
              <input type="month" name="cardExpiry" class="form-control" id="exampleInputMMYY" required>
            </div>
            <div class="form-check">
              <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault" required>
              <label class="form-check-label" for="flexCheckDefault">
                By completing this reservation you are accepting our <span>Terms</span> & <span>Conditions</span>
              </label>
            </div>
            <button type="submit" class="form-btn my-2">Book Now</button>
          </form>
        </div>
     </div>
			</c:when>
			
			<c:when test="${mode=='MODE_ADMIN_BOOK_SUCCESS' }">
				<div class="alert alert-primary" role="alert">
				  <h1>Congratulation !!!</h1>
				  <h3>Booking Successfully Done</h3>
				</div>
			</c:when>
			
		</c:choose>
      
      
      
      
      
    <!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS 
	<script src="static/js/jquery-1.11.1.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>-->
	 <script th:inline="javascript">
	 function handler(){
	 	const date1 = document.getElementById("checkin").value;
		const date2 = document.getElementById("checkout").value;
		const diffTime = Math.abs(new Date(date2) - new Date(date1));
		const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24)); 
		//alert("date1 = "+date1+" date2="+date2+" diff = "+diffDays)	
		
		const charges = document.getElementById("charges").value;
		const newamount = diffDays * charges
		document.getElementById("charges").value = newamount
	 }
                window.onload = function() {
					//alert("hi");
					

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