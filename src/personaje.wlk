import wollok.game.*
import enemigo.*
import ataques.*

object personaje {
		var property position = game.at(0,5)
		var property vida = 100
		var habilidades = []
		
		method image() = "plagecharcter.png"
		
		method derecha(){
			position = position.right(1)
		
		}
		method izquierda(){
			position = position.left(1)
		
		}
		
		method usarHabilidad(indice, objetivo){
			habilidades[indice].aplicarEfecto(objetivo)
		}
		
	method recuperarVida (curacion){
		vida = vida + curacion
	}
	
		
		
}

