$(document).ready(function(){

	if (window.localStorage.getItem("images")){

		var originalImages = JSON.parse(window.localStorage.getItem("images"));

			originalImages.forEach(function(image){
				$("#image-container").append(`<img id='theImg' src=${image}>`);
			})

	} else {
		window.localStorage.setItem("images", "[]");
	}

	var $color_button = $(".color-changer");

	var $image_button = $(".image-changer");

	function loadDefaultColor(){
	  if (window.localStorage.getItem("bg-color")){
	    var savedColor = window.localStorage.getItem("bg-color");
	    $("body").css("background-color", savedColor)
	  }
	}

	function changeColor(event){
	  var color = $(event.target).data("color");
	  $("body").css("background-color", color);
	  window.localStorage.setItem("bg-color", color)
	}

	function changeImage(event){

	  imageUrl = prompt("Whats your favorite image url?");

	  var storedImages = JSON.parse(window.localStorage.getItem("images"));

	  storedImages.push(imageUrl);

	  localStorage.setItem("images", JSON.stringify(storedImages));

	  // $(event.target).data("url");
	  $("#image-container").append(`<img id='theImg' src=${imageUrl}>`);
	  // window.localStorage.setItem("bg-color", color)
	}

	loadDefaultColor();

	$color_button.on("click", changeColor);

	$image_button.on("click", changeImage);
})