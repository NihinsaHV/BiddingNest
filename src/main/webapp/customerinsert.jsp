<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" type="text/css" href="register.css">
<script src="JavaScript.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
        body{
            background-image: url('images/reg2.jpg') ;
        }
        .form2 {
  width: 400px;
  margin: 0 auto;
  padding: 20px;
  border: 1px solid #ccc;
  background-color: #f9f9f9;
  border-radius: 5px;
}

/* Style the form title */
.form2 h1 {
  text-align: center;
  font-size: 24px;
  margin-bottom: 20px;
}

/* Style the form labels and input fields */
.form {
  font-weight: bold;
}

.form3 {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
}

/* Style the checkbox and terms label */
.checkbox {
  margin: 10px 0;
}

/* Style the submit button */
#but {
  width: 100%;
  padding: 10px;
  background-color: #007bff;
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* Style the submit button on hover */
#but:hover {
  background-color: #0056b3;
}
    </style>
</head>
<body>
<br><br>
<br><br><br>
   <form action ="insert" method ="post" onsubmit= "return checkPassword()" >
   <div class="form2" >
	<h1> <center> Create Your Account </center> </h1>
	<center>
    <label class="form">  Name  </label><br>
    <input class ="form3" type="text" name="name" required><br>

    <label class="form"> Email </label><br>
    <input class ="form3" type="text" name="email" pattern="[a-z0-9._]+@[a-z0-9._]+\.[a-z]{2,3}" required><br>

    <lable class ="form"> Phone Number </lable><br>
    <input class ="form3" type="text" name="phone" required><br>
    
    <lable class ="form"> User Name </lable><br>
   <input class ="form3" type="text" name="uid" required><br>

    <lable class ="form"> password </lable><br>
    <input class ="form3" type="password"  id="pwd" name="pwd" required><br>
    
    <lable class ="form">Re enter Password</lable><br>
	<input type="password" id="confirmpwd" name="repassword" required><br>
    
    <input type="checkbox" class="checkbox" id="checkbox1"  name="accept" > Accept privacy policy and terms<br><br>
    <br>
    <br>
    <input type = "Submit"  name="Submit"  value="Create Customer" id="but">
	</center>
	<br>
	<br>
	</div>
   </form>

</body>
</html>