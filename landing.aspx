<!doctype html>
<html>
	<head>
		<title>Ebubble - Home</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link href="bower_components/font-awesome/css/font-awesome.min.css" type="text/css" rel="stylesheet" />
		<link href="bower_components/bootstrap/dist/css/bootstrap.min.css" type="text/css" rel="stylesheet" />
		<link href="bower_components/jQuery.mmenu-master/dist/css/jquery.mmenu.all.css" type="text/css" rel="stylesheet" />
		<link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		<link href="bower_components/jQuery.mmenu-master/dist/extensions/positioning/jquery.mmenu.positioning.css" type="text/css" rel="stylesheet" />
		<link href="assets/css/style.css" type="text/css" rel="stylesheet" />
	</head>
	<body>
    <div class="container" id="passwordModal">
      <div class="row">
            
        <!-- Modal -->
        <div class="modal fade alert-modal in" id="about" tabindex="-1" role="dialog" aria-labelledby="aboutModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-sm">
            <div class="modal-content">
                 <div class="modalHeader">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span></button>
                    <h3 class="modal-title" id="aboutModalLabel">About us</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                </div>
            </div>
          </div>
        </div>
            
        <!-- Modal -->
        <div class="modal fade alert-modal in logOutWin" id="logOut" tabindex="-1" role="dialog" aria-labelledby="logoutModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-sm">
            <div class="modal-content ">
                 <div class="modalHeader">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span></button>
                    <h4 class="modal-title" id="logoutModalLabel">LOG OUT</h4>
                    <h4>Are  you sure you want to logout...!</h4>
                </div>
                <div class="navigationsBtn">
                    <button class="btn btn-success" data-dismiss="modal">Yes</button>
                    <button class="btn btn-warning" data-dismiss="modal">No</button>
                </div>
            </div>
          </div>
        </div>
                          
        <!-- Modal -->
        <div class="modal fade" id="changePassword" tabindex="-1" role="dialog" aria-labelledby="changePasswordModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
                <div class="modalHeader">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">x</span></button>
                    <h4 class="modal-title" id="changePasswordModalLabel"> Change Password</h4>
                </div>
              <div class="modal-body">
                  <div class="col-md-8 col-md-offset-2 col-sm-10 col-xs-12">
                    <div class="form-group">
                      <label>Old Password</label>
                      <input type="password" class="form-control" placeholder="old password"/>
                    </div> 
                    <div class="form-group">
                      <label>New Password</label>
                      <input type="password" class="form-control" placeholder="New password"/>
                    </div>
                    <div class="form-group">
                      <label>confirm Password</label>
                      <input type="password" class="form-control" placeholder="confirm Password"/>
                    </div>
                  </div>                
              </div>
              <div class="modal-footer">
                 <div class="col-md-12 col-sm-10 col-xs-12">
                      <button type="button" class="btn btn-primary" data-dismiss="modal">Ok</button>
                 </div>
              </div>
            </div>
          </div>
        </div>
      </div>
  </div>
		<div id="pageWrap" class="infinite-scroll">
			<figure class="navbarHandle">
				<a href="#primaryNav" id="openHandle" class="pull-right"><img src="assets/images/handle-open.png" alt="Menu" height="32"></a>
			</figure>

			<aside id="primaryNav" class="text-center">
				<a href="#" id="closeHandle"><img src="assets/images/handle-opened.png" height="64" alt="Menu"></a>
				<nav>
					<ul class="list-unstyled">
						<li><a href="myProfile.html">My Profile</a></li>
						<li class="closePanel" data-toggle="modal" data-target="#changePassword"><a href="#">Change Password</a></li>
						<li class="closePanel" data-toggle="modal" data-target="#logOut"><a href="#">Log Out</a></li>
						<li class="closePanel" data-toggle="modal" data-target="#about"><a href="#">About</a></li>
					</ul>
				</nav>
			</aside>
      <div class="homeWrapper">
        <img src="">
      </div>
			<div id="homeWrap">
				<div class="container-fluid">
					<header class="parallax-window clearfix col-xs-10 col-xs-offset-1 col-md-4 col-md-offset-4">
						<img src="assets/images/logo-white.png" alt="Ebubble Logo" height="32" >
						<h1>The First Content<br />Converter Ever Created</h1>
						<p>Intro Copy, 220 characters total, consectetur elit, tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
						<div class="clearfix findOutMoreLink">
							<a class="findOutMoreLink" href="#">Find out more <i class="fa fa-chevron-right"></i></a>
						</div>
						<div class="accessbtn">
							<a href="registration.html" class="button-border dull_blackBtn width-auto">Register</a>
						</div>
						<div class="exploreLink">
							<a href="timeline.html">Explore<br />
								<i class="fa fa-chevron-down fa-2x"></i>
							</a>
						</div>
					</header>	
				</div>
			</div>
		</div>

	<script type="text/javascript" src="bower_components/jquery/dist/jquery.min.js"></script>
	<script type="text/javascript" src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="bower_components/jQuery.mmenu-master/dist/js/jquery.mmenu.all.min.js"></script>
	<script type="text/javascript" src="assets/js/custom.js"></script>
	</body>
</html>