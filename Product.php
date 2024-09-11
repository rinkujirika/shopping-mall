<?php

	include("header.php");

	if(isset($_POST['submit']))

{

	$imgname1 = rand() . $_FILES['img1']['name'];

	move_uploaded_file($_FILES['img1']['tmp_name'],"imgproduct/" . $imgname1);

	$imgname2 = rand() . $_FILES['img2']['name'];

	move_uploaded_file($_FILES['img2']['tmp_name'],"imgproduct/" . $imgname2);

	$imgname3 = rand() . $_FILES['img3']['name'];

	move_uploaded_file($_FILES['img3']['tmp_name'],"imgproduct/" . $imgname3);

	$imgname4 = rand() . $_FILES['img4']['name'];

	move_uploaded_file($_FILES['img4']['tmp_name'],"imgproduct/" . $imgname4);

	$imgname5 = rand() . $_FILES['img5']['name'];

	move_uploaded_file($_FILES['img5']['tmp_name'],"imgproduct/" . $imgname5);

	if($_POST['cost'] == 0)

	{

		$status = "Inactive";

	}

	else

	{

		$status = $_POST['status'];

	}

	if(isset($_GET['editid']))

	{

		$qty = $_POST['cost'];

		$sql ="UPDATE product SET category_id='$_POST[category]', title='$_POST[title]', ";

		if($_FILES['img1']['name'] != "")

		{

		$sql = $sql . " img_1='$imgname1',  ";

		}

		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " img_2='$imgname2',  ";

		}
		if($_FILES['img3']['name'] != "")

		{
		$sql = $sql . " img_3='$imgname3',  ";

		}

		if($_FILES['img4']['name'] != "")

		{

		$sql = $sql . " img_4='$imgname4',  ";

		}

		if($_FILES['img5']['name'] != "")

		{

		$sql = $sql . " img_5='$imgname5',  ";

		}

		$sql = $sql . " cost='$_POST[cost]', quantity_type='$_POST[quantitytype]', description='$_POST[description]', uploaded_date='$dt', status='$status' WHERE product_id='$_GET[editid]'";

		if(!mysqli_query($con,$sql))

		{

			echo "Error in mysqli query";

		}

		else

		{

			echo "<script>alert('Produce Record updated successfully...');</script>";

			echo "<script>window.location='viewProduct.php';</script>";

		}

	}

	else

	{

		$sql="INSERT INTO product(product_id, seller_id, category_id, title, img_1";

		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " , img_2";

		}

		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " , img_3";

		}

		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " , img_4";

		}
		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " , img_5";

		}

		$sql = $sql . " , cost, quantity_type, description, uploaded_date, status) VALUES ('','$_SESSION[sellerid]','$_POST[category]','$_POST[title]','$imgname1'";

		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " ,'$imgname2'";

		}

		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " ,'$imgname3'";

		}

		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " ,'$imgname4'";

		}

		if($_FILES['img2']['name'] != "")

		{

		$sql = $sql . " ,'$imgname5'";

		}

		$sql = $sql . " ,'$_POST[cost]','$_POST[quantitytype]','$_POST[description]','$dt','$status')";

		if(!mysqli_query($con,$sql))

		{

			echo "Error in mysqli query";

		}

		else

		{

			if($_POST['status'] == "Active")

			{

				echo "<script>alert('Your Produce Has Been Put On Warehouse...');</script>";

			}

			else

			{

				echo "<script>alert('Your Produce has not been put on Warehouse...');</script>";

			}

			echo "<script>window.location='viewProduct.php';</script>";

		}

	}

}

if(isset($_GET['editid']))

{

	$sql = "SELECT * FROM product WHERE product_id='$_GET[editid]'";

	$qsql = mysqli_query($con,$sql);

	$rsedit = mysqli_fetch_array($qsql);

}

?>

<main id="main">

    <section id="cta" class="cta">

		<div class="container">

			<div class="text-center" data-aos="zoom-in">

				<br><br>

				<h3>

					Produce

				</h3>

			</div>

		</div>

    </section>

    <section id="contact" class="contact">

		<div class="container">

			<div class="row">

				<div class="col-lg-12" data-aos="fade-up" data-aos-delay="100">

					<div class="info mt-4 ">

						<center>
							<h4>
								Enter Produce Detail...
							</h4>
						</center><hr>

						<form method="post" action="" enctype="multipart/form-data" name="frmproduct" onSubmit="return validateproduct()">

							<input type="hidden" name="randnumber" value="<?php echo $randnumber; ?>" >

								<div class="form-row">

									<div class="col-md-4 form-group">

										Category

										<font color="#FF0000">

											*

										</font>

										<select name="category" id="category" autofocus class="form-control" onchange="showUser(this.value)" >

										<option value="">

												Select Category

											</option>

											<?php

												$sql2 = "SELECT * FROM category where status='Active' AND category_type='Produce'";

												$qsql2 =mysqli_query($con,$sql2);

												while($rssql2 = mysqli_fetch_array($qsql2))

												{

													if($rssql2['category_id'] == $rsedit['category_id'] )

													{

														echo "<option value='$rssql2[category_id]' selected>$rssql2[category]</option>";

													}

													else

													{

														echo "<option value='$rssql2[category_id]'>$rssql2[category]</option>";

													}

												}

											?>

										</select>

									</div>

									<div class="col-md-12 form-group">

										Title

										<font color="#FF0000">

											*

										</font>

										<input type="text" name="title" id="title" value="<?php echo $rsedit['title']; ?>" class="form-control">

									</div>

									<div class="col-md-6 form-group">

										Image 1

										<font color="#FF0000">

											*

										</font>

										<input type="file" name="img1" id="img1" class="form-control">

										<input type="hidden" name="img11" id="img11" value="<?php echo $rsedit['img_1']; ?>">

									</div>

									<div class="col-md-6 form-group">

										Image 2

										<font color="#FF0000">

											*

										</font>

										<input type="file" name="img2" id="img2" class="form-control">

									</div>

									<div class="col-md-4 form-group">

										Image 3

										<font color="#FF0000">

											*

										</font>

										<input type="file" name="img3" id="img3" class="form-control">

									</div>

									<div class="col-md-4 form-group">

										Image 4

										<font color="#FF0000">

											*

										</font>

										<input type="file" name="img4" id="img4" class="form-control">

									</div>

									<div class="col-md-4 form-group">

										Image 5

										<font color="#FF0000">

											*

										</font>

										<input type="file" name="img5" id="img5" class="form-control">

									</div>

									<div class="col-md-6 form-group">

										Cost

										<font color="#FF0000">

											*

										</font>

										<input type="number" name="cost" id="cost" value="<?php echo $rsedit['cost']; ?>" class="form-control">

									</div>

									<div class="col-md-6 form-group">

										Quantity Type

										<font color="#FF0000">

											*

										</font>

										<select name="quantitytype" id="quantitytype" class="form-control">

											<option value="">

												Select

											</option>

											<?php

												$arr= array("Kilogram","Gram","Quintal","Liter");

												foreach($arr as $val)

												{

													if($rsedit['quantity_type'] == $val)

													{

														echo "<option value='$val' selected >$val</option>";

													}

													else

													{

														echo "<option value='$val'>$val</option>";

													}

												}

											?>

										</select>

									</div>

									<div class="col-md-12 form-group">

										Description

										<font color="#FF0000">

											*

										</font>

										<textarea  name="description" id="description" class="form-control" >

											<?php

												echo $rsedit['description'];

											?>

										</textarea>

									</div>

									<div class="col-md-12 form-group">

										Status

										<font color="#FF0000">

											*

										</font>

										<select name="status" id="status" class="form-control">

											<option value="">

												Select Status

											</option>

											<?php

												$arr= array("Active","Inactive");

												foreach($arr as $val)

												{

													if($rsedit['status'] == $val)

													{

														echo "<option value='$val' selected >$val</option>";

													}

													else

													{

														echo "<option value='$val'>$val</option>";

													}

												}

											?>

										</select>

									</div>

								</div>

								<hr>

								<button type="submit" name="submit" id="submit" class="btn btn-info btn-lg btn-block" >

									Submit

								</button>

							</form>

						</div>

					</div>

				</div>

			</div>

		</section>

	</main>

<?php

	include("footer.php");

?>

<script>

	function showUser(str)

	{

		if (str == "")

		{

			document.getElementById("txtHint").innerHTML = "";

			return;

		}

		else

		{

			if (window.XMLHttpRequest)

			{

				// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp = new XMLHttpRequest();

			}

			else

			{

				// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");

			}

				xmlhttp.onreadystatechange = function()

			{

				if (xmlhttp.readyState == 4 && xmlhttp.status == 200)

				{

					document.getElementById("txtHint").innerHTML = xmlhttp.responseText;

				}

			};

			xmlhttp.open("GET","ajaxproduce.php?q="+str,true);

			xmlhttp.send();

		}

	}

	function showUser1(str)

	{

		if (str == "")

		{

			document.getElementById("txtHint1").innerHTML = "";

			return;

		}

		else

		{

			if (window.XMLHttpRequest)

			{

				// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlhttp = new XMLHttpRequest();

			}

			else

			{

				// code for IE6, IE5
				xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");

			}

			xmlhttp.onreadystatechange = function()

			{

				if (xmlhttp.readyState == 4 && xmlhttp.status == 200)

				{

					document.getElementById("txtHint1").innerHTML = xmlhttp.responseText;

				}

			};

			xmlhttp.open("GET","ajaxvariety.php?q="+str,true);

			xmlhttp.send();

		}

	}

</script>

<script type="application/javascript">

	function validateproduct()

	{

		var numericExpression = /^[0-9]+$/; //Variable to validate only numbers

		if(document.frmproduct.category.value == "")

		{

			alert("Kindly select the category..");

			document.frmproduct.category.focus();

			return false;

		}

		else if(document.frmproduct.title.value == "")

		{

			alert("Title should not be empty..");

			document.frmproduct.title.focus();

			return false;

		}

		else if(document.frmproduct.img11.value == "")

		{

			if(document.frmproduct.img1.value == "")

			{

				alert("Select at least one image..");

				document.frmproduct.img1.focus();

				return false;

			}

		}

		else if(document.frmproduct.cost.value == "")

		{

			alert("Cost should not be empty..");

			document.frmproduct.cost.focus();

			return false;

		}

		else if(document.frmproduct.cost.value < 1)

		{

			alert("Cost should not be less than 1..");

			document.frmproduct.cost.focus();

			return false;

		}

		else if(document.frmproduct.quantitytype.value == "")

		{

			alert("Select a quantity type..");

			document.frmproduct.quantitytype.focus();

			return false;

		}

		else

		{

			return true;

		}

	}

	function loadstatus(prodstatus)

	{

		if(prodstatus == "Active")

		{
			document.getElementById("ajaxstatus").innerHTML = "Your produce will be put on Warehouse...";

		}

		else

		{

			document.getElementById("ajaxstatus").innerHTML = "Your produce will not be put on Warehouse because the status is inactive. Put it on Active to put the product on to the Warehouse...";

		}

	}

</script>