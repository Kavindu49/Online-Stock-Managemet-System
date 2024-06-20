<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
		
	<style type="text/css">
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 40px;
        }
        
        h1 {
            color: #333;
            text-align: center;
            margin-bottom: 40px;
        }

        table {
            width: 60%;
            margin: 0 auto;
            background-color: #ffffff;
            border-radius: 5px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
            padding: 30px;
        }

        td {
            padding: 12px;
            font-size: 16px;
        }

        input[type="text"] {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
            border-radius: 4px;
            border: 1px solid #ccc;
            transition: border-color 0.3s;
        }

        input[type="text"]:focus {
            border-color: #007BFF;
            outline: none;
        }

        input[type="submit"] {
            background-color: #007BFF;
            color: white;
            padding: 14px 25px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            margin: 0 auto;
            display: block;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #0056b3;
        }

        /* Overriding previous table styles */
        table, th, td {
            border: none;
        }

        td {
            vertical-align: middle;
        }
    </style>
	
</head>
<body>

	<%
		String itemid = request.getParameter("itemid");

		String supplierid = request.getParameter("supplierid");
		String suppliername = request.getParameter("suppliername");
		String item_name = request.getParameter("item_name");
		String  item_type = request.getParameter("item_type");
		String  item_quantity = request.getParameter("item_quantity");
		String  item_price = request.getParameter("item_price");
		String  discount = request.getParameter("discount");
		String  discription = request.getParameter("discription");
		
	%>
	
	
	<form action="update" method="post">
	<table>
		<tr>
			<td>Item ID</td>
			<td><input type="text" name="itemid" value="<%= itemid %>" readonly></td>
		</tr>
				<tr>
			<td>Supplier ID</td>
			<td><input type="text" name="supplierid" value="<%= supplierid %>" readonly></td>
		</tr>
				<tr>
			<td>Supplier Name</td>
			<td><input type="text" name="suppliername" value="<%= suppliername %>" readonly></td>
		</tr>

		<tr>
			<td>Item Name</td>
			<td><input type="text" name="item_name" value="<%= item_name %>"></td>
		</tr>
		<tr>
		<td>Item Type</td>
		<td><input type="text" name="item_type" value="<%= item_type %>"></td>
	</tr>
	<tr>
		<td>Item Quantity</td>
		<td><input type="text" name="item_quantity" value="<%= item_quantity %>"></td>
	</tr>
	<tr>
		<td>Item Price</td>
		<td><input type="text" name="item_price" value="<%= item_price %>"></td>
	</tr>
	<tr>
		<td>Discount</td>
		<td><input type="text" name="discount" value="<%= discount %>"></td>
	</tr>
		<tr>
		<td>Disc</td>
		<td><input type="text" name="discription" value="<%= discription %>"></td>
	</tr>		
	</table>
	<br>
	<input type="submit" name="submit" value="Update My Data">
	</form>

</body>
</html>