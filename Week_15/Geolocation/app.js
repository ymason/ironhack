$(document).ready(function(){
	if ("geolocation" in navigator){
		console.log("We have geolocation");

		var options = {
			timeout: 5000,
			enableHighAccuracy: true
		};

		navigator.geolocation.getCurrentPosition(onLocation, onError, options);
	} else {
		alert("We do not have geolocation");
	}
})

function onLocation(position){
	console.log(position);
	var latitude = position.coords.latitude

	var longitude = position.coords.longitude

	var html = `
	https://maps.googleapis.com/maps/api/staticmap?center=d${latitude},${longitude}&zoom=17&size=400x300
	`

	$("#my_map").prop("src", html);

}

function onError(err){
	console.log(err);
}