<form action="" method="post">
<div class="table-title"> 
		<h3 style="color: black"> Change password</h3>
	</div>
<table class="table-fill">
	<tr>
		<td class="text-left">Enter Current Password :</td>
		<td class="text-left"><input type="password" name="old_pass" class="textbox" required /></td>
	</tr>

	<tr>
		<td class="text-left">Enter New Password:</td>
		<td class="text-left"><input type="password" name="new_pass" class="textbox" required /></td>
	</tr>

	<tr>
		<td class="text-left">Enter New Password Again:</td>
		<td class="text-left"><input type="password" name="new_pass_again" class="textbox" required /></td>
	</tr>
	<tr>
		<td class="text-left"><input type="submit" name="change_pass" value="Change Password"></td>
	</tr>

</table>
</form>
<?php

	include("includes/db.php");
	$c = $_SESSION['customer_email'];

	if(isset($_POST['change_pass']))
	{
		$old_pass = $_POST['old_pass'];
		$new_pass = $_POST['new_pass'];
		$new_pass_again = $_POST['new_pass_again'];

		$get_real_pass = "select * from customers where customer_pass = '$old_pass'";

		$run_real_pass = mysqli_query($con,$get_real_pass);

		if(mysqli_num_rows($run_real_pass)==0){

			echo "<script>alert('Your current password is not valid, try again')</script>";
			exit();


		}
		if($new_pass!=$new_pass_again){
			echo "<script>alert('New password did not match, try again')</script>";
			exit();
		}
		else
		{
			$update_pass = "update customers set customer_pass='$new_pass' where customer_email='$c'";

			$run_pass = mysqli_query($con, $update_pass);

			echo "<script>alert('Your pass has been successfully changed!')</script>";
			echo "<script>window.open('my_account.php','_self')</script>";		
		}
	}
?>
