<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Products Page</title>
<style type="text/css">
	    *{
            margin: 0;
            padding: 0;
        }
        body{
            min-height: 100vh;
            width: 100%;
            background: linear-gradient(#642bff,#ff22e6);
        }
        .product-container{
            min-height: 100vh;
            width: 100%;
            display: grid;
            grid-template-columns: auto auto;
        }
        .product-container .card{
            height: 35vh;
            width: 90%;
            background-color: rgba(255, 255, 255, 0.5);
            border-radius: 35px;
            margin: 25px;
            display: flex;
        }
        .product-container .card .img-con{
            height: 90%;
            width: 50%;
        }
        .product-container .card .img-con img{
            height: 100%;
            width: 90%;
            display: block;
            margin: auto;
            padding-top: 14px;
            border-radius: 20px;
        }
        .product-container .card .content{
            height: 100%;
            width: 50%;
            display: flex;
            flex-direction: column;
            justify-content: space-evenly;
        }
        .product-container .card .content button{
            height: 30px;
            width: 120px;
            border: none;
            outline: none;
            border-radius: 20px;
            cursor: pointer;
        }
        .product-container .card .content button:nth-child(odd){
            background-color: red;
            color: beige;
            font-size: 1rem;
            cursor:pointer;
        }
</style>
</head>
<body>
		<div class="product-container">
      		<c:forEach var="p" items="${p}">
      		<div class="card">
		            <div class="img-con">
		                <img src="https://cdn.pixabay.com/photo/2021/10/08/18/55/website-6692147_1280.png" alt="">
		            </div>
            <div class="content">
                <h1>${p.getBrand() }</h1>
                <h3>${p.getPrice() }</h3>
                <h3>${p.getRating() }</h3>
                <h4>${p.getPrice() }</h4>
                <h3>${p.getMfYear() }</h3>

                <button>Update</button>
                <a href="delete?id=${p.getId()}"><button>Delete</button></a>
            </div>
            </div>
            </c:forEach>
        </div>
      		
  
</body>
</html>