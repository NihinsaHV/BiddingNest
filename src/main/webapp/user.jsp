<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" type="text/css" href="user.css">
<meta charset="UTF-8">
<title>user</title>
<style >
 body{
            background-image: url(images/bc.jpg) ;
            background-size: cover;
            background-attachment: fixed;
            background-repeat: no-repeat;
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
      cursor: pointer;
      border-radius: 5px;
    }

    #but:hover {
      background-color: #2980b9;
    }
	</style>
	<link rel ="stylesheet" type="text/css" href="delete.css">
</head>
<body>

        <nav>

            <ul>

                <li><a href="#">HOME</a></li>

                <li>

                    <a href="#">ITEMS</a>

                </li>

                <li>

                    <a ></a>

                </li>

                <li CLASS="sign"><a CLASS="sign"href="#">SIGNIN</a></li>

                <li CLASS="sign"><a  CLASS="sign"href="#">SIGNUP</a></li>

            </ul>

        </nav>

    </div>

    

    <br>

    <br>

    <center><h1>Bidder profile</h1></center>

<div id="form-div">

  <form class="form" method="post">

 <c:forEach var ="cus" items="${cusDetails}">
 
 
  <c:set var="id" value="${cus.id}"/>
	<c:set var="name" value="${cus.name}"/>
	<c:set var="email" value="${cus.email}"/>
	<c:set var="phone" value="${cus.phone}"/>
	<c:set var="username" value="${cus.userName}"/>
	<c:set var="password" value="${cus.password}"/>
	<div id="container">

	<p class="name">

	   

       <center> <label>Bidder ID :</label><input type="text"  placeholder="${cus.id}" id="name" readonly/></center>

      </p>

      <p class="name">

     

       <center> <label>Bidder Name:</label> <input type="text"  placeholder="${cus.name}" id="name" readonly/></center>

      </p>

      <p class="name">

      

       <center><label>Bidder Email :</label> <input type="text"  placeholder="${cus.email}" id="name" readonly/></center>

      </p>

        <p class="name">

      

       <center><label>Bidder Phone :</label> <input type="text"  placeholder="${cus.phone}" id="name" readonly/></center>

      </p>
      
         <p class="name">

      

       <center><label>Bidder User Name:</label> <input type="text"  placeholder="${cus.userName}" id="name" readonly/></center>

      </p>
      
     
     

	

<br><br><br><br>

</c:forEach>

</form>

<br>
	
	

	
	<c:url value ="UpdateCustomer.jsp" var="cusUpdate">
	
	  <c:param name ="id" value = "${id}" />
	  <c:param name ="name" value = "${name}" />
	  <c:param name ="email" value = "${email}" />
	  <c:param name ="phone" value = "${phone}" />
	  <c:param name ="uname" value = "${username}" />
	  <c:param name ="password" value = "${password}" />
	</c:url>
	
	<a href ="${cusUpdate}">
	<center><input type ="button" name = "update"   id="but" value ="update my data"></center><br><br>
	</a>
	<br>
	
	<c:url value="deleteCustomer.jsp" var="cusdelete">
	<c:param name="id" value="${id}"></c:param>
	<c:param name="name" value="${name}"></c:param>
	<c:param name="email" value="${email}"></c:param>
	<c:param name="phone" value="${phhone}"></c:param>
	<c:param name="username" value="${username}"></c:param>
	<c:param name="password" value="${password}"></c:param>
	
	</c:url>
	<a href ="${cusdelete}">
	<center><input type ="button" name = "delete"  id="but" value ="Delete my Account"></center><br>
	</a>
	</body>
</html>