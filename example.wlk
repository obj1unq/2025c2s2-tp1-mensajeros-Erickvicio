object paquete {
  
var property estaPago = null 
var property destino = null
var property mensajero = null

	method puedeSerEntregado() {
	  
		return estaPago && destino.puedePasar(mensajero) 
	}

}


//Destinos posibles
object puenteDeBrooklyn {
  
const pesoPermitido = 1000 

	method puedePasar(mensajero) {
	  
		return mensajero.peso() <= pesoPermitido
	}
}

object laMatrix {

	method puedePasar(mensajero) {

	  return mensajero.puedeLlamar()
	}
}
//Mensajeros

object jeanGray {
	
  
	method puedeLlamar() {
	  return true
	}

	method peso() {
	  return  65
	}

}

object neo {

var property tieneSaldo = null

	method puedeLlamar() {
	  return tieneSaldo
	}

	method peso() {
	  return  0
	}
}

object saraConnor {
  
var property pesoPropio	 = null
var property metodoDeTrans = null

	method puedeLlamar() {
	  return false
	}

	method peso() {
	  return  pesoPropio + metodoDeTrans.peso()
	}

}

// Metodos de transporte
object moto {

const pesoPropio = 100  

	method peso() {
	  return  pesoPropio
	}
}

object camion {
  
var property cantidadDeAcoplados = 1

	method peso() {
	  return 500  + (500 * cantidadDeAcoplados)
	}

}
