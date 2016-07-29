function handleError (error){
	console.log("Error!");
}

function ironHackCharacters (response){
	var charactersArray = response;

	charactersArray.forEach(function (theCharacter){

	var html =  `<li> 
	<h2>${theCharacter.name}</h2>
	</li>`;
	$('.js-character-list').append(html);
	});
}

$(document).on('ready', function() {

	$('#ironhack').on('click', function() { 


		$.ajax({
			type: 'GET',
			url: 'http://ironhack-characters.herokuapp.com/characters',
			success: ironHackCharacters,
			error: handleError,
		})

	})

	$('form').on('submit', function(event) {
	  	event.preventDefault();

		var newCharacter = {
			name: $( "#name" ).val( ),
			occupation: $( "#occupation" ).val( ),
			weapon: $( "#weapon" ).val( ),
			debt: $( "#debt" ).val( ),
		};

		function addCharacter(response){

			$.ajax({
			type: 'GET',
			url: 'http://ironhack-characters.herokuapp.com/characters',
			success: ironHackCharacters,
			error: handleError,
		})

			$( "#name" ).val('');
			$( "#occupation" ).val('');
			$( "#weapon" ).val('');
			$( "#debt" ).val('');
		};

		$.ajax({
			type: 'POST',
			url: 'http://ironhack-characters.herokuapp.com/characters',
			data: newCharacter,
			success: addCharacter,
			error: handleError,
		});

	});

});
