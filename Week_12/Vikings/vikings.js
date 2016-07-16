var Viking = function(name, health, strength){
	this.name = name;
	this.health = health;
	this.strength = strength;

	this.attack = function(enemy){
		enemy.health = enemy.health - this.strength;
	};
}

var Pit = function(viking1, viking2){
	
	this.deathFight = function(){
		while (viking1.health > 5 && viking2.health > 5) {
	    console.log(viking1.health);
	    console.log(viking2.health);
	    viking1.attack(viking2);
		viking2.attack(viking1);
		}
	}
}

var viking1 = new Viking("Josh", 100, 8);
var viking2 = new Viking("Faraz", 100, 5);

var pit = new Pit(viking1, viking2);

pit.deathFight();

// viking1.attack(viking2);

// console.log(viking2.health);

// 92