import personaje.*
import wollok.game.*
import enemigo.*
import menuCombate.*
import ataques.*

object cargarVisuales{
	const property items = [personaje, golpe,  pocionCuracion]
	
	method cargarEnLista(objeto){
		items.add(objeto)
	}
	method cargar(){
		items.forEach({item => game.addVisual(item)})
	}
	
}


