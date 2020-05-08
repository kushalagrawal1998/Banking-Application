<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.2/css/bootstrap.min.css" integrity="sha384-y3tfxAZXuh4HwSYylfB+J125MxIs6mR5FOHamPBG064zB+AFeWH94NdvaCBm8qnd" crossorigin="anonymous">
      
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<title>Create new account</title>

<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.account{
	margin-top: 30px;
}
.required:after {
    content: " *";
    color: red;
}
</style>

</head>
<body>
	<div class="row">
		
	</div>
	<div class="container-fullwidth">
		<div class="row">
			<div class="account col-md-6 col-md-offset-3">
				<h1 class="well text-center">Create New Account</h1>
				<div class="col-lg-12 well">
					<div class="row">
						<form:form action="saveCustomer" modelAttribute = "customer" method="post">
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-6 form-group">
										<label>name</label> <input path = "firstName" type="text"
											placeholder="Enter City Name Here.." class="form-control"
											name="firstName">
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">Last Name</label> <input path = "lastName" type="text"
											placeholder="Enter Last Name Here.." class="form-control"
											name="lastName" required>
									</div>
								</div>
								<div class="form-group">
									<label class="required">Address</label>
									<textarea path = "address" placeholder="Enter Address Here.." rows="3"
										class="form-control" name="address" required></textarea>
								</div>
								<div class="row">
									<div class="col-sm-4 form-group">
										<label>City</label> <input path = "city" type="text"
											placeholder="Enter City Name Here.." class="form-control"
											name="city">
									</div>
									
									<div class="col-sm-4 form-group">
										<label>Zip</label> <form:input path = "Zip" type="text"
											placeholder="Enter Zip Code Here.." class="form-control"
											name="zip"/>
									</div>
								</div>
								<div class="form-group">
									<label class="required">User Name</label> <input path = "username" type="text"
										placeholder="Enter User Name Here.." class="form-control"
										name="username" required>
								</div>
								<div class="row">
									<div class="col-sm-6 form-group">
										<label class="required">Password</label> <input path = "password"
											type="password" required placeholder="Enter Password Here.." min="5"
											class="form-control" name="password" id="password">
									</div>
									
								</div>
								<div class="form-group">
									<label>contact number</label> <form:input path = "phone_number" type="text"
											placeholder="call kare" class="form-control"
											name="phone_number"/>
								</div>
								<div class="form-group">
									<label class="required">Email Address</label> <input path = "email"
										type="text" placeholder="Enter Email Address Here.."
										class="form-control" name="email" required>
								</div>
									
								</div>
								<div class="form-group">
									<span class="text-muted"><em><span
											style="color: red; font-size: 14px">*</span> Indicates
											required field</em> </span>
								</div>
								
								<input type="submit" class="btn btn-lg btn-info">
								</input>
							</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer start here -->
		<div class="row" style="margin-top: 50px;">
			
		</div>
	</div>
</body>
</html>