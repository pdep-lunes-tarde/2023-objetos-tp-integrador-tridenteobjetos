import personaje.*
import wollok.game.*
import enemigo.*

class Habilidad{
	const property nombre
	const property efecto
	const property posicion
	
	method image() = "plagecharcter.png"
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

class EfectoCuracion {
	var property curacion
	
	method aplicar(objetivo){
		objetivo.recuperarVida(curacion)
	}
	
}
const curacionPequenia  = new EfectoCuracion(curacion= 25)
const curacionGrande = new EfectoCuracion(curacion=100)
const veneno = new EfectoVeneno(duracion = 3, damagePorTurno = 10)
const fisico = new EfectoFisico(potencia = 30)


const golpe = new Habilidad (
	nombre = "golpe",
	efecto = fisico,
	posicion= game.at(3,0)
	
)

const dagasVeneno = new Habilidad(
	nombre = "dagasVeneno", 
	efecto = veneno,
	posicion= game.at(1,0)
)
const pocionCuracion = new Habilidad (
	nombre= "pocion de curacion",
	efecto= curacionPequenia,
	posicion= game.at(2,0)
)
const hechizoDeSanacion = new Habilidad (
	nombre= "hechizo de sanacion",
	efecto= curacionGrande,
	posicion= game.at(4,0)
)