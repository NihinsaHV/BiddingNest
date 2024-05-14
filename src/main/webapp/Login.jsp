<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
  <style>
        body{
            background-image: url(images/istockphoto-1392612006-640x640.jpg) ;
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
        } 
        h1 {
      margin-top: 20px;
    }
   .form {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
    }

    .form2 {
      text-align: center;
      padding: 20px;
      background-color: #fff;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    form {
      margin: 0;
      
    }

    form input[type="text"],
    form input[type="password"] {
      width: 100%;
      padding: 10px;
      
      margin: 5px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }

    #but {
      background-color: #3498db;
      color: white;
      border: none;
      padding: 10px 20px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 10px 2px;
      cursor: pointer;
      border-radius: 5px;
    }

    #but:hover {
      background-color: #2980b9;
    }
    </style>
</head>
<body>

<br><br><br><br><br><br><br>
		
  <div class="form">
    
    <div class="form2" >
 <center><form action="log" method="post"><br><br>
 	<h1><center>Login<center></h1><br>
		User Name <input type="text" name="uname" placeholder="Enter your username" required><br><br><br><br><br>
		Password <input type="password" name="pwd" placeholder="Enter your password" required><br><br><br><br><br>
		<center><input type="submit" name="submit" value="Login" id="but"></center>
	</form>
	</center>
	</div>
  </div>

</body>
</html>