<!DOCTYPE html>
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
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color:;
}
</style>

 <script>
        function calculateTotal() {
            // Get values from input fields
            var price = parseFloat(document.getElementById("pprice").value);
            var tax = parseFloat(document.getElementById("ptax").value);
            var discount = parseFloat(document.getElementById("pdis").value);

            // Calculate the total price
            var total = price + (price * (tax / 100)) - discount;

            // Display the total price
            document.getElementById("ptamount").innerHTML = " " + total.toFixed(2);
        }
    </script>













</head>



<body>


<form action="purchasenext.jsp" method="post">
  <div class="container">
    <h1>Purchase Details</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

    <label for="name"><b>Name</b></label>
    <input type="text" placeholder="Enter Name" name="name" id="name" required> 

    <label for="address"><b>Address</b></label>
    <input type="address" placeholder="Enter Address" name="address" id="address" required>

    
    <hr>

<h2>Product details</h2>

<label for="id">ID:</label><br>
<input type="text" name="pid" id="pid"/><br>

  <label for="item">Item:</label><br>
  <input type="text" name="pitem" id="pitem"/><br><br>
  
  <label for="iManufacturing Date">Manufacturing Date:</label><br>
 <input type="text" name="pmdate" id="pmdate"/><br>
  
  <label for="expiry Date">Expiry Date:</label><br>
<input type="text" name="pedate" id="pedate"/><br>
  
  <label for="Price">Price Date:</label><br>
  <input type="text" name="pprice" id="pprice"/><br>
  
  
  <label for="expiry Date">Tax:</label><br>
  <input type="text" name="ptax" id="ptax"/><br>
  
  <label for="expiry Date">Discount:</label><br>
 <input type="text" name="pdis" id="pdis"/><br>
 
  
   <label for="expiry Date">Date:</label><br>
 <input type="text" name="pdate" id="pdate"/><br>
 
 
  <label for="expiry Date">Total Amount:</label><br>
 <label type="text" name="ptamount" id="ptamount" placeholder=""/><br>
 
  
  
  
  
  
  
 

  <input type="submit" value="Save" onclick="calculateTotal()">
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