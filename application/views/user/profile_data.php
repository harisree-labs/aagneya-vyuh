<link href="/vyuh/assets/css/profile_data.css" rel="stylesheet">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>



<div class="container">
  <div class="row">
      
    <!-- edit form column -->
    <div class="col-md-offset-2 col-md-8 col-sm-offset-3 col-sm-6 col-xs-12 personal-info">
      <div class="alert alert-info alert-dismissable">
        <a class="panel-close close" data-dismiss="alert">×</a> 
        <i class="fa fa-coffee"></i>
        <span id="message">Invalid Details may lead to elimination from the Game! Details may be verified before Rewards.
        </span>
      </div>
      <form class="form" action="profile/update" method="post">
        <input class="input" name="college" type="text" placeholder="Enter your answer..." required>
        <button class="button" type="submit">Submit</button>
      </form>
    </div>
  </div>
</div>