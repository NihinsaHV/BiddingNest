<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

  <style>
        body{
            background-image: url('images/reg2.jpg') ;
        }
        .form2 {
    width: 300px;
    margin: 0 auto;
    text-align: center;
}

.candi {
    width: 100%;
    padding: 10px;
    margin: 5px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

.enter {
    background-color: #ff5733;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-size: 18px;
}

.enter:hover {
    background-color: #e5472c;
}

#but {
    margin-top: 20px;
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


<form action ="delete" method="POST" >
            <div class="form2" >
            <center>
            <h1>Customer Account Delete</h1>
                <input class = "candi" type="text" placeholder ="ID" name="cusid" value="<%=id%>" readonly><br><br><br>
                <input class = "candi" type="text" placeholder =" name" name="name" value="<%=name%>" readonly><br><br><br>
                <input class = "candi" type="text" placeholder ="email" name="email" value="<%=email%>" readonly><br><br><br>
                <input class = "candi" type="text" placeholder =" Phone number" name="phone" value="<%=phone%>" readonly><br><br><br>
                <input class = "candi" type="text" placeholder =" User name" name="uname" value="<%=uname%>" readonly><br><br><br>
              </center> 
            </div>
       <center> <input type="submit" class="enter"  value="Delete my data" name="submit" id="but" ></center><br><br>
       </form>
</body>
</html>