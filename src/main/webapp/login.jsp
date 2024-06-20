<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Login</title>
	<style type="text/css">
		
    body {
        font-family: 'Hind SemiBold', sans-serif;
        background-color: #fff;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
        padding: 0;
        background-image: url("background.png");
        background-size:cover;
    }

    h1 {
        text-align: center;
        margin-top: 20px;
        color: #333;
    }

    form {
        background-color: #BCD4D4;
        padding: 30px;
        border-radius: 5px;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        max-width: 400px;
        width: 100%;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: 1px solid #ddd;
        border-radius: 3px;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: #fff;
        border: none;
        border-radius: 3px;
        padding: 10px 20px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }
    
    	<h1>Login Page</h1>

    <!-- Adding the login-container div here -->
    <div class="login-container">
        <form action="login" method="post">
            Supplier ID <input type="text" name="supplierid" placeholder="Enter supplier id"><br>
            Supplier Name <input type="text" name="suppliername" placeholder="Enter supplier Name"><br>
            <input type="submit" name="submit" value="login">
        </form>
    </div>

</style>
		
	
	
</head>
<body>

	<h1>Login Page</h1>
	<form action="login" method="post">
		Supplier ID <input type="text" name="supplierid" placeholder="Enter supplier id"><br>
		Supplier Name <input type="text" name="suppliername" placeholder="Enter supplier Name"><br>
		<input type="submit" name="submit" value="login">
	</form>

</body>
</html>