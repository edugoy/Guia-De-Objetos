// modelado del objeto "pepita"
object pepita {
  var joules = 100
  var ubicacion = zarate

  method volar(kilometrosRecorridos) {
    joules -= self.energiaNecesariaPara(kilometrosRecorridos)
  }

  method energiaNecesariaPara(kilometros) {
    return kilometros + 10
  }

  method comer(gramosComida) {
    joules += (gramosComida * 4)
  }

  method lugarActual() {
    return ubicacion
  }

  method irA(nuevaUbicacion) {
    const distancia = ruta9.distanciaA(ubicacion, nuevaUbicacion)
    if(joules >= self.energiaNecesariaPara(distancia)){
    self.volar(distancia)
    ubicacion = nuevaUbicacion
    }else {
      self.error("No cuentas con la eneregia necesaria")
    }
  }

  method puedoIrA(nuevaUbicacion) {
    
  }
}

object ruta9 {
  method distanciaA(ubicacion,otraUbicacion) {
    return (ubicacion.kilometro - otraUbicacion.kilometro)
  }
}

object zarate {
  const kilometro = 86
}

object campana {
  const kilometro = 70
}