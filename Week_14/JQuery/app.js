$(document).on('ready', function() { 

  $('#hide').on('click', function() {
    $('.container').fadeOut();
  });

  $('#unicorn').on('click', function() {
    $('p').addClass('unicorn-mode');
  });

  $( 'form' ).on('submit', function(event) {
  	event.preventDefault();

  	var emptyCounter = 0;

  	var inputs = $('input')

  	inputs.each(function(idx, ele) {
  		if (ele.value===""){
  			emptyCounter++;
  			emptyCounter
  		}
  	})

	if (emptyCounter == 0) {
		$( "form" ).submit();
	}
	});
});