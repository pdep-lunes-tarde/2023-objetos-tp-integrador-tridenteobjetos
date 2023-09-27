import personaje.*
import wollok.game.*
import enemigo.*
import ataques.*

object puntero{
	var property position = game.origin()
	
	method image () = "....png"
	
	method derecha(){
		position = position.right(1)
	}
	method izquierda(){
		position = position.left(1)
	}
	method arriba(){
		position = position.up(1)
	}
	method abajo(){
		position = position.down(1)
	}
	
	/*method pulsar(){
		
		//
	}	*/
}

object interfazCombate{
	var property elementos = [golpe,dagasVeneno]
	
	method posicionarElementos(){
		
		elementos.forEach({ habilidad => game.addVisual(habilidad) })
	}
		
	
	
}
	
