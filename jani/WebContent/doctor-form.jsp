<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Doctor details</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style>
body{
background-image: url(back.jpg);
            background-size: cover;
            margin: 0px;
            padding: 0px;
            
            }

</style>
	
	
	
   <script>  
function validate()  
{  
var email=document.myform.email.value; 
var a1=document.myform.a1.value;   
var atposition=email.indexOf("@");  
var dotposition=email.lastIndexOf(".");  

if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  }
    
if (isNaN(a1)){  
  document.getElementById("numloc").innerHTML="Enter Numeric value only";  
  return false;  
}else{  
  return true;  
  }  
}


  
</script>  

</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: green">
		<div>
				<a href="#" class="navbar-brand">Doctor Information  </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Admin</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<img src="back2.jpg"/>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post"name="myform"onsubmit=" validate();" >
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post"name="myform"onsubmit=" validate();" >
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit Doctor
            		</c:if>
						<c:if test="${user == null}">
            			Add New Doctor
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Full Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required">
				</fieldset>
				<fieldset class="form-group">
					<label>Department Name</label> <input type="text"
						value="<c:out value='${user.dn}' />" class="form-control"
						name="dn" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Doctor Email</label> <input type="text"
						value="<c:out value='${user.email}' />" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Phone Number</label> <input type="text"placeholder="071-xxxxxxxx"
						value="<c:out value='${user.a1}' />" class="form-control"
						name="a1">
				</fieldset>
				<fieldset class="form-group">
					<label>Address</label> <input type="text"
						value="<c:out value='${user.a2}' />" class="form-control"
						name="a2">
				</fieldset>
				<fieldset class="form-group">
					<label>National ID Number</label> <input type="text"placeholder="xxxxxxxxxV"
						value="<c:out value='${user.a3}' />" class="form-control"
						name="a3">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
