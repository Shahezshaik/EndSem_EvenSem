<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<link rel="stylesheet" href="customerreg.css">
</head>
<body>
<%@include file="mainnavbar.jsp" %>
<h3 align="center">Student Registration Form</h3>
<div class="container">
<form method="post" action="insertcustomer">
<label>Enter Name</label>
<input type="text" class="form-control" name="cname" required />
<br/>
<label>Select Gender</label>
<input type="radio" name="cgender" class="form-check-input" value="Male" required />Male
<input type="radio" name="cgender" class="form-check-input" value="Female" required />Female
<input type="radio" name="cgender" class="form-check-input" value="Others" required />Others
<br/>
<label>Select Date Of Birth</label>
<input type="date" name="cdob" required />
<br/>
<label>Enter Email ID</label>
<input type="email" name="cemail" class="form-control" required />
<br/>
<label>Enter Password</label>
<input type="password" name="cpwd" class="form-control" required />
<br/>
<label>Enter Location</label>
<input type="text" name="clocation" class="form-control" required />
<br/>
<label>Enter Contact</label>
<input type="number" name="ccontact" class="form-control" required />
<br/>
<input type="submit" value="Register" class="btn btn-success"/>
<input type="reset" value="Clear" class="btn btn-success"/>
</form>
</div>
</body>
</html>