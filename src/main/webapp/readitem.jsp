<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f6f6f6;
        margin: 0;
        padding: 0;
    }

    table {
        margin: 20px auto;
        width: 70%;
        border-collapse: collapse;
        box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    }

    label {
        display: block;
        margin-bottom: 10px;
        color: #555;
        font-weight: bold;
    }

    input[type="text"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 4px;
        font-size: 16px;
        background-color: #f9f9f9;
        transition: border 0.3s ease;
    }

    input[type="text"]:focus {
        border-color: #0077b3;
        background-color: #fff;
    }

    input[type="button"] {
        padding: 10px 15px;
        background-color: #0077b3;
        border: none;
        border-radius: 4px;
        color: #fff;
        font-size: 18px;
        cursor: pointer;
        transition: background 0.3s ease;
    }

    input[type="button"]:hover {
        background-color: #005b8e;
    }

    a {
        text-decoration: none;
    }

    a:hover input[type="button"] {
        background-color: #005b8e;
    }

</style>


</head>
<body>



	<table>
		<c:forEach var="it" items="${itDetails}">

			<c:set var="itemid" value="${it.itemid}" />
			<c:set var="supplierid" value="${it.supplierid}" />
			<c:set var="suppliername" value="${it.suppliername}" />
			<c:set var="item_name" value="${it.item_name}" />
			<c:set var="item_type" value="${it.item_type}" />
			<c:set var="item_quantity" value="${it.item_quantity}" />
			<c:set var="item_price" value="${it.item_price}" />
			<c:set var="discount" value="${it.discount}" />
			<c:set var="discription" value="${it.discription}" />
			
			


			<label>Item ID </label>
				<input type = "text" value = "${it.itemid}" readonly><br></br>
				
			<label>Supplier ID </label>
				<input type = "text" value = "${it.supplierid}" readonly><br></br>
				
			<label>Supplier Name </label>
				<input type = "text" value = "${it.suppliername}" readonly><br></br>
				
			<label>Item Name </label>
				<input type = "text" value = "${it.item_name}" readonly><br></br>
			
			<label>Item Type </label>
				<input type = "text" value = "${it.item_type}" readonly><br></br>
				
			<label>Item Quantity </label>
				<input type = "text" value = "${it.item_quantity}" readonly><br></br>
				
			<label>Item  Price </label>
				<input type = "text" value = "${it.item_price}" readonly><br></br>
				
			<label>Discount </label>
				<input type = "text" value = "${it.discount}" readonly><br></br>
				
			<label>Discription </label>
				<input type = "text" value = "${it.discription}" readonly><br></br>
				
			
				
				



		</c:forEach>
	</table>

<c:url value="updateitem.jsp" var="itupdate">
    <c:param name="itemid" value="${itemid}" />
    <c:param name="supplierid" value="${supplierid}" />
    <c:param name="suppliername" value="${suppliername}" />
    <c:param name="item_name" value="${item_name}" />
    <c:param name="item_type" value="${item_type}" />
    <c:param name="item_quantity" value="${item_quantity}" />
    <c:param name="item_price" value="${item_price}" />
    <c:param name="discount" value="${discount}" />
    <c:param name="discription" value="${discription}" />
</c:url>

<a href="${itupdate}"> <input type="button" name="update" value="Update My Data"> </a>

<br>

<c:url value="delete.jsp" var="itdelete">
    <c:param name="itemid" value="${itemid}" />
    <c:param name="supplierid" value="${supplierid}" />
    <c:param name="suppliername" value="${suppliername}" />
    <c:param name="item_name" value="${item_name}" />
    <c:param name="item_type" value="${item_type}" />
    <c:param name="item_quantity" value="${item_quantity}" />
    <c:param name="item_price" value="${item_price}" />
    <c:param name="discount" value="${discount}" />
    <c:param name="discription" value="${discription}" />
</c:url>

<a href="${itdelete}"> <input type="button" name="delete" value="Delete Item"> </a>

	
</body>
</html>
