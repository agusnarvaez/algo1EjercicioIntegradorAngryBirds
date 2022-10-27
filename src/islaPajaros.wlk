import angryBirds.*
import islaCerdos.*
object islaPajaros{
	const property eventos = []
	const property pajaros=[red,chuck,bomb,terence,matilda]
	
	method pajarosFuertes()= pajaros.filter{pajaro=>pajaro.fuerza()>50}
	
	method fuerza() = self.pajarosFuertes().sum{pajaro=>pajaro.fuerza()}

	method serieDeEventos(serie){
		eventos.forEach{evento=>evento.ejecutar()}
	}
	
	method atacarIsla(isla){
		pajaros.forEach{pajaro=>isla.meAtacan(pajaro)}
	}
}

object fiestaSorpresa{
	const homenajeados = []
	
	method homenajear(pajaro){
		homenajeados.add(pajaro)
	}
	 
	
	method ejecutar(){
		if(homenajeados.isEmpty()){
			self.error("No hay ningun pajaro para homenajear PELOTUDO!")
		}else{
			homenajeados.forEach{pajaro=>pajaro.enojarse()}
			homenajeados.clear()
		}
	}
}

object 	invasion{
	
	var property cantidadDeCerdos = 1
	
	method ejecutar(){
		islaPajaros.pajaros().forEach{pajaro=>cantidadDeCerdos.div(100).times(pajaro.enojarse())}
	}
}

object sesionManejoira{
	
	method ejecutar(){
		islaPajaros.pajaros().forEach{pajaro=>pajaro.tranquilizarse()}
	}
}