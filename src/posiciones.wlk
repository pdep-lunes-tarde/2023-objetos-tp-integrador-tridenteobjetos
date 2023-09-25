import personaje.*
import wollok.game.*
import enemigo.*


object derecha{
	
	method mover(objetoMovimiento) = objetoMovimiento.position.right(0)
}
object izquierda
{
	method mover(objetoMovimiento) = objetoMovimiento.position.left(0)
}
object arriba{
	method mover(objetoMovimiento) = objetoMovimiento.position.up(0)
}
object abajo{
	method mover(objetoMovimiento) = objetoMovimiento.position.down(0)
}

