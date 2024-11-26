<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Page</title>

<style type="text/css">
body {
    font-family: 'Arial', sans-serif;
    background-color: #f9f9f9; /* Light gray background */
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Form Container */
div {
    background-color: white;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px; /* Limit the width of the form */
    text-align: center;
}

/* Input Fields */
input[type="text"] {
    width: 100%;
    padding: 12px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 6px;
    font-size: 16px;
    color: #333;
    background-color: #f7f7f7;
    transition: border-color 0.3s ease, box-shadow 0.3s ease;
}

/* Input Focus Effects */
input[type="text"]:focus {
    border-color: #1E90FF; /* DodgerBlue */
    box-shadow: 0 0 5px rgba(30, 144, 255, 0.5);
    outline: none;
}

/* Button Styles */
button {
    background-color: #1E90FF; /* DodgerBlue */
    border: none;
    color: white;
    padding: 12px 20px;
    font-size: 18px;
    cursor: pointer;
    border-radius: 6px;
    transition: background-color 0.3s, transform 0.2s ease;
    margin-top: 10px;
    width: 100%; /* Button takes full width of the form */
}</style>
</head>
<body>
	
		<form action="updatedetails">
			<input type="text" name="id" placeholder="Enter Id" value="${ed.getId()}">
			<input type="text" name="uname" placeholder="Enter University Name" value="${ed.getUname()}">
			<input type="text" name="yrofp" placeholder="Enter Yr Of PassOut" value="${ed.getYop()}">
			<input type="text" name="cname" placeholder="Enter College Name" value="${ed.getCname()}"> 
			<input type="text" name="cgpa" placeholder="Enter CGPA" value="${ed.getCgpa()}"> 
			
			<button type="submit">Update</button>
		</form>
</body>
</html>