// JavaScript Document


// Background changing function.
// While user refresh the page, the background image will repick from background folder ramdomly.

$(document).ready(function(){
         var random_bg=Math.floor(Math.random()*3+1);
         var bg='u/img/background/bg_'+random_bg+'.png';
		 
         $(".themeImg").attr("src", bg); ;
		 
});

//Change the height of Second Nav.
//Right now only use in the lamost page.
function changeHeightUp()
{
$(".tabNavVO").css({"height":"1000px"});
}
function changeHeightDown()
{
$(".tabNavVO").css({"height":"700px"});
}
function listMoveLeft(){
	$(".teleListRolling").animate({"left":"0px"});
}

function listMoveRight(){
	$(".teleListRolling").animate({"left":"300px"});
}

$(function(){
$("#userlogdiv").click(function(){
			//alert("ok,ok,I know again!");
			var url = "http://159.226.148.141:8080/client/api?command=logout";
	 
var jqxhr = $.post( url, function() {
  alert( "success" );
})
  .done(function() {
    alert( "second success" );
  });

location.href="http://159.226.148.141:8080/client/index2.jsp";
		 });
});