<link href="/vyuh/assets/css/game.css" rel="stylesheet" id="bootstrap-css">

<div class="wrap">
  <h1>Quest <?php echo $level_no ?><br></h1>
  <img class="mascot" src="<?php echo @$questionImage; ?>" alt="">
  <p><?php echo $question ?></p>
  <form class="form" action="answer" method="post">
    <input class="input" name="answer" type="text" placeholder="Enter your answer..." required>
    <button class="button" type="submit">Submit</button>
  </form>
</div>

<!--<div class="modal">
  <div class="modal__container">
    <h2 class="modal__heading"></h2>
    <p class="modal__text"></p>
    <a href="#" class="button modal__close">Close</a>
  </div>
</div>-->

<script src="/vyuh/assets/js/game.js"></script>