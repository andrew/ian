$.timer(300000, function (timer) {
  // ajax get a the twitter update ever 5 minutes
  playAlert();
});

function playAlert(){
  // this only works in safari
  var audio = new Audio("../audio/Submarine.aiff");
  audio.play();
}