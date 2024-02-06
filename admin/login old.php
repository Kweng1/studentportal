
<?php require_once("../includes/initialize.php");?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>SCA-Student Information and Grading System</title>

<!-- Bootstrap core CSS -->
<link href="<?php echo WEB_ROOT; ?>css/bootstrap.min.css" rel="stylesheet">
<link href="<?php echo WEB_ROOT; ?>css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<!-- Custom styles for this template -->
<link href="<?php echo WEB_ROOT; ?>css/offcanvas.css" rel="stylesheet">

</head>
<body>
    <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">SCA-Student Information and Grading System</a>
        </div>

       
      </div><!-- /.container -->
    </div><!-- /.navbar -->

    </div>
<?php
 if (logged_in()) {
?>
   <script type="text/javascript">
            window.location = "index.php";
    </script>
    <?php
}
include("banner.php") ?>

<?php
if (isset($_POST['btnlogin'])) {
    //form has been submitted1
    
    $uname = trim($_POST['uname']);
    $upass = trim($_POST['pass']);
    
    $h_upass = sha1($upass);
    //check if the email and password is equal to nothing or null then it will show message box
    if ($uname == '' OR $upass == '') {
?>    <script type="text/javascript">
                alert("Invalid Username and Password!");
                </script>
            <?php
        
    } else {
		//it creates a new objects of member
        $user = new User();
		//make use of the static function, and we passed to parameters
		$res = $user::AuthenticateUser($uname, $h_upass);
		//then it check if the function return to true
		if($res == true){
			?>   <script type="text/javascript">
					//then it will be redirected to home.php
					window.location = "index.php";
				</script>
			<?php
		
		
		} else {
?>    <script type="text/javascript">
                alert("Username or Password Not Registered! Contact Your administrator.");
                window.location = "index.php";
                </script>
        <?php
        }
        
    }
} else {
    
    $email = "";
    $upass = "";
    
}

?>

<div class="container">
		
		<div class="col-xs-12 col-sm-9">
			<div class="rows">
				<div class="well">
					<fieldset>
						<legend><h4 class="text-center">VISION STATEMENT</h4></legend>
							<p>SCC is a non-stock, non-profit educational institution that envisions itself to be a Center of excellence in Academics, Technology, and the Arts. It aspires to produce professionals and leaders who are globally competitive, imbued with Christian values, integrity, patriotism and stewardship, through quality human education</p>
					</fieldset>	
					<fieldset>
						<legend><h4 class="text-center">MISSION STATEMENT</h4></legend>
							<p>SCC, following the ideals of St. Cecilia, commits itself to:

<ul>1.   Cutivate and inculcate Christian values to its pupils/students to become men and women of faith and integrity;</ul>
<ul>2.   Provide the students with knowledge and skills in academic, technology and the arts through the use of modern teaching methods and techniques;</ul>
<ul>3.   Foster the development of love for country and service to fellowmen;</ul>

<ul>4.   Upgrade the teachers' skills and competencies in classroom instruction and management through Faculty Development Program;</ul>
<ul>5.   Develop the critical thinking skills of students;</ul>
<ul>6.   Provide opportunities to students;</ul>
<ul>7.   Inculcate in the students the love, care and preservation of Mother nature.</ul></p></p>
					</fieldset>	

					
				</div>
			</div>
		</div>
		<!--/span--> 
		<?php include("sidebar.php") ?>
		</div>
	<!--/row-->
	
	<hr>
	
