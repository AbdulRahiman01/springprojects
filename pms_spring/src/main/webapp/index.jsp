<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Information</title>

<style type="text/css">
	        *{
            padding: o;
            margin: 0;
        }
        body{
            box-sizing: border-box;
            min-height: 100vh;
            width: 100%;
        }
        .header{
            height: 100vh;
            width: 100%;
            background-image: url("https://cdn.pixabay.com/photo/2019/04/26/13/28/ornaments-4157521_1280.jpg");
            background-repeat: no-repeat;
            background-size: cover;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container{
            height: 45vh;
            width: 33%;
            background-color: rgba(255, 255, 255, 0.613);
            border-radius: 45px;
            box-shadow: 0 0 10px black inset;
        }
        .container h3{
            padding: 20px;
            text-align: center;
            font-size: 2rem;
            background-color: teal;
            border-radius: 25px;
            color: #fff;
            box-shadow: 0 0 10px black;
        }
        .container .links{
            height: 60%;
            width: 100%;
            padding: 20px;
        }
        .container button{
            height: 55px;
            width: 90%;
            margin: 22px 0;
            border-radius: 20px;
            outline: none;
            cursor: pointer;
            background-color: teal;
            color: #fff;
            border: none;
            font-size: large;
        }
        .container button:hover{
            background-color: beige;
            color: black;
        }
</style>
</head>
<body>
	  <div class="header">
                <div class="container">
                    <h3>Products Available On Store</h3>
                    <div class="links">
                        <a href="addproduct.jsp"><button>Add Product</button></a>
                        <a href="viewproduct"><button>View All Products</button></a>
                    </div>
                </div>
       </div>
</body>
</html>