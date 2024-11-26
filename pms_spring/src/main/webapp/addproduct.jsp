<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Products Details</title>

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
        .container{
            height: 100vh;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container form{
            height: 60vh;
            width: 35%;
            background-color:rgba(0, 0, 0, 0.514);
            border-radius: 0px 60px 0px 60px;
        }
        .container h1{
            text-align: center;
            font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size: 1.8rem;
            color: #ff22e6;
            margin-top: 16px;
        }
        .container form input{
            height: 45px;
            width: 80%;
            padding-left: 18px;
            display: block;
            margin: 15px auto ;
            border: none;
            outline: none;
            border-radius: 25px;
            font-size: 1.2rem;
        }
        .container button{
            display: block;
            margin: 20px auto;
            height: 45px;
            width: 180px;
            border: none;
            background: #ff22e6;
            color: #fff;
            font-size: 1.4rem;
            border-radius: 0px 25px 0px 25px;
            cursor: pointer;
        }
        .container a{
        text-decoration: none;
        }
</style>
</head>
<body>
		 <div class="container">

        <form action="addproduct">
                     <h1>Fill Product Details</h1>
            <input type="text" placeholder="Enter Product Name" name="name">
            <input type="text" placeholder="Enter Product Price" name="price">
            <input type="text" placeholder="Enter Product Rating" name="rating">
            <input type="text" placeholder="Enter Product Mf Year" name="mfyear">
            <input type="text" placeholder="Enter Product Brand" name="brand">

            <button type="submit">Submit To Add</button>
        
        </form>
    </div>
</body>
</html>