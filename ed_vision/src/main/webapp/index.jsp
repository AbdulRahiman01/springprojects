<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>

<style type="text/css">
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f6f9;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Container for Buttons */
div.button-container {
    text-align: center;
}

/* Button Styles */
button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 14px 28px;
    font-size: 18px;
    cursor: pointer;
    border-radius: 8px;
    transition: background-color 0.3s, transform 0.2s ease;
    margin: 10px;
}

button:hover {
    background-color: #45a049; /* Slightly darker green */
    transform: scale(1.05); /* Hover effect: makes the button slightly larger */
}

button:focus {
    outline: none;
}

/* Button - Secondary */
a button:nth-child(2) {
    background-color: #2196F3; /* Blue */
}

a button:nth-child(2):hover {
    background-color: #0b7dda; /* Slightly darker blue */
}

/* Title Styling */
h1 {
    color: #333;
    font-size: 28px;
    margin-bottom: 20px;
    text-align: center;
}

/* For the layout */
html, body {
    font-size: 16px;
    color: #333;
}
</style>
</head>
<body>
		<div class="button-container">
			<a href="savepage"><button>Save Education</button></a>
			<a href="alledu"><button>View All Education</button></a>
		</div>
</body>
</html>