<div class="container">
	<div class="rows">
		<div class="col-md-12">
			<div class="well">
				<div class="media">
			  <a class="pull-left" href="#">
			    <img class="media-object" src="<?php echo WEB_ROOT; ?>/img/CSA bannerjpg.png" width="800px">
			  </a>
			</div>
			</div>
	</div>
</div>
<div class="container">

	<div class="col-xs-12 col-sm-9">
		<div class="rows">
			<div class="well">
				<fieldset>
					<legend><h4 class="text-center">VISION STATEMENT</h4></legend>
						<p>SCC is a non-stock, non-profit educational institution that envisions itself to be a Center of excellence in Academics, Technology, and the Arts. It aspires to produce professionals and leaders who are globally competitive, imbued with Christian values, integrity, patriotism and stewardship, through quality human education.</p>
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
<ul>7.   Inculcate in the students the love, care and preservation of Mother nature.</ul></p>
				</fieldset>	

				
			</div>
		</div>
	</div>
	<!--/span--> 
	<div class="row row-offcanvas row-offcanvas-right">
		<div class="col-xs-6 col-sm-3 sidebar-offcanvas" id="sidebar" role="navigation">
			<div class="sidebar-nav">
				<div class="panel panel-success">
				
			  		<div class="panel-heading">Login Information</div>
					   <div class="panel-body">	
							<div class="col-xs-12 col-sm-12">
							 <span class="glyphicon glyphicon-user"> </span> <label><?Php echo $_SESSION['ACCOUNT_NAME'];?></label><br/>
							 <span class="glyphicon glyphicon-cog"> </span> <label><?Php echo $_SESSION['ACCOUNT_TYPE'];?></label><br/>
							  <a href="<?php echo WEB_ROOT; ?>admin/logout.php" class="btn btn-default">Logout <span class="glyphicon glyphicon-log-out"></span></a>
							</div>					            					            		
						</div>
					          
				</div>
			</div>
		</div>
	</div>
<!--/.well --> 
</div><!--container-->
	
