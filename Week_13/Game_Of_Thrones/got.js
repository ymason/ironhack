var fs = require('fs');

function fileActions(err, file){ 
    if (err) {
        throw err;
    }

    var stars = function(episodeR){
    	return Array(Math.round(episodeR)+ 1).join('*');
    }

    var episodes = JSON.parse(file);

	var filtered = episodes.filter(searchFor);

	function searchFor(episode){
	  return episode.description.indexOf("Jon") !== -1 && episode.rating >= 8.5;
	};

	filtered.sort( function( a, b ) {
	 return a.episode_number - b.episode_number });

    filtered.forEach(function(episode){


    	console.log(`Title: ${episode.title} 	
    		Episode: ${episode.episode_number} \n 
    		${episode.description} \n 
    		Rating: ${episode.rating} ${stars(episode.rating)} \n\n`)
    });

}

// Iteration 4 - Callback Function for Rating
// function goodEnough(episode) {
//   return episode.rating >= 8.5;
// }

fs.readFile("./GoTEpisodes.json", 'utf8', fileActions);