import personaje.*
import wollok.game.*
import enemigo.*
import cargarVisuales.*

class Habilidad{
	const property nombre
	const property efecto
	const property position
	const property image
	
	method aplicarEfecto(objetivo){
		efecto.aplicar(objetivo)
	}
	method visualizar(){
	cargarVisuales.cargarEnLista(self)
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
	position = game.at(3,0),
	image = "14.png"
)

const dagasVeneno = new Habilidad(
	nombre = "dagasVeneno", 
	efecto = veneno,
	position= game.at(1,0),
	image = "..."
)
const pocionCuracion = new Habilidad (
	nombre= "pocion de curacion",
	efecto= curacionPequenia,
	position = game.at(2,0),
	image = "16.png"
)
const hechizoDeSanacion = new Habilidad (
	nombre= "hechizo de sanacion",
	efecto= curacionGrande,
	position= game.at(4,0),
	image = "18.png"
)
object listaDeHabilidades{
	
	method cargarHabilidades(habilidad){
		cargarVisuales.cargarEnLista(habilidad)
	}
}