import wollok.game.*
import personaje.*

object enemigo{
	var property position = game.at(6,8)
		
	method image() = "plagecharcter.png"
	
  	method empujar(){
    position = position.right(5)
    }
    
}
