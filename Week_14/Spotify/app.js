$(document).ready(function(){
	$('.js-artist-form').on("submit", function (event){
		event.preventDefault();

		var searchTerm = $('.js-artist-input').val();

		$.ajax({
			url: `https://api.spotify.com/v1/search?type=artist&query=${searchTerm}`,
			success: showArtists,
			error: artistError,
		})
	})
});

function appendArtist(artist){
	var artistImage;

	if (artist.images[2]){
		artistImage = artist.images[2].url
	} else {
		artistImage = "http://placehold.it/200x200"
	}

		var html = `
			<li>
				<h3>${artist.name}</h3>
				<img src=${artistImage}>
			</li>
		`
	$(".js-artist-list").append(html);
}

function showArtists(response){
	console.log("Response", response);

	var artists = response.artists.items;

	artists.forEach(appendArtist);
};

function artistError(err){
	console.log("Error", err.responsetext);
};