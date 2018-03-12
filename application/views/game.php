<link href="<?php echo base_url(); ?>assets/css/game.css" rel="stylesheet">

<div class="wrap">
  <h1>Quest <?php echo $level_no ?><br></h1>
  <img class="mascot" src="<?php echo @$questionImage; ?>" alt="">
  <p><?php echo $question ?></p>
  <form class="form" action="answer" method="post">
    <div class="non-pm"><input class="input" name="answer" type="text" placeholder="Enter your answer..." required>
        <button class="button" name="submit" value="0" type="submit">Submit</button>
    </div>
    <button class="pm button" name="submit" value="1" type="submit">Use Proxi Meter</button>
  </form>
</div>
