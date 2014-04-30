$(document).ready(function(){
  $('#startTestButton').click(function(e){
    e.preventDefault();
    console.log('crazzzy shits happening');
    startTest();
  });
});

function startTest(){
  alert("working baby");
}