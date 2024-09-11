<?php

    include "css/db_conn.php";

    include "header.php";

    if(isset($_POST['submit']))

    {

      $name = $_POST ['name'];

      $email = $_POST ['email'];

      $comment = $_POST ['comment'];

      $sql = "INSERT INTO `contact_us`(`id`, `name`,`email`, `comment`) VALUES (null,'$name','$email','$comment')";

      $result = mysqli_query($conn, $sql);

      if($result)

      {

        header ("Location: home_page.php?msg=New record created successfully");

      }

      else

      {

        echo "Failed: " . mysqli_error($conn);

      }

    }

?>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8" />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet" />

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />

    <link href="css/style_sheet.css" rel="stylesheet" />

</head>

<section class="text-gray-600 body-font relative" style="user-select: auto; background-color: rgb(225, 225, 225);">

  <div id="aboutus">

    <div class="container px-5 py-24 mx-auto" style="user-select: auto;">

      <div class="flex flex-col text-center w-full mb-12" style="user-select: auto;">

        <h1 class="sm:text-3xl text-2xl font-medium title-font mb-4 text-gray-900" style="user-select: auto;">

          Contact Us

        </h1>

        <p class="lg:w-2/3 mx-auto leading-relaxed text-base" style="user-select: auto;">

          Feel free to send us your queries.

        </p>

      </div>

      <form action="" method="POST">

        <div class="lg:w-1/2 md:w-2/3 mx-auto" style="user-select: auto;">

          <div class="flex flex-wrap -m-2" style="user-select: auto;">

            <div class="p-2 w-1/2" style="user-select: auto;">

              <div class="relative" style="user-select: auto;">

                <label for="name" class="leading-7 text-sm text-gray-600" style="user-select: auto;">

                  Name

                </label>

                <input type="text" id="name" name="name" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" style="user-select: auto;" placeholder="Enter your Name">

              </div>

            </div>

            <div class="p-2 w-1/2" style="user-select: auto;">

              <div class="relative" style="user-select: auto;">

                <label for="email" class="leading-7 text-sm text-gray-600" style="user-select: auto;">

                  Email

                </label>

                <input type="email" id="email" name="email" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 text-base outline-none text-gray-700 py-1 px-3 leading-8 transition-colors duration-200 ease-in-out" style="user-select: auto;" placeholder="Enter your Email">

              </div>

            </div>

            <div class="p-2 w-full" style="user-select: auto;">

              <div class="relative" style="user-select: auto;">

                <label for="message" class="leading-7 text-sm text-gray-600" style="user-select: auto;">

                  Message

                </label>

                <textarea id="comment" name="comment" class="w-full bg-gray-100 bg-opacity-50 rounded border border-gray-300 focus:border-indigo-500 focus:bg-white focus:ring-2 focus:ring-indigo-200 h-32 text-base outline-none text-gray-700 py-1 px-3 resize-none leading-6 transition-colors duration-200 ease-in-out" style="user-select: auto;" placeholder="Enter your Query"></textarea>

              </div>

            </div>

            <div class="p-2 w-full" style="user-select: auto;">

              <button type="submit" name="submit" class="flex mx-auto text-white bg-indigo-500 border-0 py-2 px-8 focus:outline-none hover:bg-indigo-600 rounded text-lg" style="user-select: auto;">

                Submit

              </button>

            </div>

            <div class="p-2 w-full pt-8 mt-8 border-t border-gray-200 text-center" style="user-select: auto;"></div>

          </div>

        </div>

      </form>

    </div>

  </div>

</section>

<?php

  include("footer.php");

?>

</body>

</html>