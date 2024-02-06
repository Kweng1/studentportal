<?php
require_once("includes/initialize.php");

if (studlogged_in()) {
    header("Location: index.php");
    exit();
}

if (isset($_POST['btnlogin'])) {
    // Form has been submitted
     
    $uname = trim($_POST['uname']);
    $upass = trim($_POST['pass']);
    
    // Check if the username is empty
    if ($uname == '') {
        echo "<script type='text/javascript'>alert('Invalid Username and Password!');</script>";
    } else {
        // Create a new Student object and authenticate
        $user = new Student();
        $res = $user::Authenticatestudent($uname);

        if ($res) {
            // Redirect to home.php if authentication is successful
            header("Location: index.php");
            exit();
        } else {
            echo "<script type='text/javascript'>alert('Username or Password Not Registered! Contact Your administrator.');</script>";
        }
    }
} else {
    $email = "";
    $upass = "";
}
?>

<!doctype html>
<html lang="en">

<head>
    <title>Student Grades Portal</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

     <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,700&display=swap" rel="stylesheet">

<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/fonts/icomoon/style.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/css/bootstrap.min.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/css/bootstrap-datepicker.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/css/owl.carousel.min.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/css/owl.theme.default.min.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/fonts/flaticon/font/flaticon.css">
<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/css/aos.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="<?php echo WEB_ROOT; ?>plugins/homepage/css/style.css">
</head>
<style>
  

        /* Class to move up the element */
        .move-up {
            transform: translateY(-50%);
            transition: transform 1s ease-in-out;
        }
    .site-logo a {
        display: inline-block;
        white-space: nowrap;
        overflow: hidden;
        position: relative;
        text-decoration: none;
        color: #333; /* Change the color to your desired color */
    }

    .site-logo a::after {
        content: '';
        position: absolute;
        width: 100%;
        height: 2px; /* Adjust the thickness of the underline */
        bottom: 0;
        left: 0;
        background-color: #007bff; /* Adjust the color of the underline */
        transform: scaleX(0);
        transform-origin: bottom right;
        transition: transform 0.3s ease;
    }

    .site-logo a:hover::after {
        transform: scaleX(1);
        transform-origin: bottom left;
    }

    .line-bottom {
        position: relative;
        display: inline-block;
        color: #333; /* Change the color to your desired color */
    }

    .line-bottom::after {
        content: '';
        position: absolute;
        width: 100%;
        height: 2px; /* Adjust the thickness of the underline */
        bottom: 0;
        left: 0;
        background-color: #007bff; /* Adjust the color of the underline */
        transform: scaleX(0);
        transform-origin: bottom right;
        transition: transform 0.3s ease;
    }

    .line-bottom:hover::after {
        transform: scaleX(1);
        transform-origin: bottom left;
    }
    


</style>

<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
   

   

    <div class="site-wrap" id="home-section">

        <div class="site-mobile-menu site-navbar-target">
            <div class="site-mobile-menu-header">
                <div class="site-mobile-menu-close mt-3">
                    <span class="icon-close2 js-menu-toggle"></span>
                </div>
            </div>
            <div class="site-mobile-menu-body"></div>
        </div>

        <header class="site-navbar site-navbar-target" role="banner">
            <div class ="container" style="margin-top: 0px;">
                <div class="row align-items-center position-relative">
                    <div class="col-3">
                        <div class="site-logo">
                            <a href="<?php echo WEB_ROOT; ?>" style="white-space: nowrap;"></a>
                        </div>
                    </div>
                    <div class="col-9 text-right">
                        <span class="d-inline-block d-lg-none"><a href="#"
                                class="text-white site-menu-toggle js-menu-toggle py-5 text-white"><span
                                    class="icon-menu h3 text-white"></span></a></span>
                    </div>
                </div>
            </div>
        </header>
        <div class="ftco-blocks-cover-1">
            <div class="ftco-cover-1 overlay" style="background-image: url('images/desk.jpg')">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <h1 class="line-bottom" id="portalText">Student Grades Portal</h1>
                            <h2 class="line-bottom" style="color: white;">Sign In</h2>

                        <p>Welcome to the St. Cecilia's College Cebu-Inc Student Grading System! To access your account
                            and view your profile along with subject grades, please log in using your school ID
                            number.</p>
                        </div>
                    </div>
                    
                </div>
                
            </div>
            
        </div>

       
            <div class="container">
            
                <div class="row">
                    <div class="col-md-5 pr-md-5 mr-auto">
                        
                            <br> <br> <br> <br> <br>
                    </div>
                    <br>  <br>  <br>
                    
                        <div class="col-lg-3 ml-auto">
                            <!-- Add Owl Carousel here -->
                            <div class="owl-carousel owl-theme">
                                <div class="item">
                                    <img src="images/it.jpg" alt="it">
                                </div>
                                <div class="item">
                                    <img src="images/educ.jpg" alt="educ 2">
                                </div>
                                <div class="item">
                                    <img src="images/bsba.jpg" alt="bsba 3">
                                </div>
                                <div class="item">
                                    <img src="images/htm.jpg" alt="htm 2">
                                </div>
                                <div class="item">
                                    <img src="images/crim.png" alt="crim 2">
                                </div>
                                <!-- Add more items as needed -->
                            </div>
                            <!-- End Owl Carousel -->



                        </div>
                        
                        <div class="col-md-6">
    <div class="quick-contact-form bg-white p-4 rounded shadow">
        <h2 class="mb-4">Sign In</h2>
        <form action="login.php" method="POST">
            <div class="form-group">
                <input type="number" class="form-control" name="uname" placeholder="Student Id Number" autocomplete="off">

            </div>
            <div class="form-group">
                <input type="submit" value="Sign In" name="btnlogin" class="btn btn-primary px-5">
            </div>
        </form>
    </div>
</div>

                 </div>
              </div>
            </div>
        </div>
        <footer>
            <div class="container">
                <div class="row pt-5 mt-5 text-center">
                    <div class="col-md-12">
                        <div class="border-top pt-5">
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.6.0/js/bootstrap.min.js"></script>


    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/jquery-3.3.1.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/popper.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/bootstrap.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/owl.carousel.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/jquery.sticky.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/jquery.waypoints.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/jquery.animateNumber.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/jquery.fancybox.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/jquery.easing.1.3.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/bootstrap-datepicker.min.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/aos.js"></script>
    <script src="<?php echo WEB_ROOT; ?>plugins/homepage/js/main.js"></script>
    <script>
    $(document).ready(function () {
        // Variable to keep track of form state
        var isFormUp = false;

        // Add a focus event handler for the input field
        $(".quick-contact-form input[type='number']").on('focus', function () {
            if (!isFormUp) {
                // Add and remove classes for animation
                $(".quick-contact-form").addClass("move-up");
                $("#portalText").addClass("fade-out");
                isFormUp = true;
            }
        });

        // Add a blur event handler for the input field
        $(".quick-contact-form input[type='number']").on('blur', function () {
            // Do nothing on blur, keeping the form up
        });

        $(".owl-carousel").owlCarousel({
            items: 1,
            loop: true,
            autoplay: true,
            autoplayTimeout: 2000,
            autoplayHoverPause: true,
            animateOut: 'fadeOut',
            smartSpeed: 1000,
            dots: true,
            nav: false
        });

        // Add a click event handler for other elements
        $(document).on('click', function (event) {
            // Check if the clicked element is not part of the form
            if (!$(event.target).closest('.quick-contact-form').length) {
                // Do nothing on click outside the form
            }
        });
    });
</script>

</body>

</html>