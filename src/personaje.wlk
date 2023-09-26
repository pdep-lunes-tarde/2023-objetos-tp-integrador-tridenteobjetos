import wollok.game.*
import enemigo.*
import ataques.*

object personaje {
		var property position = game.origin()
		var habilidades = [golpe, ]
		
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
		
		
		
}

