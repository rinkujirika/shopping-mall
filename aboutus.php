<?php

  include("header.php");

?>

<section id="hero" class="d-flex align-items-center">

  <div class="container text-center position-relative" data-aos="fade-in" data-aos-delay="200">

    <h1>

      F2FMART - FACIAL TO FASHION...

    </h1>

    <h2>

      Connecting the Customers with the best in Class Beauty Products...

    </h2>

    <a href="aboutus.php" class="btn-get-started scrollto">

      Get Started

    </a>

  </div>

</section>

<main id="main">

  <section id="clients" class="clients">

    <div class="container">

      <div class="row">

        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="100">

          <img src="assets/img/clients/client-1.png" class="img-fluid" alt="">

        </div>

        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="200">

          <img src="assets/img/clients/client-2.png" class="img-fluid" alt="">

        </div>

        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="300">

          <img src="assets/img/clients/client-3.png" class="img-fluid" alt="">

        </div>

        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="400">

          <img src="assets/img/clients/client-4.png" class="img-fluid" alt="">

        </div>

        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="500">

          <img src="assets/img/clients/client-5.png" class="img-fluid" alt="">

        </div>

        <div class="col-lg-2 col-md-4 col-6 d-flex align-items-center" data-aos="zoom-in" data-aos-delay="600">

          <img src="assets/img/clients/client-6.png" class="img-fluid" alt="">

        </div>

      </div>

    </div>

  </section>

  <section id="about" class="about">

    <div class="container">

      <div class="row content">

        <div class="col-lg-6" data-aos="fade-right" data-aos-delay="100">

          <img src="img/2img.png" style="width: 100%;">

        </div>

        <div class="col-lg-6 pt-4 pt-lg-0" data-aos="fade-left" data-aos-delay="200">

          <p class="font-italic">

            <b>

              Mission :

            </b>

            To provide technology and services to customers to provide them
            a space to the required beauty products to purchase them and gain
            few knowledge through articles and news regarding the beauty tips
            and tricks...
          </p>

          <ul>

            <li>

              <i class="ri-check-double-line"></i>

              ‘F2F MART' is a model cosmetic management website application...

            </li>

            <li>

              <i class="ri-check-double-line"></i>

              ‘F2F MART’ provides a concept of virtual cosmetic trade to its users...

            </li>

            <li>

              <i class="ri-check-double-line"></i>

              It helps the wholesalers and retailers in buying products from larger number of brands...

            </li>

            <li>

              <i class="ri-check-double-line"></i>

              It provides the Users with the latest news regarding the beauty products...

            </li>

            <li>

              <i class="ri-check-double-line"></i>

              It provides the Users with the latest Blogs regarding the Beauty Tips and many more...

            </li>

          </ul>

        </div>

      </div>

    </div>

  </section>

  <section id="counts" class="counts">

    <div class="container">

      <div class="row counters">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <div class="col-lg-2 col-3 text-center">

          <span data-toggle="counter-up">

            <?php

              $sql = "select * from customer";

              $qsql = mysqli_query($con,$sql);

              echo mysqli_num_rows($qsql);

            ?>

          </span>

          <p>

            Customers

          </p>

        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <div class="col-lg-2 col-3 text-center">

          <span data-toggle="counter-up">

            <?php

              $sql = "select * from article";

              $qsql = mysqli_query($con,$sql);

              echo mysqli_num_rows($qsql);

            ?>

          </span>

          <p>

            Blogs & Articles

          </p>

        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <div class="col-lg-2 col-3 text-center">

          <span data-toggle="counter-up">
            <?php

              $sql = "select * from selling_product";

              $qsql = mysqli_query($con,$sql);

              echo mysqli_num_rows($qsql);

            ?>

          </span>

          <p>

            Products

          </p>

        </div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

      </div>

    </div>

  </section>

</main>

<?php

  include("footer.php");

?>