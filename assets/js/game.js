/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(function() {
  
  var clues = {
    'w2o9': 'We often drink here with our heads in the sand',
    'x8u5': 'You can pump your bike up here but it is not a bike shed',
    'p5b7': 'You will need some life support near this huge boat',
    'a3fg': 'By the wall on a small house, but it is not called a house',
    'ttuh': 'Find the beetle that lives by the sea',
    'yuxb': 'Sean bean once stood by these railings',
    'ppol': 'Back home on the side of your throne',
    '3333': 'Be ready for 7:30pm to head down to the Apple for your final clue'
  };
  
  var clue_matcher;
  var open_modal;
  var close_modal;
  var $form = $('.form');
  var $input = $('.input');
  
  $form.on('submit', function(e) {
    e.preventDefault();
    var clue = $input.val();
    clue_matcher(clue);
  });
  
  $('.modal__close').on('click', function(e) {
    e.preventDefault();
    close_modal();
  });
  
  open_modal = function(heading, text, status) {
    $('.modal').attr('data-status', status);
    $('.modal__heading').text(heading);
    $('.modal__text').text(text);
    $('.modal').show();
  };
  
  close_modal = function() {
    $('.modal').hide();
  };
  
  clue_matcher = function(key) {
    var key = key.toLowerCase().replace(/\s+/g, '');
    var clue = clues[key];
    
    $input.blur();
    $input.val('');
    
    if (typeof clue != 'undefined') {
      open_modal('You found a clue!', clue, 'good');
    } else {
      open_modal('Oops!', 'That is not quite right :(', 'bad');
    }
  };
  
});