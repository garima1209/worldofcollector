<?php
include("includes/db.php"); 


//Getting the customer ID
$c = $_SESSION['customer_email'];

	$get_c= "select * from customers where customer_email='$c'";

	$run_c = mysqli_query($db, $get_c);

	$row_c=mysqli_fetch_array($run_c);

	$customer_id = $row_c['customer_id'];


?>
<div class="table-title"> 
		<h3> View All Products</h3>
	</div>
<table class="table-fill">
	<tr>
		<th class="text-left">Order no</th>
		<th class="text-left">Due Amount</th>
		<th class="text-left">Invoice no</th>
		<th class="text-left">Total Products</th>
		<th class="text-left">Order Date</th>
		<th class="text-left">Status</th>
		<th class="text-left"></th>
	</tr> 
	<?php

	$get_orders = "select * from customer_orders where customer_id=$customer_id";

	$run_orders= mysqli_query($con, $get_orders);

	$i=1;

	while($row_orders=mysqli_fetch_array($run_orders)){

		$order_id = $row_orders['order_id'];

		$due_amount = $row_orders['due_amount'];

		$invoice_no = $row_orders['invoice_no'];

		$products = $row_orders['total_products'];

		$date = $row_orders['order_date'];

		$status = $row_orders['order_status'];

		$i++;

		if($status=='Pending'){

			$status='Unpaid';
		}
		else
		{
			$status='Paid';
		}

		echo "<tr>
		<td class='text-left'>$i</td>
		<td class='text-left'>$due_amount</td>
		<td class='text-left'>$invoice_no</td>
		<td class='text-left'>$products</td>
		<td class='text-left'>$date</td>
		<td class='text-left'>$status</td>
		<td class='text-left'><a href='confirm.php?order_id=$order_id'>Confirm if Paid</td>

		</tr>";


	}
	?>
</table>
