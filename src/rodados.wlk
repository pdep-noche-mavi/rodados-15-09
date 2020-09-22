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
	const property capacidad 
	const property velocidadMaxima 
	const property peso 	
	const property color	
}
class Dependencia {
	var empleados 
	const flotaDeRodados =[]
	
	method agregarAFlota(rodado){
		flotaDeRodados.add(rodado)
	} 
	method quitarDeFlota(rodado){
		flotaDeRodados.remove(rodado)
		throw new Exception(message="jdsakjsdak")
	}
	method pesoTotalFlota() = flotaDeRodados.sum({rodado => rodado.peso()})
	
	method cantidadRodados() = flotaDeRodados.size()

	method estaBienEquipada() = self.cantidadRodados() >= 3 and flotaDeRodados.all({rodado => rodado.velocidadMaxima() >= 100})

	method capacidadTotalEnColor(color) = flotaDeRodados.filter({rodado => rodado.color() == color}).sum({rodado => rodado.capacidad()})
	
	method colorDelRodadoMasRapido() = flotaDeRodados.max({rodado => rodado.velocidadMaxima()}).color()
	
	method capacidadFaltante() = empleados - flotaDeRodados.sum({rodado => rodado.capacidad()})

	method esGrande() = empleados > 40 and self.cantidadRodados() > 5
}