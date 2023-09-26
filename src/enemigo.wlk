import wollok.game.*
import personaje.*
import ataques.*

object enemigo{
	var property position = game.at(4,0)
	var property vida = 100
	var property efectoPorTurno = false
		
	method image() = "plagecharcter.png"
	
	method muerto() = vida <= 0
	
	method vida() = vida.toString()
	
	method mostrarVida(){
		game.say(self, self.vida())
	}
	
	method recibirGolpe(potencia){
		vida = vida - potencia
		position = position.right(1)
		game.say(self, self.vida())
	}
	
	
  
}
