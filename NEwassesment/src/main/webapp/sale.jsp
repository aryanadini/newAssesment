<!DOCTYPE html>
<%@page import="java.sql.*"%>

<html>
<head>

<meta name="google-signin-client_id"
	content="YOUR_CLIENT_ID.apps.googleusercontent.com">









<meta charset="ISO-8859-1">


<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
	crossorigin="anonymous"></script>



<style>

</style>

 

<script>
    function loadItemsForCustomer() {
        var selectedCustomer = document.getElementById("name").value;

        // Make an AJAX request to fetch items for the selected customer
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "fetchItemsServlet?customer=" + selectedCustomer, true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                var items = JSON.parse(xhr.responseText);

                // Update the item dropdown with the fetched items
                var itemDropdown = document.getElementById("pitem");
                itemDropdown.innerHTML = '<option value="">Select item</option>';
                items.forEach(function(item) {
                    var option = document.createElement("option");
                    option.value = item;
                    option.text = item;
                    itemDropdown.appendChild(option);
                });
            }
        };
        xhr.send();
    }
</script>









</head>



<body>

<%@page import="purachase_sale.SaleDao,purachase_sale.Sale.*,java.util.*"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  













<form action="" method="post">
  <div class="container">
    <h1>Sales Details</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
     <label for="name"><b>Customer Name</b></label>
     
<select style="width: 30rem" name="" id="name" class="form-select" placeholder="Select Customer name" onchange="loadItemsForCustomer()"">

<option value="">Select Customer Name</option>
							<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/telious", "root", "");
								Statement statement = connection.createStatement();
								ResultSet resultset = statement.executeQuery("select name from purchase");
							%>




								<%
								while (resultset.next()) {
								%>
								<option ><%=resultset.getString(1)%></option>
								<%
								}
								%>


							</select>

							<%
							} catch (Exception e) {
							out.println("wrong entry" + e);
							}
							%>



    
     <label for="item">Item:</label><br>
  
  <select style="width: 30rem" name="" id="pitem" class="form-select" placeholder="Select item" onchange="loadProductDetails()">
<option value="">Select item</option>
<%
							try {
								Class.forName("com.mysql.jdbc.Driver");
								Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/telious", "root", "");
								Statement statement = connection.createStatement();
								ResultSet resultset = statement.executeQuery("select pitem from purchase");
							%>




								<%
								while (resultset.next()) {
								%>
								<option ><%=resultset.getString("pitem")%></option>
								<%
								}
								%>


							</select>

							<%
							} catch (Exception e) {
							out.println("wrong entry" + e);
							}
							%>
							


							</select>

							







  
    
    <hr>

<h2>Product details</h2>


 <label for="address"><b>Address</b></label><br>
    <input type="address"  name="address" id="address" ><br>





 
  <label for="iManufacturing Date">Manufacturing Date:</label><br>
 <input type="text" name="pmdate" id="pmdate"/><br>
  
  <label for="expiry Date">Expiry Date:</label><br>
<input type="text" name="pedate" id="pedate"/><br>
  
  <label for="Price">Price :</label><br>
  <input type="text" name="pprice" id="pprice"/><br>
  
  
  <label for="expiry Date">Tax:</label><br>
  <input type="text" name="ptax" id="ptax"/><br>
  
  <label for="expiry Date">Discount:</label><br>
 <input type="text" name="pdis" id="pdis"/><br>
 
  
   <label for="expiry Date">Date:</label><br>
 <input type="text" name="pdate" id="pdate"/><br>
 
 
  <label for="expiry Date">Total Amount:</label><br>
 <label type="text" name="ptamount" id="ptamount" placeholder=""/><br>
 
  
  
  
  
  
  
 

  <input type="submit" value="Save" >
  <div id="total"></div>
  </div>

  
							 
			
</form>






	




	




		

	

















		<script
			src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
			integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
			crossorigin="anonymous"></script>
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
			integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
			crossorigin="anonymous"></script>
</body>
</html>