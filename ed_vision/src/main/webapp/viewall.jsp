<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Page</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f7f9fc; /* Light background for the whole page */
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            height: 100vh;
        }

        /* Container for the table */
        div {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1); /* Soft shadow for depth */
            width: 90%;
            max-width: 1000px; /* Limit the table width */
        }

        /* Table Styles */
        table {
            width: 100%;
            border-collapse: collapse; /* Ensures no double borders between cells */
            margin-top: 20px;
            font-size: 16px;
        }

        /* Table Header */
        th {
            background-color: #1E90FF; /* DodgerBlue background for header */
            color: white;
            padding: 25px 0px ;
            text-align: left;
            font-weight: bold;
            border-radius: 6px;
        }

        /* Table Row Styling */
        tr:nth-child(even) {
            background-color: #f4f6f9; /* Light gray background for even rows */
        }

        tr:nth-child(odd) {
            background-color: #ffffff; /* White background for odd rows */
        }

        /* Table Data Cells */
        td, th {
            padding: 10px;
       		text-align:center;
            border-bottom: 1px solid #ddd; /* Light border between rows */
        }

        /* Hover Effect on Rows */
        tr:hover {
            background-color: #e0f2ff; /* Light blue hover effect */
            cursor: pointer;
        }

        /* Title Styling */
        h1 {
            color: #333;
            font-size: 28px;
            text-align: center;
            margin-bottom: 20px;
        }

        /* Responsive Design for Mobile */
        @media screen and (max-width: 768px) {
            table {
                font-size: 14px; /* Smaller font size on smaller screens */
            }

            div {
                width: 95%; /* Make container width smaller on mobile */
                padding: 15px;
            }
        }
    </style>
</head>
<body>

    <div>
        <h1>View All University Data</h1>
        <table>
            <thead>
                <tr>
                    <th>University Name</th>
                    <th>College Name</th>
                    <th>CGPA</th>
                    <th>Year Of PassOut</th>
                    <th colspan="3">Action</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="el" items="${e}">
                    <tr>
                        <td>${el.getUname()}</td>
                        <td>${el.getCname()}</td>
                        <td>${el.getCgpa()}</td>
                        <td>${el.getYop()}</td>
                        <td><a href="update?id=${el.getId()}"><button>Update</button></a></td>
                        <td><a href="delete?id=${el.getId()}"><button>Delete</button></a></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</body>
</html>
