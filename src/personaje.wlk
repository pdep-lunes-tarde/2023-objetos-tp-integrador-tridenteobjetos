import wollok.game.*
object personaje {
		var property position = game.origin()
		
		method image() = "plagecharcter.png"
		
		method derecha(){
			position = position.right(0)
		
		}
		method mensajeCombate() = "COMBATE"
		
		
}

