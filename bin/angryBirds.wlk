class Pajaro{
	
	//var property estaEnojado = false
	var property ira = 0
	
	method enojarse(){
		ira*=2
	}
	method fuerza() = ira*2
	
	method tranquilizarse(){
		ira-=5
	}
}

class PajaroRencoroso inherits Pajaro{
	var property cantidadDeVecesQueSeEnojo = 0
}

object red inherits PajaroRencoroso{
	override method fuerza() = ira*10*cantidadDeVecesQueSeEnojo
}

object bomb inherits Pajaro{
	var property topeDeFuerza = 9000

	override method fuerza() = super().min(topeDeFuerza)
}

object chuck inherits Pajaro{
	var property velocidad = 0
	
	override method enojarse(){
		velocidad*=2
	}
	override method tranquilizarse(){}
	
	override method fuerza() = if(velocidad<80) 150 else 5*(velocidad-80)

}
object terence inherits PajaroRencoroso{
	
	var property multiplicador = 1
	
	override method fuerza() = ira*cantidadDeVecesQueSeEnojo*multiplicador
}

object matilda inherits Pajaro{
	
	const huevos = []
	
	override method fuerza() = super() + self.fuerzaHuevos()
	
	method fuerzaHuevos() = huevos.sum{huevo=>huevo.fuerza()}
	
	override method enojarse(){
		huevos.add(new Huevo(peso=2))
	}
}

class Huevo{
	var property peso
	
	method fuerza () = peso
}
