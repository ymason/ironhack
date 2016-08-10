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
	var artistId = artist.id

	var artistImage;

	if (artist.images[2]){
		artistImage = artist.images[2].url
	} else {
		artistImage = "http://placehold.it/200x200"
	}

		var html = `
			<li class="artist-li" data-artist-id=${artist.id} data-artist-name=${artist.name}>
				<h3>${artist.name}</h3>
				<img src=${artistImage}>
			</li>
		`
	$(".js-artist-list").append(html);
}

$(".js-artist-list").on("click", ".artist-li", function(event){

	var artistId = $(event.currentTarget).data("artist-id");
	var artistName = $(event.currentTarget).data("artist-name");

	$.ajax({
		url: `https://api.spotify.com/v1/artists/${artistId}/albums`,
		success: function(response){
			showAlbums(response, artistName);
		},
		error: albumError
	})
	// Use data attribute to get artist id out of li
});

function appendAlbum(album){

	var albumImage;

	if (album.images[2]){
		albumImage = album.images[2].url
	} else {
		albumImage = "http://placehold.it/200x200"
	}

	var albumName = album.name

	var html = `
	<li>
		<h3>${albumName}</h3>
				<img src=${albumImage}>
			</li>
	`

	$(".modal-artist-albums").append(html);

}

function showAlbums(response, artistName){
	$(".modal-artist-name").text(artistName);

	var artistAlbum = response.items;

	artistAlbum.forEach(appendAlbum)

	$(".modal").modal("show")

	console.log(response)
}


function albumError(){
	console.log(error)
}

function showArtists(response){
	console.log("Response", response);

	var artists = response.artists.items;

	artists.forEach(appendArtist);
};

function artistError(err){
	console.log("Error", err.responsetext);
};