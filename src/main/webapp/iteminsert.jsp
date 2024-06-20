<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Item</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    h1 {
        text-align: center;
        margin-top: 50px;
        color: #333;
    }

    form {
        max-width: 500px;
        margin: 50px auto;
        padding: 20px;
        background-color: #fff;
        box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    label {
        display: block;
        margin-bottom: 8px;
        font-weight: bold;
        color: #555;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 16px;
        transition: border 0.3s ease;
    }

    input[type="text"]:focus {
        border-color: #0099cc;
    }

    input[type="submit"] {
        width: 100%;
        padding: 10px;
        background-color: #0099cc;
        border: none;
        border-radius: 4px;
        color: #fff;
        font-size: 18px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #0077b3;
    }
</style>


<script>
	function validateInsert(){
		if(!supid.includes("SID-")){
			alert("invalid supplier id");
		}
	}
</script>
</head>
<body>

	<h1>Item Details</h1>
	<form action="insert" method="post">
	
		<label for="supplierid">Supplier Id : </label>
		<input type="text" name="supplierid" id="supid"><br>
		
		<label for="suppliername">Supplier Name : </label>
		<input type="text" name="suppliername"><br>
		
		<label for="name">Item Name : </label>
		<input type="text" name="item_name"><br>
		 
		<label for="item_type">Item Type : </label>
		<input type="text" name="item_type"><br>
		 
		<label for="item_quantity">Item Quantity : </label>
		<input type="text" name="item_quantity"><br>
		 
		<label for="item_price">Item Price : </label>
		<input type="text" name="item_price"><br>
		
		<label for="discount">Discount : </label>
		<input type="text" name="discount"><br>
		 
		
		<label for="discription">Discription : </label>
		<input type="text" name="discription"><br>
		
		
		<input type="submit" name="submit" value="submit" onclick="validateInsert()">
	</form>
</body>
</html>