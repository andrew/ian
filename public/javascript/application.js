$(document).ready(function(){
  var timer = $.timer(300000, function (timer) {
    getUpdate();
  });

  $('body').dblclick(function(){
    getUpdate();
  });

});

function playAlert(){
  // this only works in safari
  var audio = new Audio("../audio/beep.wav");
  audio.play();
}

function getUpdate(){
  var before = $("#message").html();
  $.ajax({
    url: "/update",
    cache: true,
    timeout: 10000,
    success: function(html){
      $("#message").html(html).removeClass('error');
    },
    error: function(html){
      $("#message").html('ERROR!!!!').addClass('error');
    },
    complete: function(){
      if (before != $("#message").html()){
        playAlert();
      }
    }
  });
  timer.reset;
}