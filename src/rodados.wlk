class Corsa {
	const property capacidad = 4
	const property velocidadMaxima = 150
	const property peso = 1300
	
	const property color	
}

object tanqueAdicional {
	const property capacidad = 4
	const property peso = 150
	const property velocidadMaxima = 120
}
object tanqueBasico {
	const property capacidad = 3
	const property peso = 0
	const property velocidadMaxima = 110
}

class Kwid {
	const color = "azul"
	const pesoBase = 1200
	var tanque 
	
	method capacidad() = tanque.capacidad() 
	
	method peso() = pesoBase + tanque.peso()
	method velocidadMaxima() = tanque.velocidadMaxima()
}
object traffic {
	var interior
	var motor
	const property color = "blanco"
	const pesoBase = 4000
	
	method configurar(_interior, _motor){
		interior = _interior
		motor = _motor
	}
	
	method capacidad() = interior.capacidad()
	method velocidadMaxima() = motor.velocidadMaxima()
	method peso() = pesoBase + interior.peso() + motor.peso()	
}

object interiorComodo{
	const property capacidad = 5
	const property peso = 700
}
object interiorPopular{
	const property capacidad = 12
	const property peso = 1000
}
object motorPulenta {
	const property peso = 800
	const property velocidadMaxima = 130
}
object motorBataton {
	const property peso = 500
	const property velocidadMaxima = 80
}
class AutoEspecial {
	
	
}
class Dependencia {
	var empleados 
}