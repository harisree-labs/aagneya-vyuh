<link href="/vyuh/assets/css/login.css" rel="stylesheet">


<div class="container" id="login">
  <div class="banner"></div>
  <div class="description">
    <div class='writeup' id='writeup1'></div>
    <p>login with facebook to play</p>
    <button onclick='location.href="<?php echo $loginURL; ?>"'>login with facebook</button>
  </div>

<ul class="benefits">
  <li>
    <i class="fa fa-bolt" aria-hidden="true"></i>
    <p>fast</p>
  </li>
  <li>
    <i class="fa fa-coffee" aria-hidden="true"></i>
    <p>easy</p>
  </li>
  <li>
    <i class="fa fa-refresh" aria-hidden="true"></i>
    <p>synced</p>
  </li>
  <li>
    <i class="fa fa-dollar" aria-hidden="true"></i>
    <p>secure</p>
  </li>
</ul>
</div>





<script src="https://use.fontawesome.com/0d254dc06f.js"></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js'></script>

<script>
    $(".modal").click(function(){
    $(this).fadeOut(400);
  });
</script>

<script>
    $(".pointer").click(function(){
    var target = $(this).attr("target");
    $(target).fadeIn(400);
  });
</script>
  
<script>
    new TypeIt('#writeup1', {
     strings: ["VYUH is back with a bang!", "VYUH is an Online Treasure Hunt", "Got the Guts.....?", "Come, Let's witness the Saga!"],
     speed: 30,
     breakLines: false,
     autoStart: false,
     loop: true
    });
</script>

</body>
</html>
