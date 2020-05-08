<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
 function myFunction() {
    	
        alert("amount deposited");
      }
      </script>
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


      <%
	response.setHeader("Cache-Control", "no-cache , no-store, must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	
	if(session.getAttribute("session")==null){
	response.sendRedirect("/konohaibank/log/login");
	}
	
	

%>

</head>
<body>
	<div class="row">
		
	</div>
	<div class="container-fullwidth">
		<div class="row">
			<div class="account col-md-6 col-md-offset-3">
				<h1 class="well text-center">Deposit amount</h1>
				<div class="col-lg-12 well">
				
					<div class="row">
						<form:form action="customerdeposit" modelAttribute = "customer" method="post">
							<div class="col-sm-12">
								<div class="row">
									<div class="col-sm-6 form-group">
										<label>acount_no</label> <input path = "account_no" type="text"
											placeholder="Enter account number in which you want to deposit" class="form-control"
											name="account_no">
									</div>
									<div class="col-sm-6 form-group">
										<label class="required">amount</label> <input path = "amount" type="text"
											placeholder="Enter amount here" class="form-control"
											name="amount" required>
									</div>
								</div>
								
								<p>welcome: ${id}</p>
								
								
								
								<input type="submit" class="btn btn-lg btn-info" onclick = "myFunction();">
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