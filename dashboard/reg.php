<!-- booking-list.php -->
<?php include 'template/header.php';
 include 'template/header1.php'; 
if (!isset($_SESSION['isLoggedIn'])) {
	echo '<script>window.location="login.php"</script>';
}

?>
	<body>
		<section class="body">

			<!-- start: header -->
			<?php include 'template/top-bar.php'; ?>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<?php include 'template/left-bar.php'; ?>
				<!-- end: sidebar -->

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Table</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
									<a href="index.php">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Tables</span></li>
								<li><span>new reg</span></li>
							</ol>
					
							<a class="sidebar-right-toggle" data-open="sidebar-right"><i class="fa fa-chevron-left"></i></a>
						</div>
					</header>

					<!-- start: page -->
						
						
						<section class="panel">
							<header class="panel-heading">
								<div class="panel-actions">
									<a href="#" class="fa fa-caret-down"></a>
									<a href="#" class="fa fa-times"></a>
								</div>
						
								<h2 class="panel-title">Register new shop</h2>
							</header>
							<div class="panel-body">
							<!--register as restaurant-->
              <div >
                <div class="row">
                  <div class="col-lg-2"></div>
                  <div class="col-lg-8">
                    <div class="menus d-flex ftco-animate" style="background: white;">
                      <div class="row" style="width: 100%">
                  <div class="col-md-12">
                      <form action="manage-insert1.php" method="POST" enctype="multipart/form-data">
                        <div class="form-group">
                          <input type="text" name="fullname" class="form-control" required="" placeholder="Shop Name">
                        </div>
                        <div class="form-group">
                          <input type="email" name="email" class="form-control" required="" placeholder="Shop Email">
                        </div>
                        <div class="form-group">
                          <input type="text" name="phone" class="form-control" required="" placeholder="Shop Phone">
                        </div>
                 <!--        <div class="form-group">
                          <input type="text" name="bkashnumber" class="form-control" required="" placeholder="Restaurant Bkash Number">
                        </div> -->
                        <div class="form-group">
                          <select class="form-control " name="area" required="">
                            <option value=""> -Select Shop Area- </option>
                            <?php 
                              include 'dbCon.php';
                              $con = connect();
                              $sql = "SELECT * FROM `locations`;";
                              $result = $con->query($sql);
                              foreach ($result as $r) {
                            ?>
                              <option value="<?php echo $r['id']; ?>"><?php echo $r['location_name']; ?></option>
                            <?php } ?>
                         </select>
                        </div>
                        <div class="form-group">
                          <textarea name="address" id="" cols="30" rows="2" class="form-control" placeholder="Shop Address"></textarea>
                        </div>
						
                        <div class="form-group">
                          <input type="password" name="password" class="form-control" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required="" placeholder="Password">
                        </div>
                        <div class="form-group">
                          <input type="file" name="image" class="form-control" required="" >
                        </div>
                        <div class="form-group">
                          <input type="submit" value="Register" name="regasres" class="btn btn-primary py-3 px-5">
                        </div>
                      </form>
                     
                  </div>
              </div>
                  </div>
                  </div>
                </div>
              </div><!-- END -->
							</div>
						</section>
						
						
					<!-- end: page -->
				</section>
			</div>

			<?php include 'template/right-bar.php'; ?>

		</section>
		<script type="text/javascript">
	       function Done(){
	         return confirm("Are you sure?");
	       }
   		</script>

		<?php include 'template/script-res.php'; ?>
	</body>
</html>