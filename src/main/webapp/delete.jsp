<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
		<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 40px;
        }
        
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 60%;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            padding: 20px;
        }

        td {
            padding: 10px;
            font-size: 16px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin: 0 auto;
            display: block;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
	
</head>
<body>

	<%
		String itemid = request.getParameter("itemid");
		String supplierid = request.getParameter("supplierid");
		String suppliername = request.getParameter("suppliername");
		String item_name = request.getParameter("item_name");
		String item_type = request.getParameter("item_type");
		String item_quantity = request.getParameter("item_quantity");
		String item_price = request.getParameter("item_price");
		String discount = request.getParameter("discount");
		String discription = request.getParameter("discription");
	%>

	<h1>Item Delete</h1>

	<form action="delete" method="post">
	<table>
		<tr>
			<td>Item ID</td>
			<td><input type="text" name="itemid" value="<%= itemid %>" readonly></td>
		</tr>
				<tr>
			<td>Item ID</td>
			<td><input type="text" name="supplierid" value="<%= supplierid %>" readonly></td>
		</tr>
				<tr>
			<td>Item ID</td>
			<td><input type="text" name="suppliername" value="<%= suppliername %>" readonly></td>
		</tr>
	
		<tr>
			<td>Item Name</td>
			<td><input type="text" name="item_name" value="<%= item_name %>" readonly></td>
		</tr>
		<tr>
		<td>Item Type</td>
		<td><input type="text" name="item_type" value="<%= item_type %>" readonly></td>
	</tr>
	<tr>
		<td>Item Quantity</td>
		<td><input type="text" name="item_quantity" value="<%= item_quantity %>" readonly></td>
	</tr>
	<tr>
		<td>Item Price</td>
		<td><input type="text" name="item_price" value="<%= item_price %>" readonly></td>
	</tr>
		<tr>
		<td>Discount</td>
		<td><input type="text" name="discount" value="<%= discount %>" readonly></td>
	</tr>
		
		<tr>
		<td>Disc</td>
		<td><input type="text" name="discription" value="<%= discription %>" readonly></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Delete My Account">
	</form>

</body>
</html>