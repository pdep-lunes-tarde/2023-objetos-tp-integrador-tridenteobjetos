import wollok.game.*
import personaje.*
import enemigo.*

class Trampa {
	const property iniciadorTrampa
	const property numeroAccion
	const property cantidadInflinge
	const property imagen
	const property position
	
	method seActivaTrampa(){
		return iniciadorTrampa==numeroAccion
	}
	
	method trampaActivada(personaje){
		game.whenCollideDo(personaje,self.accionTrampa(personaje))
	}
	
	method accionTrampa(personaje){
		if(self.seActivaTrampa()){
			return personaje.recuperarVida(cantidadInflinge)
		}else{
			return personaje
		}
	}

}


const spikes = new Trampa(
	position = game.at(4,4),
	iniciadorTrampa= 5,
	numeroAccion=5,
	cantidadInflinge = -10,
	imagen="spike.png"
)

const plataformaCuracion = new Trampa(
	position = game.at(4,7),
	iniciadorTrampa= 7,
	numeroAccion=7,
	cantidadInflinge = 15,
	imagen="signoPregunta.png"	
)		
	
