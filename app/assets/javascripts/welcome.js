
if (window.DeviceOrientationEvent) {
  var food_background_layer1 = document.querySelector("#content");
  var food_background_layer2 = document.querySelector("#chapeuzinho");
  var food_background_layer3 = document.querySelector("body");

  window.addEventListener('deviceorientation', function(e) {
    var tiltLR = e.gamma / 5;

    var titleFB = e.beta / 10;

    document.querySelector('')

    food_background_layer1.style['transform'] = 'translate('+ tiltLR * 3 + 'px, '+ titleFB * 3 +'px)';
    food_background_layer2.style['transform'] = 'translate('+ tiltLR * 2 + 'px, '+ titleFB * 2 +'px)';
    food_background_layer3.style['background-position'] = 'background-position:' + tiltLR + 'px ' + titleFB + 'px';
  });
}