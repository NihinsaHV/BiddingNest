<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>

  <style>
        body{
            background-image: url('images/images.jpeg') ;
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
        }
        form {
        
  border: 1px solid #ccc; 
  border-radius: 10px; 
  padding: 20px;
  text-align: center;
}
        .info2 {
  text-align: center;
  padding: 5px;
}

/* Style for input fields */
.candi {
  width: 40%;
  padding: 5px;
  margin: 5px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
}

/* Style for the submit button */
.enter {
  width: 40%;
  padding: 10px;
  background-color: #007BFF; /* Blue color, you can change this */
  color: #fff;
  border: none;
  border-radius: 5px;
  cursor: pointer;
}

/* Hover effect for the submit button */
.enter:hover {
  background-color: #0056b3; /* Darker shade of blue */
}

/* Optional: Add some spacing between the form elements */
.info2 input {
  margin-bottom: 10px;
}

/* Optional: Style for the form labels (if you have any) */
.info2 label {
  font-weight: bold;
  margin-right: 10px;
}
    </style>
</head>
<body>

<%
  String id=request.getParameter("id");
  String name=request.getParameter("name");
  String email=request.getParameter("email");
  String phone=request.getParameter("phone");
  String uname=request.getParameter("uname");
  String password=request.getParameter("password");
%>
 <form action ="update" method="POST" >
            <div class="info2">
                <input class = "candi" type="text" placeholder ="ID" name="cusid" value="<%=id%>" readonly><br><br><br>
                <input class = "candi" type="text" placeholder =" name" name="name" value="<%=name%>"><br><br><br>
                <input class = "candi" type="text" placeholder ="email" name="email" value="<%=email%>"><br><br><br>
                <input class = "candi" type="text" placeholder =" Phone number" name="phone" value="<%=phone%>"><br><br><br>
                <input class = "candi" type="text" placeholder =" User name" name="uname" value="<%=uname%>"><br><br><br>
                <input class = "candi" type="password" placeholder ="Password" name="pwd" value="<%=password%>"><br><br><br>
            
            </div>
        <input type="submit" class="enter"  value="Update my data" name="submit" ><br><br>
       

</form>

</body>
</html>