<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
function myFunction() {
   	
       alert("request submitted successfully");
     }
    
</script>
    <link rel="stylesheet" type="text/css"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Upload documents for verification</title>

</head>
<body>
    <div align="center">
        <h1>Upload document for verification</h1>
        <form method="post" action="doUpload" class = "md-form" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Pick file #1:</td>
                    <td><input type="file" name="fileUpload" size="500" class="file-path validate" /></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Upload" class="btn-primary btn-sm float-left" onClick = "myFunction()" /></td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>