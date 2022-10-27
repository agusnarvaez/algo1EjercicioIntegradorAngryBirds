import angryBirds.*

object islaCerditos{
	
	const property obstaculos=[paredVidrio,paredMadera,paredPiedra,cerditoObero,cerditoArmado]
	
	method obstaculoDerrivado(obstaculo){
		obstaculos.remove(obstaculo)
	}
	
	method meAtacan(pajaro){
		if(pajaro.fuerza()>obstaculos.first().resistencia()){
			obstaculos.remove(obstaculos.first())
		}
	}
	
}

class Pared{
	var property ancho = 0
	var property multiplicador = 10
	method resistencia() = multiplicador*ancho
}

const paredVidrio= new Pared()
const paredMadera = new Pared(multiplicador=25)
const paredPiedra = new Pared(multiplicador=50)

object cerditoObero{
	var property resistencia = 50
}

object cerditoArmado{
	var property arma = casco
	
	method resistencia() = arma.resistencia()*10
	
}
object casco{
	var property resistencia = 1
}

object escudo{
	var property resistencia = 1
}