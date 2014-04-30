$(document).ready(function(){
  $('#startTestButton').click(function(e){
    e.preventDefault();
    console.log('crazzzy shits happening');
    startTest();
  });
});

function startTest(){
  var flashCard = $("<div class = 'flashCard'><div>");
  flashCard.fadeIn(1000);
  flashCard.appendTo('#container');
 
}