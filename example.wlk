object paquete {
  
var property estaPago = null 

	method puedeSerEntregado(destino, mensajero) {
	  
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

var property tieneSaldo = false

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
const pesoNeto = 500

	method peso() {
	  return pesoNeto  + (pesoNeto * cantidadDeAcoplados)
	}

}
