<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input {
            width: 100%;
            padding: 8px;
            margin-bottom: 16px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<form action="/newCustomer" method="post">
    <h4>Add a new Customer</h4>
    <label for="firstName">First Name*</label>
    <input type="text" id="firstName" name="firstName" required>

    <label for="lastName">Last Name*</label>
    <input type="text" id="lastName" name="lastName" required>

    <label for="street">Street</label>
    <input type="text" id="street" name="street">

    <label for="address">Address</label>
    <input type="text" id="address" name="address">

    <label for="city">City</label>
    <input type="text" id="city" name="city">

    <label for="state">State</label>
    <input type="text" id="state" name="state">

    <label for="email">Email</label>
    <input type="email" id="email" name="email">

    <label for="phone">Phone</label>
    <input type="tel" id="phone" name="phone">

    <input type="submit" value="Submit">
</form>

</body>
</html>