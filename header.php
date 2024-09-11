<?php

    if(!isset($_SESSION)) { session_start(); }

    error_reporting(E_ALL & ~E_NOTICE  &  ~E_STRICT  &  ~E_WARNING);

    $dt = date("Y-m-d");

    $rupeesymbol= "₹";

    include("dbconnection.php");

?>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="utf-8">

    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>F2FMART - CONNECTING THE FACIAL AND FASHION</title>

    <meta content="" name="Agriculture Management System is to help farmers by providing all kinds agriculture related information in the website.">

    <meta content="Connecting the farms and friends, F2FMART" name="keywords">

    <link href="assets/img/favicon.png" rel="icon">

    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">

    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">

    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">

    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">

    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">

    <link href="assets/vendor/aos/aos.css" rel="stylesheet">

    <link href="assets/css/style.css" rel="stylesheet">

    <link href="assets/css/jquery.dataTables.min.css" rel="stylesheet">

</head>

<body>

    <header id="header" class="fixed-top d-flex align-items-center">

        <div class="container">

            <div class="header-container d-flex align-items-center">

                <div class="logo mr-auto">

                    <h1 class="text-light">

                        <a href="index.php">

                            <span>

                                F2FMART

                            </span>

                        </a>

                    </h1>

                </div>

                <nav class="nav-menu d-none d-lg-block">

                    <ul>

                        <li class="<?php

                            if(basename($_SERVER['PHP_SELF']) == "index.php" )

                            {

                                echo ' active ';

                            }

                            ?>">

                            <a href="index.php">

                                Home

                            </a>

                        </li>

                        <li class="drop-down">

                            <a href="#">

                                Articles

                            </a>

                            <ul>

                                <li>

                                    <a href="displayarticles.php?articletype=Blog">

                                        Blogs

                                    </a>

                                </li>

                                <li>

                                    <a href="displaynews.php?articletype=News">

                                        News

                                    </a>

                                </li>

                            </ul>

                        </li>

                        <li class="drop-down <?php

                            if(basename($_SERVER['PHP_SELF']) == "displayproducts.php" )

                            {

                                echo ' active ';

                            }

                            ?>">

                            <a href="displayproducts.php" onclick='window.location=`displayproducts.php`'>

                                Products

                            </a>

                            <ul>

                            <?php

                                $sqlcategoryfk = "SELECT * FROM category where status='Active' AND category_type='SellingProduct'";

                                $qsqlcategoryfk =mysqli_query($con,$sqlcategoryfk);

                                echo mysqli_error($con);

                                while($rscategoryfk = mysqli_fetch_array($qsqlcategoryfk))

                                {

                                    echo "<li><a href='displayproducts.php?category_id=$rscategoryfk[category_id]&category=$rscategoryfk[category]'  onclick='window.location=`displayproducts.php?category_id=$rscategoryfk[category_id]&category=$rscategoryfk[category]`' >$rscategoryfk[category]</a></li>";

                                }

                            ?>

                            </ul>

                        </li>

                        <?php

                            if(isset($_SESSION['customerid']))

                            {

                        ?>

                        <li class="drop-down <?php

                            if(basename($_SERVER['PHP_SELF']) == "customerpanel.php" || basename($_SERVER['PHP_SELF']) == "customerUpdate.php" || basename($_SERVER['PHP_SELF']) == "Customerchngpassword.php"  || basename($_SERVER['PHP_SELF']) == "viewcstpurchasereport.php"  || basename($_SERVER['PHP_SELF']) == "viewpurchaserequest.php"  || basename($_SERVER['PHP_SELF']) == "viewcstpurchaseorder.php"  || basename($_SERVER['PHP_SELF']) == "viewpurchasereport.php"  )

                            {

                                echo ' active ';

                            }

                            ?>">

                            <a href="">

                                My Account

                            </a>

                            <ul>

                                <li>

                                    <a href="customerpanel.php">

                                        Customer Panel

                                    </a>

                                </li>
                                <li>

                                    <a href="viewpurchasereport.php">

                                        Purchase Report

                                    </a>

                                </li>

                                <li>

                                    <a href="customerUpdate.php">

                                        Update Profile

                                    </a>

                                </li>

                                <li>

                                    <a href="Customerchngpassword.php">

                                        Change Password

                                    </a>

                                </li>

                                <li>

                                    <a href="logout.php">

                                        Logout

                                    </a>

                                </li>

                            </ul>

                        </li>

                        <?php

                            }

                            else if(isset($_SESSION['adminid']))

                            {

                        ?>

                        <li class="drop-down <?php

                            if(basename($_SERVER['PHP_SELF']) == "adminpanel.php" || basename($_SERVER['PHP_SELF']) == "customerUpdate.php" || basename($_SERVER['PHP_SELF']) == "Customerchngpassword.php" || basename($_SERVER['PHP_SELF']) == "adminpanel.php" || basename($_SERVER['PHP_SELF']) == "customerUpdate.php" || basename($_SERVER['PHP_SELF']) == "Customerchngpassword.php" || basename($_SERVER['PHP_SELF']) == "viewcustomerReg.php" || basename($_SERVER['PHP_SELF']) == "viewadminpurchasereport.php" || basename($_SERVER['PHP_SELF']) == "viewpurchasereport.php" || basename($_SERVER['PHP_SELF']) == "admin.php" || basename($_SERVER['PHP_SELF']) == "viewadmin.php" || basename($_SERVER['PHP_SELF']) == "chngadminpassword.php" || basename($_SERVER['PHP_SELF']) == "city.php" || basename($_SERVER['PHP_SELF']) == "viewcity.php" || basename($_SERVER['PHP_SELF']) == "state.php" || basename($_SERVER['PHP_SELF']) == "viewstate.php" || basename($_SERVER['PHP_SELF']) == "country.php" || basename($_SERVER['PHP_SELF']) == "viewcountry.php" || basename($_SERVER['PHP_SELF']) == "category.php" || basename($_SERVER['PHP_SELF']) == "viewcategory.php" || basename($_SERVER['PHP_SELF']) == "Produce.php" || basename($_SERVER['PHP_SELF']) == "viewProduce.php" || basename($_SERVER['PHP_SELF']) == "sellingproduce.php" || basename($_SERVER['PHP_SELF']) == "viewSellingProduce.php" || basename($_SERVER['PHP_SELF']) == "viewseller.php" || basename($_SERVER['PHP_SELF']) == "sellingproduct.php" || basename($_SERVER['PHP_SELF']) == "viewsellingproduct.php" || basename($_SERVER['PHP_SELF']) == "article.php" || basename($_SERVER['PHP_SELF']) == "viewarticle.php" )

                            {

								echo ' active ';

                            }

                            ?>">

                            <a href="">

                                My Account

                            </a>

                            <ul>

                                <li>

                                    <a href="adminpanel.php">

                                        Admin Panel

                                    </a>

                                </li>

                                <li class="drop-down">

                                    <a href="#">

                                        Report

                                    </a>

                                    <ul>

                                        <li>

                                            <a href="viewcustomerReg.php">

                                                Customer Account Report

                                            </a>

                                        </li>

                                        <li>

                                            <a href="viewadminpurchasereport.php">

                                                Product Billing Report

                                            </a>

                                        </li>

                                    </ul>

                                </li>

                                <li class="drop-down">

                                    <a href="#">

                                        General Settings

                                    </a>

                                    <ul>

                                        <li>

                                            <a href="admin.php">

                                                Add Admin

                                            </a>

                                        </li>

                                        <li>

                                            <a href="viewadmin.php">

                                                View Admin

                                            </a>

                                        </li>

                                        <li>

                                            <a href="chngadminpassword.php">

                                                Change My Password

                                            </a>

                                        </li>

                                        <li>

                                            <a href="city.php">

                                                Add City

                                            </a>

                                        </li>

                                        <li>

                                            <a href="viewcity.php">

                                                View City

                                            </a>

                                        </li>

                                        <li>

                                            <a href="state.php">

                                                Add State

                                            </a>

                                        </li>

                                        <li>

                                            <a href="viewstate.php">

                                                View State

                                            </a>

                                        </li>

                                        <li>

                                            <a href="country.php">

                                                Add Country

                                            </a>

                                        </li>

                                        <li>

                                            <a href="viewcountry.php">

                                                View Country

                                            </a>

                                        </li>

                                    </ul>

                                </li>

                                <li class="drop-down">

                                    <a href="#">

                                        Products

                                    </a>

                                    <ul>

                                        <li>

                                            <a href="category.php?cattype=SellingProduct">

                                                Add Selling Product Category

                                            </a>

                                        </li>

                                        <li>

                                            <a href="viewcategory.php?cattype=SellingProduct">

                                                View Selling Product Category

                                            </a>

                                        </li>

                                        <li>

                                            <a href="sellingproduct.php">

                                                Add Product On Sale

                                            </a>

                                        </li>

                                        <li>

                                            <a href="viewsellingproduct.php">

                                                View Product On Sale

                                            </a>

                                        </li>

                                    </ul>

                                </li>

                                <li class="drop-down">

                                    <a href="#">

                                        Article Settings

                                    </a>

                                    <ul>

                                        <li>

                                            <a href="article.php">

                                                Add Article

                                            </a>

                                        </li>

                                        <li>

                                            <a href="viewarticle.php">

                                                View Article

                                            </a>

                                        </li>

                                    </ul>

                                </li>

                                <li>

                                    <a href="logout.php">

                                        Logout

                                    </a>

                                </li>

                            </ul>

                        </li>

                        <?php

                            }

                            else

                            {

                        ?>

                        <li class="drop-down">

                            <a href="">

                                My Account

                            </a>

                            <ul>

                                <li>

                                    <a href="customerreglogin.php">

                                        As Customer

                                    </a>

                                </li>

                                </li>

                            </ul>

                        </li>

                        <?php

                            }

                        ?>

                        <li>

                            <a href="contact.php">

                                Contact

                            </a>

                        </li>

                        <?php

                            $sqlproduct_purchase_record = "SELECT * FROM  product_purchase_record

                            WHERE status='Pending'";

                            if(isset($_SESSION['customerid']))

                            {

                                $sqlproduct_purchase_record =$sqlproduct_purchase_record  . " AND customer_id='$_SESSION[customerid]' ";

                            }

                            else if(isset($_SESSION['sellerid']))

                            {

                                $sqlproduct_purchase_record =$sqlproduct_purchase_record  . " AND seller_id='$_SESSION[sellerid]' ";

                            }

                            else

                            {

                                $sqlproduct_purchase_record =$sqlproduct_purchase_record  . " AND selling_prod_id='0' ";

                            }

                            $qsqlproduct_purchase_record = mysqli_query($con,$sqlproduct_purchase_record);

                            if(mysqli_num_rows($qsqlproduct_purchase_record) >= 1)

                            {

                        ?>

                        <li class="get-started">

                            <a href="displaycart.php">

                                Cart

                                (<?php echo mysqli_num_rows($qsqlproduct_purchase_record); ?>)

                            </a>

                        </li>

                        <?php

                            }

                            else

                            {

                        ?>

                        <li class="get-started">

                            <a href="#">

                                Cart

                                (<?php echo mysqli_num_rows($qsqlproduct_purchase_record); ?>)

                            </a>

                        </li>

                        <?php

                            }

                        ?>

                    </ul>

                </nav>

            </div>

        </div>

    </header>
