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

class EfectoFisico{
	var property potencia
	
	method aplicar(objetivo){
		objetivo.recibirGolpe(potencia)
	}
}

class EfectoVeneno{
	var property duracion
	var property damagePorTurno
	
	method aplicar(objetivo){
		objetivo.recibirEfectoDuracion(duracion, damagePorTurno)
	}
}


const fisico = new EfectoFisico(potencia = 30)
const golpe = new Habilidad(nombre = "golpe", efecto = fisico)

const veneno = new EfectoVeneno(duracion = 3, damagePorTurno = 10)
const dagasVeneno = new Habilidad(nombre = "dagasVeneno", efecto = veneno)