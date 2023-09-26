import personaje.*
import wollok.game.*
import enemigo.*

class Habilidad{
	const property nombre
	const property efecto
	
	method aplicarEfecto(objetivo){
		efecto.aplicar(objetivo)
	}
	
}

class EfectoGolpe{
	var property potencia
	
	method aplicar(objetivo){
		objetivo.recibirGolpe(potencia)
	}
}

const golpe = new Habilidad(nombre = "Golpe", efecto =   EfectoGolpe(potencia: 20))