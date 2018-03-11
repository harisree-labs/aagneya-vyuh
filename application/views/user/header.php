<!DOCTYPE HTML>
<html lang="en">
    
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>VYUH | AAGNEYA</title>

    <link rel="stylesheet" type="text/css" href="/vyuh/css/master.css">
    <link rel="stylesheet" type="text/css" href="/vyuh/css/style.css">
    
    <link rel="stylesheet" type="text/css" href="/vyuh/assets/css/header.css">

    
<link href='https://fonts.googleapis.com/css?family=Oxygen' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Chewy' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Audiowide' rel='stylesheet'>
    
<link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet'>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>

<body>

<!-- Header Start -->
<div>
<header id="header">
	<!-- Navbar Start -->
	<nav class="navbar navbar-default navbar-fixed navbar-scrollspy bootsnav" data-minus-value-desktop="0" data-minus-value-mobile="55" data-speed="800">
		<div class="container">
			<!-- Start Header Navigation -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar"> <i class="fa fa-bars"></i> </button>
				<a class="navbar-brand" href="http://aagneyavyuh.co.in">
           <img src="/vyuh/images/mobile_logo.png" class="logo logo-display" alt="">
           <img src="/vyuh/images/logo_2.png" class="logo logo-scrolled" alt="">
        </a>
			</div>
			<!-- End Header Navigation -->
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li class="scrol"><a href="/vyuh">HOME</a> </li>
					<!--<li class="scrol"><a href="/vyuh/index.php/profile">Profile</a> </li>-->
					<li class="scrol"><a href="/vyuh/index.php/vyuh/game">GAME</a> </li>
					<li class="scrol"><a href="/vyuh/index.php/ranklist">RANK LIST</a> </li>
					<li class="scrol"><a href="/vyuh/index.php/rules">RULES</a> </li>
					<!--<li class="scrol"><a href="/vyuh/index.php/how_to_play">How to Play</a> </li>-->
					<!--<li class="scrol"><a href="/vyuh/index.php/user_authentication/logout">Logout</a> </li>-->
<!--                                        <div class="userSection">
            <div class="userSection__dropdownToggle" data-toggle="dropdown">
              <div class="userSection__userAvatar">
                <img class="" src="http://placehold.it/150x150" alt="User Avatar">
              </div>
              <i class="userSection__caret"></i>
            </div>
            <ul class="userSection__userMenu">
              <li class="userSection__userMenu__menuItem"><a href="#" >User menu item</a></li>
              <li class="userSection__userMenu__menuItem"><a href="#" >User menu item</a></li>
              <li class="userSection__userMenu__menuItem"><a href="#" >User menu item</a></li>
              <li class="userSection__userMenu__menuItem"><a href="#" >User menu item</a></li>
            </ul>
          </div>
        </div>-->

<?php if($this->session->userdata('profile_picture')) {echo'<li><div class="User-area">
                <div class="User-avtar">
                 <img src="'.$this->session->userdata('profile_picture').'"/>
                </div>
                  <ul class="User-Dropdown">
                    <div class="user-data">'.$this->session->userdata('name').'<br>'.$this->session->userdata('email').'</div>
                    <li><a href="">Coins</a><span>'.$this->session->userdata('coins').'</span></li>
                    <li><a href="/vyuh/index.php/profiles">Profile</a></li>
                    <li><a href="/vyuh/index.php/user_authentication/logout">Logout</a></li>
                  </ul>
</div></li>';} ?>


				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
	</nav>

        <!--mob view-->
        <div class="visible-xs-block mobnavbar" id="mobnavbar">
            <div class="row">
                <li class="col-xs-offset-1 col-xs-2 scrol"><a href="/vyuh">Home</a> </li>
                <li class="col-xs-2 scrol"><a href="/vyuh/index.php/profile">Profile</a> </li>
                <li class="col-xs-2 scrol"><a href="/vyuh/index.php/vyuh/play_game">Game</a> </li>
                <li class="col-xs-4 scrol"><a href="/vyuh/index.php/ranklist">Rank List</a> </li>
            </div>
        </div>
        
	</header>
</div>
<!-- Header End -->



<script src="/vyuh/js/jquery.2.2.3.min.js"></script>
<script src="/vyuh/js/bootstrap.min.js"></script>

    <!--To View on scroll-->
<script src="/vyuh/js/jquery.appear.js"></script>
    
    <!--OWL Slider-->
<script src="/vyuh/js/owl.carousel.min.js"></script>
    
    <!--Parallax Bgs-->
<script src="/vyuh/js/parallaxie.js"></script>
    
    <!--Revolution Slider main files-->
<script src="/vyuh/js/revolution/jquery.themepunch.tools.min.js"></script>
<script src="/vyuh/js/revolution/jquery.themepunch.revolution.min.js"></script>
<script src="/vyuh/js/revolution/revolution.extension.actions.min.js"></script>
<script src="/vyuh/js/revolution/revolution.extension.layeranimation.min.js"></script>
<script src="/vyuh/js/revolution/revolution.extension.navigation.min.js"></script>
<script src="/vyuh/js/revolution/revolution.extension.parallax.min.js"></script>
<script src="/vyuh/js/revolution/revolution.extension.slideanims.min.js"></script>
<!-- <script src="js/revolution/revolution.extension.video.min.js"></script> -->

    
<!--wow transitions-->
<script src="/vyuh/js/wow.min.js"></script>
<script src="/vyuh/js/function.js"></script>

<script src="https://cdn.jsdelivr.net/npm/typeit@5.5.2/dist/typeit.min.js"></script>

<script src="/vyuh/assets/js/header.js"></script>