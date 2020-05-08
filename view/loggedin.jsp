<!DOCTYPE html>

<html lang="en">
    
  <head>
      
    <meta charset="utf-8">
      
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
      
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
      
     
      
      <style>
      
          .jumbotron {
              
              background-image: url(${pageContext.request.contextPath}/resources/Wallpaper-Light-Green.jpg);
              text-align: center;
              margin-top: 50px;
          }
          
          #email {
              
              width: 300px;
              
          }
          
          #appSummary {
              
              text-align: center;
              margin-top:50px;
              margin-bottom: 50px;
              
          }
          
          .card-img-top {
              
              width: 100%;
              
          }
          
          #appStoreIcon {
              
              width: 200px;
              
          }
          
         .footer-distributed {
	background-color: #1F1F1F;
	box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12);
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 55px 50px;
	margin-top: 80px;
}



.footer-distributed .footer-left, .footer-distributed .footer-center,
	.footer-distributed .footer-right {
	display: inline-block;
	vertical-align: top;
}

/* Footer left */
.footer-distributed .footer-left {
	width: 30%;
}



.footer-distributed h3 span {
	color: #ffffff;
}

/* Footer links */
.footer-distributed .footer-links {
	color: #ffffff;
	margin: 20px 0 12px;
	padding: 0;
}

.footer-distributed .footer-links a {
	display: inline-block;
	line-height: 1.8;
	text-decoration: none;
	color: inherit;
}

.footer-distributed .footer-company-name {
	color: #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}

/* Footer Center */
.footer-distributed .footer-center {
	width: 45%;
}

.footer-distributed .footer-center i {
	background-color: #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}

.footer-distributed .footer-center i.fa-envelope {
	font-size: 17px;
	line-height: 38px;
}

.footer-distributed .footer-center p {
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin: 0;
}

.footer-distributed .footer-center p span {
	display: block;
	font-weight: normal;
	font-size: 14px;
	line-height: 2;
}

.footer-distributed .footer-center p a {
	color: #5383d3;
	text-decoration: none;;
}

/* Footer Right */
.footer-distributed .footer-right {
	width: 20%;
}

.footer-distributed .footer-company-about {
	line-height: 20px;
	color: #000000;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
        vertical-align: left;
        
}

.footer-distributed .footer-company-about span {
	display: block;
	color: #000000;
	font-size: 14px;
	font-weight: bold;
	margin-bottom: 20px;
        vertical-align: left;

       
}

.footer-distributed .footer-icons {
	margin-top: 25px;
}

.footer-distributed .footer-icons a {
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color: #33383b;
	border-radius: 2px;
	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;
	margin-right: 3px;
	margin-bottom: 5px;
}



/* If you don't want the footer to be responsive, remove these media queries */
@media ( max-width : 880px) {
	.footer-distributed {
		font: bold 14px sans-serif;
	}
	.footer-distributed .footer-left, .footer-distributed .footer-center,
		.footer-distributed .footer-right {
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}
	.footer-distributed .footer-center i {
		margin-left: 0;
	}
}
          

          
          body {
              
              position: relative;
              
          }
     
      
      </style>
       <script>
     function myFunction() {
    	var IsNull= '@Session["session"]'!= null;
    	if(IsNull == null){
        alert("please login first");
    	}
      }
      </script>
      
      <%
	response.setHeader("Cache-Control", "no-cache , no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	
	if(session.getAttribute("session")==null){
	response.sendRedirect("/solution-code-spring-mvc-CRUD-CRM-delete-customer/log/login");
	}
	
	

%>
      
  </head>
    
  <body data-spy="scroll" data-target="#navbar" data-offset="150">
      
        <nav class="navbar navbar-light bg-faded navbar-fixed-top" id="navbar">
          <a class="navbar-brand" href="#">MyApp</a>
          <ul class="nav navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#jumbotron">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#about">About</a>
            </li>
          </ul>
          <form class="form-inline pull-xs-right" action="${pageContext.request.contextPath}/signout/s" modelAttribute="login" method="get">
            <div>
            <p>welcome: ${customerID}</p>
            <p>your current blance : ${bal}</p>
            <button class="btn btn-success" type="submit">Logout</button> 
            </div>          
          </form>
        </nav>

        <div class="jumbotron" id="jumbotron">
          <h1 class="display-3">Konoha International Bank</h1>
          <p class="lead"><p class = "text-secondry">Trusted by lakhs of customers</p>
          <hr class="m-y-2">
          <p>Want to know more? Join our mailing list!</p>

        <form class="form-inline">
          <div class="form-group">
            <label class="sr-only" for="email">Email address</label>
            <div class="input-group">
              <div class="input-group-addon">@</div>
              <input type="email" class="form-control" id="email" placeholder="Your email">
            </div>
          </div>
          <button type="submit" class="btn btn-primary">Sign up</button>
        </form>
        </div>
      
      <div class="container">
      
        <div class="row" id="appSummary">
          
            <h1>We provide various services which include :</h1>
            
          
          </div>
          
      </div>
      
            <div class="container" id="about">
      <div class="card-deck-wrapper">
  <div class="card-deck">
    <div class="card">
      <img class="card-img-top" src= "${pageContext.request.contextPath}/resources/handshake_190617.jpg" alt="Card image cap">
      <div class="card-block">
        <h4 class="card-title"></i> Create account</h4>
        <p class="card-text">Start your journey with us with just few clicks.</p>
        <input type="button" value="Create account"
				   onclick="window.location.href='${pageContext.request.contextPath}/customer/showFormForAdd'; return false;"
				   class="btn btn-primary"
			/>
        
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="${pageContext.request.contextPath}/resources/1000x-1.jpg" alt="Card image cap">
      <div class="card-block">
        <h4 class="card-title"><i class="fa fa-bicycle"></i> Deposit amount</h4>
        <p class="card-text">Deposit amount and get intrest @10%/-.</p>
        <input type="button" value="Deposit money"
				   onclick=" myFunction(); window.location.href='${pageContext.request.contextPath}/customer/deposit'; return false;"
				   class="btn btn-primary"
			/>
        
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="${pageContext.request.contextPath}/resources/new-bank-note-rs-2000-770x433.jpg" alt="Card image cap">
      <div class="card-block">
        <h4 class="card-title"> Withdraw amount</h4>
        <p class="card-text">Withdraw amount at any moment.</p>
         <input type="button" value="withdraw amount"
				   onclick="myFunction();window.location.href='${pageContext.request.contextPath}/customer/withdraw'; return false;"
				   class="btn btn-primary"
			/>
       
      </div>
    </div>
  </div> 
 <br>

  <div class="card-deck">
    <div class="card">
      <img class="card-img-top" src="${pageContext.request.contextPath}/resources/maxresdefault.jpg" alt="Card image cap">
      <div class="card-block">
        <h4 class="card-title"> Transfer amount</h4>
        <p class="card-text">Transfer amount between accounts at any moment.</p>
        <input type="button" value="Transfer amount"
				   onclick= "myFunction();window.location.href='${pageContext.request.contextPath}/customer/transfer'; return false;"
				   class="btn btn-primary"
			/>
        
      </div>
    </div>
    <div class="card">
      <img class="card-img-top" src="${pageContext.request.contextPath}/resources/personal-loan.jpg" alt="Card image cap">
      <div class="card-block">
        <h4 class="card-title"> Apply for loan</h4>
        <p class="card-text">Need money ? Get loan within 24 hours of applying.</p>
        <input type="button" value="Transfer amount"
				   onclick= "myFunction();window.location.href='${pageContext.request.contextPath}/customer/file'; return false;"
				   class="btn btn-primary"/>
        
      </div>
    </div>
    
  </div> 


 </div>
 </div>      
     <footer class="footer-distributed">

	

	<div class="footer-center">

		<div>
			<i class="fa fa-map-marker"></i>
			<p>
				<span><b>Head office:</b>&nbsp;&nbsp;Faridabad, India</span>
			</p>
		</div>

		<div>
			<i class="fa fa-phone"></i>
			<p>
				<span>9582777977</span>
			</p>
		</div>

		<div>
			<i class="fa fa-envelope"></i>
			<p>
				<span>agrawal.kushal1998@gmail.com</span>
			</p>
		</div>

		<div>
			<i class="fa fa-mobile"></i>
			<p>
				<span>01293064264</span>
			</p>

		</div>

	</div>

	<div class="footer-right">

		<p class="footer-company-about">
			</br> </br> </br>
		<div class="row">
			<span class="hidden-xs"> <span><h3>Our Mission
						Statement:</span>
				</h3>
				<p></p>
				<h4>
					<font color="white">To deliver great personal service and
						the best financial products to our customers and the local
						communities we serve.
						</p>
		</div>
		</span>

		<div class="footer-icons">

			<a href="#" target="_blank"><i class="fa fa-facebook"></i></a> <a
				href="#" target="_blank"><i class="fa fa-twitter"></i></a> <a
				href="#" target="_blank"><i class="fa fa-instagram"></i></a> <a
				href="#" target="_blank"><i class="fa fa-pinterest-square"></i></a>
			<a href="#" target="_blank"><i class="fa fa-linkedin"></i></a> <a
				href="#" target="_blank"><i class="fa fa-youtube"></i> </a> </br> </br>
			</h4>
			</font>
			</li>
			</li>
			</li>
			</li>
			</li>
			</li>
			</li>
			</li>

			<div>
				<div>
					<div></div>

				</div>
</footer>
      
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/js/bootstrap.min.js" integrity="sha384-vZ2WRJMwsjRMW/8U7i6PWi6AlO1L79snBrmgiDpgIWJ82z8eA5lenwvxbMV1PAh7" crossorigin="anonymous"></script>
      
  </body>
    
</html>