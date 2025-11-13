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
    self.volar(distancia)
    ubicacion = nuevaUbicacion
  }
}

object ruta9 {
  method distanciaA(ubicacion,otraUbicacion) {
    return (ubicacion.kilometro() - otraUbicacion.kilometro())
  }
}

object zarate {
  const property kilometro = 86
}

object campana {
  const property kilometro = 70
}