// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

$(function(){ $(document).foundation(); 




});

var Stopwatch = function() {
    var startAt = 0; 
    var lapTime = 0; 
 
    var now = function() {
        return (new Date()).getTime(); 
      }; 
    this.start = function() {
        // startAt = startAt ? startAt : now();
        if (startAt) {
          startAt = startAt;
        } else {
          startAt = now();
        };
      };

    this.pause = function() {
        lapTime = startAt ? lapTime + now() - startAt : lapTime;
        startAt = 0; 
      };

    this.time = function() {
        return lapTime + (startAt ? now() - startAt : 0); 
      };
  };
 
var x = new Stopwatch();
var $time;
var clocktimer;
 
function pad(num, size) {
  var s = "0000" + num;
  return s.substr(s.length - size);
}
 
function formatTime(time) {
  var m = s = ms = 0;
  var newTime = '';
 
  m = Math.floor( time / (60 * 1000) );
  time = time % (60 * 1000);
  s = Math.floor( time / 1000 );
  ms = time % 1000;
 
  newTime = pad(m, 2) + ':' + pad(s, 2) + ':' + pad(ms, 3);
  return newTime;
}
 
function show() {
  $time = document.getElementById('time');
  update();
}
 
function update() {
  $time.innerHTML = formatTime(x.time());
}
 
function start() {
  clocktimer = setInterval("update()", 1);
  x.start();
}
 
function pause() {
  x.pause();
  clearInterval(clocktimer);
}
 













