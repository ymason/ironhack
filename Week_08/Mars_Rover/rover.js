// var mars = new Array(10).fill(new Array(10).fill(""));

var mars = new Array();
for (var i = 0; i < 10; i++) {
  mars[i] = new Array(10);
}

mars[2][1] = "Space Papi"
mars[5][2] = "Cafe Busteloids"
mars[5][10] = "8 Street Astronauts"
mars[6][5] = "El Eden Mars Motel"

var Rover = {
  position: [0,0],
  direction: 'N',
  name: 'Rover'
}

function moveRover(rover, direction) {
	var timMove = direction.split("") 

	 timMove.forEach(function(move){
	 	if(move === 'f') {
	 		goForward(rover);
	 	}
	 	else if(move === 'r') {
	 		goEast(rover);
	 	}
	 	else if(move === 'l') {
	 		goWest(rover);
	 	}
	 	else if(move === 'b') {
	 		goBackward(rover);
	 	}
	 });
	 return rover.position
}


function goForward(rover) {

	var oldPosition = rover.position.slice(0);
	var PositionY = rover.position[0];
	var PositionX = rover.position[1];

  switch(rover.direction) {
    case 'N':
      if (mars[PositionY + 1][PositionX] === undefined ) {
       rover.position[0]++
   	}
    break;
    case 'S':
    if (mars[PositionY - 1][PositionX] === undefined ) {
       rover.position[0]--
   }
     break;
    case 'E':
    if (mars[PositionY][PositionX + 1] === undefined ) {
       rover.position[1]++
   }
      break;
    case 'W':
    if (mars[PositionY][PositionX - 1] === undefined ) {
       rover.position[1]--
   }
  }

  mars[oldPosition[0]][oldPosition[1]] = undefined
  
  mars[rover.position[0]][rover.position[1]] = Rover.name;
}

function goBackward(rover) {

	var oldPosition = copy(rover.position);

  switch(rover.direction) {
    case 'N':
      if (mars[PositionY - 1][PositionX] === undefined ) {
       rover.position[0]--
   }
      break;
    case 'S':
      if (mars[PositionY + 1][PositionX] === undefined ) {
       rover.position[0]++
   }
      break;
    case 'E':
      if (mars[PositionY][PositionX - 1] === undefined ) {
       rover.position[1]--
   }
      break;
    case 'W':
      if (mars[PositionY][PositionX + 1] === undefined ) {
       rover.position[1]++
   }
  }

  mars[oldPosition[0]][oldPosition[1]] = undefined
  
  mars[rover.position[0]][rover.position[1]] = Rover.name;
}

function goEast(rover) {
  switch(rover.direction) {
    case 'E':
      rover.direction = 'S'
      break;
    case 'W':
      rover.direction = 'N'
      break;
    case 'N':
      rover.direction = 'E'
      break;
    case 'S':
      rover.direction = 'W'
      break;
  }
}

function goWest(rover) {
  switch(rover.direction) {
    case 'W':
      rover.direction = 'S'
      break;
    case 'E':
      rover.direction = 'N'
      break;
    case 'N':
      rover.direction = 'W'
      break;
    case 'S':
      rover.direction = 'E'
      break;
  }
}



console.log(moveRover(Rover,'ffrlfff'))
console.log(mars)

// // console.log(mars[Rover.position[0]][Rover.position[1]]);
// console.log(mars);

// mars[Rover.position[0]][Rover.position[1]]

// mars.push("Rover")