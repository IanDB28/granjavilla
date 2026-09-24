import wollok.game.*
import cultivos.*

object personaje {
	var property position = game.center()
	const property image = "fplayer.png"

	method plantarMaiz() {
		self.validarPosicionVacia()
		game.addVisual(new Maiz(position = self.position()))
	}
	method plantarTrigo() {
		self.validarPosicionVacia()
		game.addVisual(new Trigo(position = self.position()))
	}
	method plantarTomaco() {
		self.validarPosicionVacia()
		game.addVisual(new Tomaco(position = self.position()))
	}
	method regar() {
		self.validarPuedoRegar()
		self.cultivosEnPosicionActual().forEach({ unCultivo => unCultivo.regate() })
	}
	method cultivosEnPosicionActual() {
		return game.colliders(self)
	}
	method validarPosicionVacia() {
		if (not self.cultivosEnPosicionActual().isEmpty()) {
			self.error("¡No se puede plantar sobre otro cultivo!")
		} 
	}
	method validarPuedoRegar() {
		if (self.cultivosEnPosicionActual().isEmpty()) {
			self.error("¡No tengo nada para regar!")
		} 
	}
}