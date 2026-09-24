import wollok.game.*

class Maiz {
	const property position
	var image = "corn_baby.png"
	
	method position() {
		// TODO: hacer que aparezca donde lo plante Hector
		return position
	}
	method image() {
		return image
	}
	method regate() {
		image = "corn_adult.png"
	}
	method esAdulta() {
		// TODO: hacer que devuelva la imagen que corresponde
		return image == "corn_adult.png"
	}
}