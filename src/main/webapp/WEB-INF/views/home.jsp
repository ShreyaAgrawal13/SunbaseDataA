<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Customer List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            font-size: 20px;
        }
        h2{
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            font-size: 20px;
        }
        table th,
        table td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        table th {
            background-color: #f2f2f2;
        }
        .button {
            display: inline-block;
            background-color: #4CAF50; /* Green */
            border: none;
            color: white;
            text-align: center;
            font-size: 20px;
            padding: 10px 24px;
            text-decoration: none;
            cursor: pointer;
            transition-duration: 0.4s;
            margin-left: 1050px;
            margin-top: 20px;

        }
    </style>
</head>
<body>

<h2>Customer List</h2>
<br>
<table>
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Street</th>
        <th>Address</th>
        <th>City</th>
        <th>State</th>
        <th>Email</th>
        <th>Phone</th>
        <th>Actions</th>
    </tr>
    <c:forEach items="${user}" var="f">
        <tr>
            <td>${f.firstName}</td>
            <td>${f.lastName}</td>
            <td>${f.street}</td>
            <td>${f.address}</td>
            <td>${f.city}</td>
            <td>${f.State}</td>
            <td>${f.email}</td>
            <td>${f.phone}</td>
            <td><a href="/delete/${f.id}" >Delete</a>
                    <p>  </p>       <a href="/edit/${f.id}" >Edit</a></td>
        </tr>
    </c:forEach>


</table>
    <a href="/newCustomer" class="button">Add new Customer</a>
</body>
</html>