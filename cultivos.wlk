import wollok.game.*

class Maiz {
	const property position
	var image = "corn_baby.png"
	
	method position() {
		return position
	}
	method image() {
		return image
	}
	method regate() {
		image = "corn_adult.png"
	}
	method esAdulta() {
		return image == "corn_adult.png"
	}
}

class Trigo {
	const property position
	var image = "wheat_0.png"
	var etapaDeEvolucion = 0
	
	method position() {
		return position
	}
	method image() {
		return image
	}
	method regate() {
		if (etapaDeEvolucion < 3) {
			etapaDeEvolucion += 1
		} else {
			etapaDeEvolucion = 0
		}
		image = "wheat_" + etapaDeEvolucion + ".png"
	}
	method esAdulta() {
		return etapaDeEvolucion > 1
	}
}

class Tomaco {
	var property position
	var image = "tomaco.png"
	
	method position() {
		return position
	}
	method image() {
		return image
	}
	method regate() {
		if(position.y() < game.height()-1) self.position(position.up(1)) else self.position(position.down(9))
	}
	method esAdulta() {
		return true
	}
}